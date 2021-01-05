<?php    

class IndexController {
    public function Index() {
        require_once('./Model/IndexModel.php');
        $object = new IndexModel();
        $daily = $object->getDaily();
        $gedan = $object->getGedan();
        $bangdan = $object->getBangdan();
        // var_dump($bangdan);
        require_once('./View/Index.html');
    }

    public function Gedan() {
        require_once('./Model/GedanModel.php');
        $object = new GedanModel();
        $gpage = isset($_GET['gpage']) ? intval($_GET['gpage']) : 1;
        $ypage = isset($_GET['ypage']) ? intval($_GET['ypage']) : 1;
        $gpage = $gpage > 0 ? $gpage : 1;
        $gpage = $gpage < $object->jugGpage() ? $gpage : $object->jugGpage();
        $ypage = $ypage > 0 ? $ypage : 1;
        $ypage = $ypage < $object->jugYpage() ? $ypage : $object->jugYpage();
        $GFgedan = $object->getGfGedan($gpage);
        $YHgedan = $object->getYhGedan($ypage);
        require_once('./View/Gedan.html');
    }

    public function Bangdan() {
        require_once('./Model/BangdanModel.php');
        $object = new BangdanModel();
        $bangdan = $object->getBangdan();
        require_once('./View/Bangdan.html');
    }

    public function Login() {
        require_once('./Model/LoginModel.php');
        if (isset($_POST['user']) && $_POST['user'] != null) {
            $user = addslashes(str_replace(' ','',$_POST['user']));
        }else{
            die("<script>alert('账号不能为空');window.location.replace('./index.php');</script>");
        }
        if (isset($_POST['password']) && $_POST['password'] != null) {
            $password = addslashes(str_replace(' ','',$_POST['password']));
        }else{
            die("<script>alert('密码不能为空');window.location.replace('./index.php');</script>");
        }
        $object = new LoginModel();
        if(isset($_POST['login'])) {
            $res = $object->doLogin($user, $password);
            if ($res) {
                setcookie('user' , encrypt($user), time() + 3600);
                echo "<script>alert('登陆成功');window.location.replace('./index.php');</script>";
            } else {
                echo "<script>alert('账号或密码错误');window.location.replace('./index.php');</script>";
            }
        }else if(isset($_POST['register'])) {
            $res = $object->doRegister($user, $password);
            if ($res) {
                setcookie('user' , encrypt($user), time() + 3600);
                echo "<script>alert('注册成功，即将自动登录');window.location.replace('./index.php');</script>";
            } else {
                echo "<script>alert('注册失败');window.location.replace('./index.php');</script>";
            }
        }
    }

    // 个人信息界面
    public function Profile() {
        require_once('./Model/ProfileModel.php');
        if (isset($_COOKIE['user'])) {
            $object = new ProfileModel();
            $userInfo = $object->getUserInfo(decrypt($_COOKIE['user']));
            require_once('./View/Profile.html');
        } else {
            die("<script>alert('您还没有登录，请登录！');window.location.replace('./index.php');</script>");
        }
    }

    // 收藏界面
    public function Shoucang() {
        require_once('./Model/ShoucangModel.php');
        if (isset($_COOKIE['user'])) {
            $object = new ShoucangModel();
            $bangdan = $object->getGedan();
            require_once('./View/Shoucang.html');
        } else {
            die("<script>alert('您还没有登录，请登录！');window.location.replace('./index.php');</script>");
        }
    }

    // 个人信息修改
    public function ChangeInfo() {
        require_once('./Model/ChangeInfoModel.php');
        $object = new ChangeInfoModel();
        $user = new user();
        $user->name = htmlspecialchars(addslashes($_POST['name']),ENT_QUOTES);
        $user->nickname = htmlspecialchars(addslashes($_POST['nickname']),ENT_QUOTES);
        $user->phone = htmlspecialchars(addslashes($_POST['phone']),ENT_QUOTES);
        $user->email = htmlspecialchars(addslashes($_POST['email']),ENT_QUOTES);
        $user->unit = htmlspecialchars(addslashes($_POST['unit']),ENT_QUOTES);
        $user->xuehao = htmlspecialchars(addslashes($_POST['xuehao']),ENT_QUOTES);
        $user->major = htmlspecialchars(addslashes($_POST['major']),ENT_QUOTES);
        $user->gxqm = htmlspecialchars(addslashes($_POST['gxqm']),ENT_QUOTES);
        $res = $object->ChangeUserInfo(decrypt($_COOKIE['user']),$user);
        if ($res) {
            echo "<script>alert('信息修改成功');window.location.replace('./index.php?a=Profile');</script>";
        } else {
            echo "<script>alert('信息修改出错');window.location.replace('./index.php?a=Profile');</script>";
        }
    }

    // 音乐播放界面
    public function PlayMusic() {
        require_once('./Model/PlayMusicModel.php');
        $object = new PlayMusicModel();
        $id = isset($_GET['id']) ? intval($_GET['id']) : 1;
        $id = $id < 1 ? 1 : $id;
        $MusicPath = $object->GetMusicPath($id);
        require_once('./View/PlayMusic.html');
    }

    // 歌单详情页面
    public function GedanDetail() {
        require_once('./Model/GedanDetailModel.php');
        $object = new GedanDetailModel();
        $id = isset($_GET['id']) ? intval($_GET['id']) : 1;
        $GedanDetail = $object->GetGedanDetail($id);
        // var_dump($GedanDetail);
        require_once('./View/GedanDetail.html');
    }

    // 增加留言
    public function AddMessage() {
        require_once('./Model/AddMessageModel.php');
        $object = new AddMessageModel();
        if (isset($_POST['message']) && isset($_GET['id'])) {
            $res = $object->AddMessage(htmlspecialchars($_POST['message'],ENT_QUOTES),$_GET['id']);
            if ($res) {
                echo "<script>alert('成功留言！');window.location.replace('./index.php?a=GedanDetail&id=".$_GET['id']."');</script>";
            } else {
                echo "<script>alert('留言失败！');window.location.replace('./index.php?a=GedanDetail&id=".$_GET['id']."');</script>";
            }
        } else {
            die("<script>alert('请校验参数！');window.location.replace('./index.php');</script>");
        }
    }
}