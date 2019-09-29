#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /**
         * 模拟场景
         * 张三在 2018-1-1 17:56:23 注册了一个账号
         * 张三的生日是 1985-3-2 18:18:18
         * 张三发布一条说说
         * 文字内容是 @“春日欢乡”
         * 图片 @“phone.png”
         * 发表内容：2016-6-20 10:20:23
         * 作者：张三
         * 被转发的说说：没有
         * 评论数：100
         * 转发数：39
         * 点赞数：200
       
         * 李四转发了张三的微博
         */
        
        /**
         * 类设计
         * 账号(Acount)
         *  - 账号(email)
         *  - 密码(pwd)
         *  - 注册时间(registerTime)
         * 用户(User)
         *  - 昵称(nickanme)
         *  - 头像(avatar)
         *  - 是否会员(isVip)
         *  - 对应的账号(accountId)
         *  - 生日(birthday)
         * 微博(Status)
         *  - 正文(content)
         *  - 配图(picture)
         *  - 作者(userId)
         *  - 发布时间(createTime)
         *  - 评论数(commentCount)
         *  - 转发数(retweetCount)
         *  - 赞数(likeCount)
         *  - 转发微博(repostStatus)
         */
        
    }
    return 0;
}
