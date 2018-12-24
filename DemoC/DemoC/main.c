#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {

//    char card_name[3];
//    puts("输入牌名：");
//    scanf("%2s", card_name);
//    int val = 0;
//    
//    switch(card_name[0]) {
//        case 'K':
//        case 'Q':
//        case 'J':
//            val = 10;
//            break;
//        case 'A':
//            val = 11;
//            break;
//        default:
//            val = atoi(card_name);
//            val = val < 0 || val > 10 ? 0 : val;
//            printf("val=%i\n", val);
//            break;
//    }
//    
//    printf("这张牌的点数是：%i\n", val);
//
//    
    char *pCards1 = "JQK";
    const char *pCards2 = "JQK";
    const char *pCards3 = "JQK";

    *(pCards1+1) = 'A'; // 能编译通过，但执行程序出错
    *(pCards2+1) = 'A'; // 直接提示不能编译
    
    char cards[] = "JQK";
//    cards[0] = 'A';
    
    printf("cards=%s, %p\n", cards, cards);
    printf("cards1=%s, %p\n", pCards1, pCards1);
    printf("cards2=%s, %p\n", pCards2, pCards2);
    printf("cards3=%s, %p\n", pCards3, pCards3);

    

}
