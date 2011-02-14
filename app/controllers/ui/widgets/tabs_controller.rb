class Ui::Widgets::TabsController < ApplicationController
  layout 'ui'

  protect_from_forgery

  def content1
    render :partial => "content1", :layout => false
  end

  def content2
    render :partial => "content2", :layout => false
  end

  def content3
    sleep(1)
    content = "<p><strong>This content was loaded via ajax, though it took a second.</strong>"
    content << "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec turpis justo, et facilisis ligula. In congue interdum odio, a scelerisque eros posuere ac. Aenean massa tellus, dictum sit amet laoreet ut, aliquam in orci. Duis eu aliquam ligula. Nullam vel placerat ligula. Fusce venenatis viverra dictum. Phasellus dui dolor, imperdiet in sodales at, mattis sed libero. Morbi ac ipsum ligula. Quisque suscipit dui vel diam pretium nec cursus lacus malesuada. Donec sollicitudin, eros eget dignissim mollis, risus leo feugiat tellus, vel posuere nisl ipsum eu erat. Quisque posuere lacinia imperdiet. Quisque nunc leo, elementum quis ultricies et, vehicula sit amet turpis. Nullam sed nunc nec nibh condimentum mattis. Quisque sed ligula sit amet nisi ultricies bibendum eget id nisi.</p>"
    content << "<p>Proin ut erat vel nunc tincidunt commodo. Curabitur feugiat, nisi et vehicula viverra, nisl orci eleifend arcu, sed blandit lectus nisl quis nisi. In hac habitasse platea dictumst. In hac habitasse platea dictumst. Aenean rutrum gravida velit ac imperdiet. Integer vitae arcu risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin tincidunt orci at leo egestas porta. Vivamus ac augue et enim bibendum hendrerit ut id urna. Donec sollicitudin pulvinar turpis vitae scelerisque. Etiam tempor porttitor est sed blandit. Phasellus varius consequat leo eget tincidunt. Aliquam ac dui lectus. In et consectetur orci. Duis posuere nulla ac turpis faucibus vestibulum. Sed ut velit et dolor rhoncus dapibus. Sed sit amet pellentesque est.</p>"
    content << "<p>Nam in volutpat orci. Morbi sit amet orci in erat egestas dignissim. Etiam mi sapien, tempus sed iaculis a, adipiscing quis tellus. Suspendisse potenti. Nam malesuada tristique vestibulum. In tempor tellus dignissim neque consectetur eu vestibulum nisl pellentesque. Phasellus ultrices cursus velit, id aliquam nisl fringilla quis. Cras varius elit sed urna ultrices congue. Sed ornare odio sed velit pellentesque id varius nisl sodales. Sed auctor ligula egestas mi pharetra ut consectetur erat pharetra.</p>"
    render :text =>content
  end

  def content4
    head :not_found
  end
end
