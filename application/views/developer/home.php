<p class="text-success">
    Welcome <?php echo $this->session->userdata['developer_uname']; ?>, you have <a href="<?php echo base_url('dashboard/order/view/'); ?>"><?php echo $order; ?> approved theme(s)</a> and <a href="<?php echo base_url('dashboard/payment/view/'); ?>"><?php echo $payment; ?> unverified theme(s)</a>!
</p>