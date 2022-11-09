#!/bin/bash

clear
echo -----------------------------
echo "TODAY'S BREAKFAST MENU"
echo -----------------------------
sleep 1
echo 1.IDLI
echo 2.DOSA
echo 3.RICE ITEMS
echo 4.SAMOSA
echo 5.HOT BREWS
echo 6.EXIT FROM MENU
sleep 1
echo -e "Enter Your Menu Choice [1-6]:\c"
read choice
Total_Idli=0 ; Riceidli_price=0 ; Ravaidli_price=0
Total_Dose=0 ; MasalaD__price=0 ; NeerD_price=0 ; OnionD_price=0 ; PlainD_price=0
Total_Rice=0 ; pulao_price=0 ; lemonrice_price=0 ; puliogare_price=0
Total_hot_brews=0 ; Milk_price=0 ; Tea_price=0 ; Coffee_price=0
Total_samosa=0 ; AlooS_price=0 ; OnionS_price=0

while :
do

case $choice in
1)              clear
                echo "1.Rice idli - 30"
                echo "2.Rava idli - 40"
                echo "3.Exit"

                echo -n "Make Choice [1-3] : "
                read choice

                if [ $choice -eq 1 -o $choice -eq 2 ];then
                        echo -n "Number of plates :"
                        read quantity
                fi

                #Total_Idli=0;Riceidli_price=0;Ravaidli_price=0
                while :
                do

                case $choice in

              1) Riceidli_price=`expr $Riceidli_price + 30 \* $quantity`;;

              2) Ravaidli_price=`expr $Ravaidli_price + 40 \* $quantity`;;

              3) break;;

              *) echo "invalid option";;

                esac

                Total_Idli=`expr $Riceidli_price + $Ravaidli_price `

                echo -n "Make Choice [1-3] :"
                read choice

                if [ $choice -eq 1 -o $choice -eq 2 ];then
                        echo -n "Number of plates :"
                        read quantity
                fi
                done    ;;

2)              clear
                echo "1.Masala Dose -50"
                echo "2.Neer Dose - 50"
                echo "3.Onion Dose - 60"
                echo "4.Plain Dose - 40"
                echo "5.Back to Main Menu"
                echo -n "Make Choice [1-5] : "
                        read choice

                if [ $choice -eq 1 -o $choice -eq 2 -o $choice -eq 3 -o $choice -eq 4 ];then
                echo -n "Number of plates :"
                read quantity
                fi

                #Total_Dose=0 ; MasalaD__price=0 ; NeerD_price=0 ; OnionD_price=0 ; PlainD_price=0
                while :
                do

                case $choice in

              1) MasalaD_price=`expr $MasalaD_price + 50 \* $quantity`;;

              2) NeerD_price=`expr $NeerD_price + 50 \* $quantity`;;

              3) OnionD_price=`expr $OnionD_price + 60 \* $quantity` ;;

              4) PlainD_price=`expr $PlainD_price + 40 \* $quantity` ;;

              5) echo "Quitting ..."; break;;

              *) echo "invalid option";;

                esac

                Total_Dose=`expr $MasalaD_price + $NeerD_price + $OnionD_price + $PlainD_price`

                #echo "1.Masala Dose -50"
                #echo "2.Neer Dose - 50"
                #echo "3.Onion Dose - 60"
                #echo "4.Plain Dose - 40"
                #echo "5.Back to Main Menu"

                echo -n "Make Choice [1-5] : "
                read choice

                if [ $choice -eq 1 -o $choice -eq 2 -o $choice -eq 3 -o $choice -eq 4 ];then
                echo -n "Number of plates :"
                read quantity
                fi

                done

                #echo "Total billing is $Total_Dose"
                ;;

3)              clear
                echo "1.Pulao - 45"
                echo "2.Lemon Rice - 30"
                echo "3.puliogare Rice - 30"
                echo "4.Exit"

                echo -n "Make Choice [1-4] : "
                read choice

                if [ $choice -eq 1 -o $choice -eq 2 -o $choice -eq 3 ];then
                echo -n "Number of plates :"
                read quantity
                fi

                #Total_Rice=0;pulao_price=0;lemonrice_price=0;puliogare_price=0
                while :
                do

                case $choice in

                1) pulao_price=`expr $pulao_price + 45 \* $quantity`;;

                2) lemonrice_price=`expr $lemonrice_price + 30 \* $quantity`;;
              
                3) puliogare_price=`expr $puliogare_price + 30 \* $quantity`;;

                4) echo "Quitting ..."; break;;

                *) echo "invalid option";;

                esac

                Total_Rice=`expr $pulao_price + $lemonrice_price + $puliogare_price`
                          echo -n "Make Choice [1-4] :"
                          read choice

        if [ $choice -eq 1 -o $choice -eq 2 -o $choice -eq 3 ];then
                echo -n "Number of plates :"
                read quantity
        fi
done

#echo "Total billing is $Total_Rice"
 ;;

4)              clear
                echo "1.Aloo samosa - 18"
                echo "2.Onion samosa - 20"
                echo "3.Exit"

                echo -n "Make Choice [1-3] : "
                read choice

if [ $choice -eq 1 -o $choice -eq 2 ];then
echo -n "Count :"
read quantity
fi

#Total_samosa=0; AlooS_price=0;OnionS_price=0
while :
do

        case $choice in

              1) AlooS_price=`expr $AlooS_price + 18 \* $quantity`;;

              2) OnionS_price=`expr $OnionS_price + 20 \* $quantity`;;

              3) echo "Quitting ..."; break;;

              *) echo "invalid option";;

        esac
         Total_samosa=`expr $AlooS_price +  $OnionS_price `


        echo -n "Make Choice [1-3] :"
        read choice

        if [ $choice -eq 1 -o $choice -eq 2 ];then
                echo -n "Count :"
                read quantity
        fi
done

#echo "Total billing is $Total_samosa"

        ;;

5)              clear
                echo "1.Milk - 15"
                echo "2.Tea - 10"
                echo "3.Coffee -12"
                echo "4.Exit"

                echo -n "Make Choice [1-4] : "
                read choice

if [ $choice -eq 1 -o $choice -eq 2 -o $choice -eq 3 ];then
echo -n "Number of cups :"
read quantity
fi

#Total_hot_brews=0;Milk_price=0;Tea_price=0;Coffee_price=0
while :
do

        case $choice in

              1) Milk_price=`expr $Milk_price + 10 \* $quantity`;;

              2) Tea_price=`expr $Tea_price + 12 \* $quantity`;;

              3) Coffee_price=`expr $Coffee_price + 15 \* $quantity` ;;

              4) echo "Quitting ..."; break;;

              *) echo "invalid option";;

        esac

        Total_hot_brews=`expr $Milk_price + $Tea_price + $Coffee_price`

        #echo "1.Milk - 10"
        #echo "2.Tea - 12"
        #echo "3.Coffee -15"
        #echo "4.Exit"
        echo -n "Make Choice [1-4] : "
        read choice

if [ $choice -eq 1 -o $choice -eq 2 -o $choice -eq 3 ];then
echo -n "Number of cups :"
read quantity
fi

done

#echo "Total billing is $Total_hotdrink"
 ;;

              *)echo "You Have Selected Exit Option";break;;
       esac


echo -----------------------------
echo "TODAY'S BREAKFAST MENU"
echo -----------------------------
sleep 1
echo 1.IDLI
echo 2.DOSA
echo 3.RICE ITEMS
echo 4.SAMOSA
echo 5.HOT BREWS
echo 6.EXIT FROM MENU
sleep 1
echo -e "Enter Your Menu Choice [1-6]:\c"
read choice

done

Total=`expr $Total_Idli + $Total_Dose + $Total_Rice + $Total_hotdrink + $Total_samosa`
clear
echo "Generating Bill....."
sleep 2
clear
DATE=`date +%D`
echo -----------------------------------------
echo Breakfast Billing ; echo DATE:$DATE
echo -----------------------------------------
echo "ORDERS          Total"
echo "IDLI            $Total_Idli/-"
echo "DOSE            $Total_Dose/-"
echo "RICE ITEMS      $Total_Rice/-"
echo "HOT BREWS       $Total_hotdrink/-"
echo "SAMOSA          $Total_samosa/-"
echo
echo -----------------------------------------
echo "Total           $Total/-"
echo =========================================
echo
sleep 1
echo "***********THANK YOU COME AGAIN***********"
#echo "                Quitting ......"
sleep 1

