<?php


class OrderAction extends CommonAction
{
    public function index()
    {
        $order = M("neworder");

        import("@.ORG.Util.Page");
        $count = $order ->count();
        $Page       = new Page($count,20);
        $show = $Page -> show();
        $orders = $order -> limit($Page ->firstRow.','.$Page -> listRows)->order('id desc') -> select();
        $this -> assign("page",$show);

        $this -> assign("orders",$orders);
        $this -> display();
    }

}