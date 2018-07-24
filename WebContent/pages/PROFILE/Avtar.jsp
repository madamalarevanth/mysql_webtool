  <%@page import="java.sql.*"%>
  <%@page import="java.util.*" %>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="utilities.*" %>
<!DOCTYPE html>
<html lang="en" >

<head>

<meta charset="UTF-8">
  <title>Change Avtar</title>
  
  
  <link rel='stylesheet prefetch' href='https://cdn.jsdelivr.net/foundation/6.1.1/foundation.min.css'>

    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">

<style type="text/css">
  body {
  text-align: center;
}

    #title span {
font-family: "Montserrat", sans-serif;
  color: #ba8b02;
    line-height: 25px;
    font-size: 25px;
    letter-spacing: 2px;
}


.card1 {
  width: 40%;
  height: 800px;
  margin: 0 auto;
  background: #22313F;
  border-radius: 4px;
  box-shadow: 6px 6px 6px rgba(0, 0, 0, 0.25);
}


.card2 {
  width: 40%;
  height: 450px;
  margin: 0 auto;
  background: #22313F;
  border-radius: 4px;
  box-shadow: 6px 6px 6px rgba(0, 0, 0, 0.25);
}


.card3 {
  width: 40%;
  height: 450px;
  margin: 0 auto;
  background: #22313F;
  border-radius: 4px;
  box-shadow: 6px 6px 6px rgba(0, 0, 0, 0.25);
}

.containers {
  height: 270px;
  position: relative;
  max-width: 320px;
  margin: auto;
}
.containers .imageWrapper {
  border: 3px solid #888;
  width: 70%;
  padding-bottom: 70%;
  border-radius: 50%;
  overflow: hidden;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
.containers .imageWrapper img {
  height: 105%;
  width: initial;
  max-height: 100%;
  max-width: initial;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.file-upload {
  position: relative;
  overflow: hidden;
  margin: 10px;
}

.file-upload {
  position: relative;
  overflow: hidden;
  margin: 10px;
  width: 100%;
  max-width: 150px;
  text-align: center;
  color: #fff;
  font-size: 1.2em;
  background: transparent;
  border: 2px solid #888;
  padding: .85em 1em;
  display: inline;
  -ms-transition: all 0.2s ease;
  -webkit-transition: all 0.2s ease;
  transition: all 0.2s ease;
}
.file-upload:hover {
  background: #999;
  -webkit-box-shadow: 0px 0px 10px 0px rgba(255, 255, 255, 0.75);
  -moz-box-shadow: 0px 0px 10px 0px rgba(255, 255, 255, 0.75);
  box-shadow: 0px 0px 10px 0px rgba(255, 255, 255, 0.75);
}

.file-upload input.file-input {
  position: absolute;
  top: 0;
  right: 0;
  margin: 0;
  padding: 0;
  font-size: 20px;
  cursor: pointer;
  opacity: 0;
  filter: alpha(opacity=0);
  height: 100%;
}

.dropdown:hover .dropdown-content {
    display: block;
    margin-top: 0px;

}

.profile-cover-container {
  background-size: cover;
  width: 100%;
  height: 175;
  overflow: hidden;
  float: left;
}
.profile-cover-container img {
  width: 100%;
  height: auto;
  border-top-right-radius: 4px;
  border-top-left-radius: 4px;
  z-index: 0;
}

.cover-overlay {
  z-index: 1;
  border-top-right-radius: 35%;
  border-top-left-radius: 35%;
  margin-top: -50px;
  width: 100%;
  height: 60px;
  background: #22313F;
  position: relative;
}

.profile-picture {
  background-size: cover;
  top: 65px;
  width: 150px;
  height: 150px;
  border-radius: 50%;
  margin: auto;
  display: block;
  z-index: 1;
  border: 1px solid #949599;
  position: relative;
}

.profile-picture-outer-radius {
  width: 158px;
  height: 157px;
  top: -5px;
  left: -5px;
  border-radius: 50%;
  border: 1px solid #949599;
  position: absolute;
}

.infobox {
  margin: 0px 25px;
  color: #949599;;
}

.infobox-username {
  font-size: 1.5em;
  text-align: center;
  color: white;
}

.align-left {
  float: left;
  text-align: left;
}

.align-right {
  float: right;
  text-align: right;
}

.clear-float {
  clear: both;
}

.floating-action-button {
  height: 50px;
  width: 50px;
  border-radius: 50%;
  background: #35B4E1;
  background: -webkit-radial-gradient(#35B4E1, #18B984); 
  background: -o-radial-gradient(#35B4E1, #18B984);
  background: -moz-radial-gradient(#35B4E1, #18B984);
  background: radial-gradient(#35B4E1, #18B984);
  box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.25);
  cursor: pointer;
  font-size: 2.5em;
  color: white;
  text-align: center;
  position: relative;
  float: right;
  right: 25px;
}
.floating-action-button:hover {
  background: #18b984;
  background: -webkit-linear-gradient(#18B984, #35B4E1); 
  background: -o-linear-gradient(#18B984, #35B4E1);
  background: -moz-linear-gradient(#18B984, #35B4E1);
  background: linear-gradient(#18B984, #35B4E1);
  box-shadow: 4px 4px 6px rgba(0, 0, 0, 0.25);
}

.inputfile{
  color: gold;
  margin-top: 15px;
}


#stars {
  width: 1px;
  height: 1px;
  background: transparent;
  box-shadow: 1603px 800px #000 , 266px 1418px #000 , 671px 948px #000 , 1003px 1233px #000 , 764px 450px #000 , 842px 513px #000 , 1999px 331px #000 , 1842px 1230px #000 , 1389px 715px #000 , 413px 283px #000 , 1899px 1482px #000 , 208px 1953px #000 , 521px 706px #000 , 208px 401px #000 , 150px 1387px #000 , 775px 1767px #000 , 1378px 196px #000 , 89px 1012px #000 , 1258px 403px #000 , 271px 517px #000 , 648px 626px #000 , 717px 644px #000 , 1655px 412px #000 , 64px 1386px #000 , 1066px 516px #000 , 1206px 176px #000 , 162px 531px #000 , 1446px 1478px #000 , 1683px 442px #000 , 1708px 805px #000 , 1296px 1924px #000 , 1219px 1164px #000 , 1523px 333px #000 , 1993px 330px #000 , 1251px 1558px #000 , 1145px 786px #000 , 255px 367px #000 , 1738px 17px #000 , 583px 213px #000 , 569px 620px #000 , 999px 1711px #000 , 816px 574px #000 , 624px 858px #000 , 1411px 1898px #000 , 596px 1191px #000 , 1496px 409px #000 , 1069px 638px #000 , 1289px 1902px #000 , 160px 1675px #000 , 1185px 1626px #000 , 302px 1769px #000 , 918px 718px #000 , 1192px 1553px #000 , 7px 923px #000 , 1713px 306px #000 , 101px 1983px #000 , 1889px 1574px #000 , 903px 1388px #000 , 1137px 449px #000 , 1051px 810px #000 , 576px 1687px #000 , 687px 1691px #000 , 1379px 608px #000 , 522px 1891px #000 , 303px 68px #000 , 1856px 1410px #000 , 682px 1310px #000 , 73px 696px #000 , 1017px 355px #000 , 1542px 1902px #000 , 1297px 1322px #000 , 1749px 1336px #000 , 1608px 124px #000 , 1891px 1564px #000 , 1017px 1845px #000 , 1913px 211px #000 , 1404px 590px #000 , 1546px 1560px #000 , 1435px 49px #000 , 373px 811px #000 , 990px 254px #000 , 1221px 1880px #000 , 1986px 1018px #000 , 1795px 1432px #000 , 903px 431px #000 , 1503px 1723px #000 , 1317px 751px #000 , 703px 925px #000 , 1346px 832px #000 , 863px 390px #000 , 1820px 480px #000 , 1499px 310px #000 , 1478px 1287px #000 , 1418px 724px #000 , 89px 933px #000 , 472px 1766px #000 , 1155px 402px #000 , 600px 1314px #000 , 419px 354px #000 , 1697px 953px #000 , 771px 1940px #000 , 1715px 825px #000 , 1052px 146px #000 , 1771px 650px #000 , 1732px 954px #000 , 906px 1756px #000 , 1889px 88px #000 , 1791px 1200px #000 , 1822px 1107px #000 , 1097px 1790px #000 , 886px 590px #000 , 1243px 124px #000 , 529px 594px #000 , 1596px 746px #000 , 447px 1112px #000 , 1346px 729px #000 , 355px 1992px #000 , 1128px 924px #000 , 688px 387px #000 , 1811px 1798px #000 , 778px 1155px #000 , 549px 1227px #000 , 1129px 1237px #000 , 1058px 558px #000 , 368px 1976px #000 , 938px 677px #000 , 830px 271px #000 , 1539px 59px #000 , 303px 1625px #000 , 1030px 1291px #000 , 805px 64px #000 , 775px 655px #000 , 1596px 169px #000 , 1764px 527px #000 , 1348px 441px #000 , 1361px 1511px #000 , 1496px 1982px #000 , 1838px 1927px #000 , 1478px 161px #000 , 102px 109px #000 , 1674px 1816px #000 , 1651px 840px #000 , 907px 1857px #000 , 970px 11px #000 , 1264px 617px #000 , 1679px 1137px #000 , 182px 1215px #000 , 911px 156px #000 , 1789px 838px #000 , 463px 1348px #000 , 943px 868px #000 , 1759px 877px #000 , 153px 611px #000 , 1016px 480px #000 , 1021px 1982px #000 , 949px 1304px #000 , 1379px 49px #000 , 1291px 1697px #000 , 1072px 1716px #000 , 1839px 252px #000 , 1353px 1552px #000 , 439px 43px #000 , 629px 864px #000 , 602px 1548px #000 , 1635px 1736px #000 , 1290px 999px #000 , 1007px 272px #000 , 273px 238px #000 , 941px 1233px #000 , 1933px 1184px #000 , 1782px 286px #000 , 917px 1476px #000 , 177px 1928px #000 , 886px 180px #000 , 61px 1271px #000 , 1638px 1992px #000 , 1608px 469px #000 , 1024px 533px #000 , 246px 298px #000 , 1366px 930px #000 , 343px 565px #000 , 843px 714px #000 , 951px 1255px #000 , 326px 1322px #000 , 1557px 1038px #000 , 1953px 696px #000 , 1346px 748px #000 , 932px 88px #000 , 1793px 1037px #000 , 1249px 868px #000 , 952px 260px #000 , 426px 993px #000 , 391px 1120px #000 , 957px 1679px #000 , 431px 1081px #000 , 1579px 440px #000 , 139px 944px #000 , 946px 480px #000 , 1732px 1154px #000 , 13px 1796px #000 , 1388px 1537px #000 , 97px 1227px #000 , 1761px 1748px #000 , 980px 1955px #000 , 1681px 1495px #000 , 1397px 773px #000 , 1122px 857px #000 , 1605px 577px #000 , 1932px 441px #000 , 825px 1926px #000 , 356px 1255px #000 , 1677px 701px #000 , 1922px 735px #000 , 787px 446px #000 , 1327px 1365px #000 , 1993px 491px #000 , 1313px 1297px #000 , 941px 903px #000 , 174px 1613px #000 , 519px 579px #000 , 1139px 1775px #000 , 977px 1375px #000 , 356px 1327px #000 , 1282px 645px #000 , 1280px 635px #000 , 323px 143px #000 , 1608px 21px #000 , 1996px 321px #000 , 1667px 790px #000 , 312px 283px #000 , 586px 1037px #000 , 1630px 71px #000 , 1434px 1318px #000 , 1316px 1329px #000 , 591px 850px #000 , 1298px 1633px #000 , 76px 1156px #000 , 1404px 226px #000 , 725px 1134px #000 , 803px 102px #000 , 191px 1965px #000 , 1130px 1291px #000 , 1153px 181px #000 , 3px 1033px #000 , 321px 797px #000 , 1286px 1028px #000 , 1834px 889px #000 , 1256px 1696px #000 , 1380px 1554px #000 , 1584px 924px #000 , 1204px 1285px #000 , 1792px 1975px #000 , 1576px 952px #000 , 933px 834px #000 , 1235px 221px #000 , 1005px 1781px #000 , 530px 1610px #000 , 1564px 35px #000 , 130px 97px #000 , 754px 560px #000 , 1868px 1132px #000 , 247px 356px #000 , 239px 173px #000 , 883px 1362px #000 , 193px 1987px #000 , 787px 1801px #000 , 1104px 1490px #000 , 1992px 646px #000 , 674px 1339px #000 , 742px 1231px #000 , 1926px 704px #000 , 1075px 1412px #000 , 1468px 939px #000 , 859px 1058px #000 , 1090px 503px #000 , 807px 1986px #000 , 378px 1863px #000 , 625px 438px #000 , 1227px 647px #000 , 577px 1266px #000 , 690px 1411px #000 , 657px 812px #000 , 1543px 889px #000 , 515px 301px #000 , 1575px 376px #000 , 958px 1838px #000 , 1166px 481px #000 , 823px 1226px #000 , 1496px 1286px #000 , 2000px 747px #000 , 1947px 845px #000 , 154px 187px #000 , 607px 1457px #000 , 1184px 1227px #000 , 1823px 65px #000 , 1449px 366px #000 , 983px 1904px #000 , 902px 1498px #000 , 906px 269px #000 , 830px 422px #000 , 1484px 1023px #000 , 1011px 1214px #000 , 486px 1697px #000 , 1223px 612px #000 , 328px 1571px #000 , 565px 426px #000 , 351px 145px #000 , 1916px 1190px #000 , 364px 1834px #000 , 855px 30px #000 , 1038px 1788px #000 , 286px 629px #000 , 763px 827px #000 , 714px 325px #000 , 850px 670px #000 , 1451px 1235px #000 , 1502px 981px #000 , 243px 1602px #000 , 1326px 1676px #000 , 313px 1959px #000 , 252px 864px #000 , 361px 1314px #000 , 1805px 521px #000 , 1000px 1875px #000 , 273px 19px #000 , 1980px 486px #000 , 1653px 1181px #000 , 519px 1727px #000 , 360px 1078px #000 , 55px 577px #000 , 637px 26px #000 , 1663px 1763px #000 , 726px 99px #000 , 115px 254px #000 , 909px 384px #000 , 1725px 1612px #000 , 1822px 1924px #000 , 1933px 1212px #000 , 589px 1337px #000 , 790px 806px #000 , 149px 152px #000 , 1651px 669px #000 , 1646px 756px #000 , 375px 1122px #000 , 67px 746px #000 , 1124px 1324px #000 , 1588px 117px #000 , 97px 1627px #000 , 332px 323px #000 , 1222px 845px #000 , 1724px 820px #000 , 947px 241px #000 , 683px 1728px #000 , 892px 107px #000 , 186px 1168px #000 , 1247px 550px #000 , 1921px 770px #000 , 282px 1301px #000 , 1842px 425px #000 , 608px 1481px #000 , 1612px 224px #000 , 284px 371px #000 , 512px 1738px #000 , 1621px 1428px #000 , 688px 1914px #000 , 1065px 728px #000 , 163px 1465px #000 , 1696px 165px #000 , 64px 1512px #000 , 93px 28px #000 , 661px 1216px #000 , 1689px 171px #000 , 757px 1870px #000 , 1016px 1467px #000 , 1996px 501px #000 , 1203px 193px #000 , 1676px 1442px #000 , 367px 1036px #000 , 279px 1907px #000 , 1348px 1380px #000 , 964px 898px #000 , 171px 1758px #000 , 8px 1196px #000 , 905px 1463px #000 , 1362px 1184px #000 , 117px 1379px #000 , 1533px 742px #000 , 137px 527px #000 , 1602px 549px #000 , 1844px 1507px #000 , 1569px 1118px #000 , 1237px 1421px #000 , 379px 606px #000 , 1994px 1225px #000 , 1074px 582px #000 , 1907px 1248px #000 , 1511px 1651px #000 , 168px 1612px #000 , 1588px 1028px #000 , 1495px 669px #000 , 733px 1289px #000 , 640px 981px #000 , 960px 1574px #000 , 136px 59px #000 , 1234px 1247px #000 , 1952px 933px #000 , 1778px 1371px #000 , 712px 800px #000 , 1008px 159px #000 , 1901px 633px #000 , 1433px 548px #000 , 1663px 75px #000 , 1348px 661px #000 , 1126px 403px #000 , 1412px 1861px #000 , 1170px 240px #000 , 881px 718px #000 , 1270px 1474px #000 , 434px 174px #000 , 661px 669px #000 , 1592px 317px #000 , 1738px 66px #000 , 826px 118px #000 , 638px 822px #000 , 1685px 482px #000 , 1927px 693px #000 , 1575px 810px #000 , 785px 1602px #000 , 531px 310px #000 , 619px 1809px #000 , 156px 1826px #000 , 1396px 1931px #000 , 793px 1339px #000 , 125px 511px #000 , 308px 143px #000 , 1233px 1376px #000 , 898px 459px #000 , 1400px 1258px #000 , 1242px 1006px #000 , 670px 1038px #000 , 1558px 245px #000 , 827px 1044px #000 , 1234px 48px #000 , 716px 1135px #000 , 1083px 275px #000 , 855px 1549px #000 , 1962px 45px #000 , 178px 366px #000 , 1288px 1586px #000 , 501px 1604px #000 , 1459px 262px #000 , 1954px 240px #000 , 659px 746px #000 , 152px 675px #000 , 1477px 912px #000 , 783px 871px #000 , 1175px 102px #000 , 504px 54px #000 , 1444px 1917px #000 , 1628px 1782px #000 , 762px 874px #000 , 1241px 674px #000 , 1706px 1679px #000 , 1032px 1324px #000 , 708px 1899px #000 , 649px 948px #000 , 1740px 457px #000 , 815px 1621px #000 , 101px 1796px #000 , 1701px 1072px #000 , 500px 1375px #000 , 1082px 328px #000 , 699px 885px #000 , 1247px 555px #000 , 358px 73px #000 , 1299px 1776px #000 , 257px 1631px #000 , 402px 1335px #000 , 450px 1989px #000 , 462px 1262px #000 , 386px 537px #000 , 1281px 546px #000 , 681px 1476px #000 , 177px 47px #000 , 604px 294px #000 , 1510px 1238px #000 , 25px 1385px #000 , 1131px 831px #000 , 827px 334px #000 , 1908px 1339px #000 , 1457px 1438px #000 , 1344px 864px #000 , 763px 1252px #000 , 780px 852px #000 , 769px 813px #000 , 1808px 1040px #000 , 1087px 1494px #000 , 574px 1496px #000 , 506px 1965px #000 , 7px 506px #000 , 60px 1782px #000 , 1267px 1804px #000 , 382px 685px #000 , 1584px 1043px #000 , 989px 305px #000 , 183px 1457px #000 , 1068px 129px #000 , 856px 1231px #000 , 1757px 108px #000 , 1725px 541px #000 , 713px 739px #000 , 1936px 1845px #000 , 608px 1567px #000 , 1377px 53px #000 , 15px 179px #000 , 1689px 1580px #000 , 1497px 73px #000 , 581px 66px #000 , 783px 638px #000 , 1392px 596px #000 , 153px 340px #000 , 890px 220px #000 , 142px 1059px #000 , 920px 371px #000 , 72px 1592px #000 , 1857px 1286px #000 , 703px 781px #000 , 369px 191px #000 , 346px 1402px #000 , 686px 1901px #000 , 1568px 591px #000 , 1935px 995px #000 , 1556px 1449px #000 , 1923px 1027px #000 , 270px 292px #000 , 73px 92px #000 , 373px 863px #000 , 21px 144px #000 , 1384px 683px #000 , 1832px 1269px #000 , 1655px 504px #000 , 794px 97px #000 , 1025px 609px #000 , 1648px 465px #000 , 856px 1590px #000 , 496px 1161px #000 , 333px 778px #000 , 1247px 1106px #000 , 315px 1044px #000 , 533px 1170px #000 , 1411px 1610px #000 , 1265px 362px #000 , 351px 1407px #000 , 983px 577px #000 , 1080px 1126px #000 , 857px 1930px #000 , 1466px 1174px #000 , 242px 26px #000 , 1397px 1187px #000 , 1871px 343px #000 , 1834px 1174px #000 , 1151px 763px #000 , 891px 1596px #000 , 1434px 742px #000 , 1360px 883px #000 , 791px 573px #000 , 341px 1428px #000 , 1938px 319px #000 , 487px 490px #000 , 1767px 202px #000 , 351px 1455px #000 , 1690px 1503px #000 , 996px 1586px #000 , 1132px 752px #000 , 1700px 1644px #000 , 902px 973px #000 , 1713px 1309px #000 , 519px 1828px #000 , 1922px 854px #000 , 1543px 1325px #000 , 425px 1095px #000 , 431px 187px #000 , 660px 232px #000 , 489px 27px #000 , 182px 108px #000 , 145px 46px #000 , 1968px 907px #000 , 919px 1027px #000 , 101px 1624px #000 , 877px 423px #000 , 1698px 1077px #000 , 1134px 50px #000 , 94px 229px #000 , 582px 42px #000 , 1432px 6px #000 , 1218px 1099px #000 , 1706px 804px #000 , 1398px 299px #000 , 832px 1032px #000 , 833px 1486px #000 , 985px 176px #000 , 1319px 1889px #000 , 1640px 1586px #000 , 1477px 1388px #000 , 1084px 1810px #000 , 711px 1008px #000 , 1507px 1517px #000 , 1071px 922px #000 , 1839px 1353px #000 , 1104px 849px #000 , 258px 1120px #000 , 1569px 1675px #000 , 688px 1198px #000 , 1483px 95px #000 , 1863px 1484px #000 , 430px 183px #000 , 783px 596px #000 , 390px 712px #000 , 974px 354px #000 , 245px 708px #000 , 1573px 517px #000 , 1671px 1732px #000 , 1767px 1647px #000 , 512px 1385px #000 , 1586px 1774px #000 , 84px 764px #000 , 350px 1138px #000 , 1725px 1994px #000 , 989px 604px #000 , 431px 1590px #000 , 1126px 1353px #000 , 905px 1710px #000 , 144px 602px #000 , 163px 978px #000 , 1106px 490px #000 , 1674px 864px #000 , 1070px 1066px #000 , 1459px 1826px #000 , 84px 1747px #000 , 1323px 899px #000 , 1607px 710px #000 , 1510px 1811px #000 , 1646px 1595px #000 , 59px 719px #000 , 1358px 49px #000 , 1953px 110px #000 , 982px 908px #000 , 1753px 531px #000 , 626px 976px #000 , 548px 1410px #000 , 1440px 819px #000 , 1641px 1613px #000 , 1185px 1966px #000 , 536px 1340px #000 , 138px 1127px #000 , 699px 1832px #000 , 1635px 1930px #000 , 700px 1289px #000 , 1700px 1202px #000 , 1848px 1567px #000 , 1958px 1865px #000 , 122px 1539px #000 , 683px 1597px #000 , 979px 456px #000 , 478px 1216px #000 , 1341px 947px #000 , 323px 1236px #000 , 1911px 1547px #000 , 1732px 1707px #000 , 1559px 1931px #000 , 663px 1179px #000 , 542px 640px #000 , 942px 1936px #000 , 1774px 1221px #000 , 152px 1113px #000 , 956px 380px #000 , 1970px 801px #000 , 1997px 1769px #000 , 313px 1211px #000 , 1089px 1441px #000 , 1260px 1355px #000 , 1556px 1581px #000 , 266px 762px #000 , 178px 427px #000 , 1659px 1799px #000 , 1775px 1767px #000 , 1311px 902px #000 , 194px 1309px #000 , 1832px 1958px #000 , 1118px 1214px #000 , 1783px 1328px #000 , 927px 973px #000 , 1482px 233px #000 , 411px 486px #000 , 882px 47px #000 , 731px 1652px #000 , 1362px 732px #000 , 980px 823px #000 , 91px 756px #000 , 368px 1656px #000;
  animation: animStar 50s linear infinite;
}
#stars:after {
  content: " ";
  position: absolute;
  width: 1px;
  height: 1px;
  background: transparent;
  box-shadow: 1603px 800px #000 , 266px 1418px #000 , 671px 948px #000 , 1003px 1233px #000 , 764px 450px #000 , 842px 513px #000 , 1999px 331px #000 , 1842px 1230px #000 , 1389px 715px #000 , 413px 283px #000 , 1899px 1482px #000 , 208px 1953px #000 , 521px 706px #000 , 208px 401px #000 , 150px 1387px #000 , 775px 1767px #000 , 1378px 196px #000 , 89px 1012px #000 , 1258px 403px #000 , 271px 517px #000 , 648px 626px #000 , 717px 644px #000 , 1655px 412px #000 , 64px 1386px #000 , 1066px 516px #000 , 1206px 176px #000 , 162px 531px #000 , 1446px 1478px #000 , 1683px 442px #000 , 1708px 805px #000 , 1296px 1924px #000 , 1219px 1164px #000 , 1523px 333px #000 , 1993px 330px #000 , 1251px 1558px #000 , 1145px 786px #000 , 255px 367px #000 , 1738px 17px #000 , 583px 213px #000 , 569px 620px #000 , 999px 1711px #000 , 816px 574px #000 , 624px 858px #000 , 1411px 1898px #000 , 596px 1191px #000 , 1496px 409px #000 , 1069px 638px #000 , 1289px 1902px #000 , 160px 1675px #000 , 1185px 1626px #000 , 302px 1769px #000 , 918px 718px #000 , 1192px 1553px #000 , 7px 923px #000 , 1713px 306px #000 , 101px 1983px #000 , 1889px 1574px #000 , 903px 1388px #000 , 1137px 449px #000 , 1051px 810px #000 , 576px 1687px #000 , 687px 1691px #000 , 1379px 608px #000 , 522px 1891px #000 , 303px 68px #000 , 1856px 1410px #000 , 682px 1310px #000 , 73px 696px #000 , 1017px 355px #000 , 1542px 1902px #000 , 1297px 1322px #000 , 1749px 1336px #000 , 1608px 124px #000 , 1891px 1564px #000 , 1017px 1845px #000 , 1913px 211px #000 , 1404px 590px #000 , 1546px 1560px #000 , 1435px 49px #000 , 373px 811px #000 , 990px 254px #000 , 1221px 1880px #000 , 1986px 1018px #000 , 1795px 1432px #000 , 903px 431px #000 , 1503px 1723px #000 , 1317px 751px #000 , 703px 925px #000 , 1346px 832px #000 , 863px 390px #000 , 1820px 480px #000 , 1499px 310px #000 , 1478px 1287px #000 , 1418px 724px #000 , 89px 933px #000 , 472px 1766px #000 , 1155px 402px #000 , 600px 1314px #000 , 419px 354px #000 , 1697px 953px #000 , 771px 1940px #000 , 1715px 825px #000 , 1052px 146px #000 , 1771px 650px #000 , 1732px 954px #000 , 906px 1756px #000 , 1889px 88px #000 , 1791px 1200px #000 , 1822px 1107px #000 , 1097px 1790px #000 , 886px 590px #000 , 1243px 124px #000 , 529px 594px #000 , 1596px 746px #000 , 447px 1112px #000 , 1346px 729px #000 , 355px 1992px #000 , 1128px 924px #000 , 688px 387px #000 , 1811px 1798px #000 , 778px 1155px #000 , 549px 1227px #000 , 1129px 1237px #000 , 1058px 558px #000 , 368px 1976px #000 , 938px 677px #000 , 830px 271px #000 , 1539px 59px #000 , 303px 1625px #000 , 1030px 1291px #000 , 805px 64px #000 , 775px 655px #000 , 1596px 169px #000 , 1764px 527px #000 , 1348px 441px #000 , 1361px 1511px #000 , 1496px 1982px #000 , 1838px 1927px #000 , 1478px 161px #000 , 102px 109px #000 , 1674px 1816px #000 , 1651px 840px #000 , 907px 1857px #000 , 970px 11px #000 , 1264px 617px #000 , 1679px 1137px #000 , 182px 1215px #000 , 911px 156px #000 , 1789px 838px #000 , 463px 1348px #000 , 943px 868px #000 , 1759px 877px #000 , 153px 611px #000 , 1016px 480px #000 , 1021px 1982px #000 , 949px 1304px #000 , 1379px 49px #000 , 1291px 1697px #000 , 1072px 1716px #000 , 1839px 252px #000 , 1353px 1552px #000 , 439px 43px #000 , 629px 864px #000 , 602px 1548px #000 , 1635px 1736px #000 , 1290px 999px #000 , 1007px 272px #000 , 273px 238px #000 , 941px 1233px #000 , 1933px 1184px #000 , 1782px 286px #000 , 917px 1476px #000 , 177px 1928px #000 , 886px 180px #000 , 61px 1271px #000 , 1638px 1992px #000 , 1608px 469px #000 , 1024px 533px #000 , 246px 298px #000 , 1366px 930px #000 , 343px 565px #000 , 843px 714px #000 , 951px 1255px #000 , 326px 1322px #000 , 1557px 1038px #000 , 1953px 696px #000 , 1346px 748px #000 , 932px 88px #000 , 1793px 1037px #000 , 1249px 868px #000 , 952px 260px #000 , 426px 993px #000 , 391px 1120px #000 , 957px 1679px #000 , 431px 1081px #000 , 1579px 440px #000 , 139px 944px #000 , 946px 480px #000 , 1732px 1154px #000 , 13px 1796px #000 , 1388px 1537px #000 , 97px 1227px #000 , 1761px 1748px #000 , 980px 1955px #000 , 1681px 1495px #000 , 1397px 773px #000 , 1122px 857px #000 , 1605px 577px #000 , 1932px 441px #000 , 825px 1926px #000 , 356px 1255px #000 , 1677px 701px #000 , 1922px 735px #000 , 787px 446px #000 , 1327px 1365px #000 , 1993px 491px #000 , 1313px 1297px #000 , 941px 903px #000 , 174px 1613px #000 , 519px 579px #000 , 1139px 1775px #000 , 977px 1375px #000 , 356px 1327px #000 , 1282px 645px #000 , 1280px 635px #000 , 323px 143px #000 , 1608px 21px #000 , 1996px 321px #000 , 1667px 790px #000 , 312px 283px #000 , 586px 1037px #000 , 1630px 71px #000 , 1434px 1318px #000 , 1316px 1329px #000 , 591px 850px #000 , 1298px 1633px #000 , 76px 1156px #000 , 1404px 226px #000 , 725px 1134px #000 , 803px 102px #000 , 191px 1965px #000 , 1130px 1291px #000 , 1153px 181px #000 , 3px 1033px #000 , 321px 797px #000 , 1286px 1028px #000 , 1834px 889px #000 , 1256px 1696px #000 , 1380px 1554px #000 , 1584px 924px #000 , 1204px 1285px #000 , 1792px 1975px #000 , 1576px 952px #000 , 933px 834px #000 , 1235px 221px #000 , 1005px 1781px #000 , 530px 1610px #000 , 1564px 35px #000 , 130px 97px #000 , 754px 560px #000 , 1868px 1132px #000 , 247px 356px #000 , 239px 173px #000 , 883px 1362px #000 , 193px 1987px #000 , 787px 1801px #000 , 1104px 1490px #000 , 1992px 646px #000 , 674px 1339px #000 , 742px 1231px #000 , 1926px 704px #000 , 1075px 1412px #000 , 1468px 939px #000 , 859px 1058px #000 , 1090px 503px #000 , 807px 1986px #000 , 378px 1863px #000 , 625px 438px #000 , 1227px 647px #000 , 577px 1266px #000 , 690px 1411px #000 , 657px 812px #000 , 1543px 889px #000 , 515px 301px #000 , 1575px 376px #000 , 958px 1838px #000 , 1166px 481px #000 , 823px 1226px #000 , 1496px 1286px #000 , 2000px 747px #000 , 1947px 845px #000 , 154px 187px #000 , 607px 1457px #000 , 1184px 1227px #000 , 1823px 65px #000 , 1449px 366px #000 , 983px 1904px #000 , 902px 1498px #000 , 906px 269px #000 , 830px 422px #000 , 1484px 1023px #000 , 1011px 1214px #000 , 486px 1697px #000 , 1223px 612px #000 , 328px 1571px #000 , 565px 426px #000 , 351px 145px #000 , 1916px 1190px #000 , 364px 1834px #000 , 855px 30px #000 , 1038px 1788px #000 , 286px 629px #000 , 763px 827px #000 , 714px 325px #000 , 850px 670px #000 , 1451px 1235px #000 , 1502px 981px #000 , 243px 1602px #000 , 1326px 1676px #000 , 313px 1959px #000 , 252px 864px #000 , 361px 1314px #000 , 1805px 521px #000 , 1000px 1875px #000 , 273px 19px #000 , 1980px 486px #000 , 1653px 1181px #000 , 519px 1727px #000 , 360px 1078px #000 , 55px 577px #000 , 637px 26px #000 , 1663px 1763px #000 , 726px 99px #000 , 115px 254px #000 , 909px 384px #000 , 1725px 1612px #000 , 1822px 1924px #000 , 1933px 1212px #000 , 589px 1337px #000 , 790px 806px #000 , 149px 152px #000 , 1651px 669px #000 , 1646px 756px #000 , 375px 1122px #000 , 67px 746px #000 , 1124px 1324px #000 , 1588px 117px #000 , 97px 1627px #000 , 332px 323px #000 , 1222px 845px #000 , 1724px 820px #000 , 947px 241px #000 , 683px 1728px #000 , 892px 107px #000 , 186px 1168px #000 , 1247px 550px #000 , 1921px 770px #000 , 282px 1301px #000 , 1842px 425px #000 , 608px 1481px #000 , 1612px 224px #000 , 284px 371px #000 , 512px 1738px #000 , 1621px 1428px #000 , 688px 1914px #000 , 1065px 728px #000 , 163px 1465px #000 , 1696px 165px #000 , 64px 1512px #000 , 93px 28px #000 , 661px 1216px #000 , 1689px 171px #000 , 757px 1870px #000 , 1016px 1467px #000 , 1996px 501px #000 , 1203px 193px #000 , 1676px 1442px #000 , 367px 1036px #000 , 279px 1907px #000 , 1348px 1380px #000 , 964px 898px #000 , 171px 1758px #000 , 8px 1196px #000 , 905px 1463px #000 , 1362px 1184px #000 , 117px 1379px #000 , 1533px 742px #000 , 137px 527px #000 , 1602px 549px #000 , 1844px 1507px #000 , 1569px 1118px #000 , 1237px 1421px #000 , 379px 606px #000 , 1994px 1225px #000 , 1074px 582px #000 , 1907px 1248px #000 , 1511px 1651px #000 , 168px 1612px #000 , 1588px 1028px #000 , 1495px 669px #000 , 733px 1289px #000 , 640px 981px #000 , 960px 1574px #000 , 136px 59px #000 , 1234px 1247px #000 , 1952px 933px #000 , 1778px 1371px #000 , 712px 800px #000 , 1008px 159px #000 , 1901px 633px #000 , 1433px 548px #000 , 1663px 75px #000 , 1348px 661px #000 , 1126px 403px #000 , 1412px 1861px #000 , 1170px 240px #000 , 881px 718px #000 , 1270px 1474px #000 , 434px 174px #000 , 661px 669px #000 , 1592px 317px #000 , 1738px 66px #000 , 826px 118px #000 , 638px 822px #000 , 1685px 482px #000 , 1927px 693px #000 , 1575px 810px #000 , 785px 1602px #000 , 531px 310px #000 , 619px 1809px #000 , 156px 1826px #000 , 1396px 1931px #000 , 793px 1339px #000 , 125px 511px #000 , 308px 143px #000 , 1233px 1376px #000 , 898px 459px #000 , 1400px 1258px #000 , 1242px 1006px #000 , 670px 1038px #000 , 1558px 245px #000 , 827px 1044px #000 , 1234px 48px #000 , 716px 1135px #000 , 1083px 275px #000 , 855px 1549px #000 , 1962px 45px #000 , 178px 366px #000 , 1288px 1586px #000 , 501px 1604px #000 , 1459px 262px #000 , 1954px 240px #000 , 659px 746px #000 , 152px 675px #000 , 1477px 912px #000 , 783px 871px #000 , 1175px 102px #000 , 504px 54px #000 , 1444px 1917px #000 , 1628px 1782px #000 , 762px 874px #000 , 1241px 674px #000 , 1706px 1679px #000 , 1032px 1324px #000 , 708px 1899px #000 , 649px 948px #000 , 1740px 457px #000 , 815px 1621px #000 , 101px 1796px #000 , 1701px 1072px #000 , 500px 1375px #000 , 1082px 328px #000 , 699px 885px #000 , 1247px 555px #000 , 358px 73px #000 , 1299px 1776px #000 , 257px 1631px #000 , 402px 1335px #000 , 450px 1989px #000 , 462px 1262px #000 , 386px 537px #000 , 1281px 546px #000 , 681px 1476px #000 , 177px 47px #000 , 604px 294px #000 , 1510px 1238px #000 , 25px 1385px #000 , 1131px 831px #000 , 827px 334px #000 , 1908px 1339px #000 , 1457px 1438px #000 , 1344px 864px #000 , 763px 1252px #000 , 780px 852px #000 , 769px 813px #000 , 1808px 1040px #000 , 1087px 1494px #000 , 574px 1496px #000 , 506px 1965px #000 , 7px 506px #000 , 60px 1782px #000 , 1267px 1804px #000 , 382px 685px #000 , 1584px 1043px #000 , 989px 305px #000 , 183px 1457px #000 , 1068px 129px #000 , 856px 1231px #000 , 1757px 108px #000 , 1725px 541px #000 , 713px 739px #000 , 1936px 1845px #000 , 608px 1567px #000 , 1377px 53px #000 , 15px 179px #000 , 1689px 1580px #000 , 1497px 73px #000 , 581px 66px #000 , 783px 638px #000 , 1392px 596px #000 , 153px 340px #000 , 890px 220px #000 , 142px 1059px #000 , 920px 371px #000 , 72px 1592px #000 , 1857px 1286px #000 , 703px 781px #000 , 369px 191px #000 , 346px 1402px #000 , 686px 1901px #000 , 1568px 591px #000 , 1935px 995px #000 , 1556px 1449px #000 , 1923px 1027px #000 , 270px 292px #000 , 73px 92px #000 , 373px 863px #000 , 21px 144px #000 , 1384px 683px #000 , 1832px 1269px #000 , 1655px 504px #000 , 794px 97px #000 , 1025px 609px #000 , 1648px 465px #000 , 856px 1590px #000 , 496px 1161px #000 , 333px 778px #000 , 1247px 1106px #000 , 315px 1044px #000 , 533px 1170px #000 , 1411px 1610px #000 , 1265px 362px #000 , 351px 1407px #000 , 983px 577px #000 , 1080px 1126px #000 , 857px 1930px #000 , 1466px 1174px #000 , 242px 26px #000 , 1397px 1187px #000 , 1871px 343px #000 , 1834px 1174px #000 , 1151px 763px #000 , 891px 1596px #000 , 1434px 742px #000 , 1360px 883px #000 , 791px 573px #000 , 341px 1428px #000 , 1938px 319px #000 , 487px 490px #000 , 1767px 202px #000 , 351px 1455px #000 , 1690px 1503px #000 , 996px 1586px #000 , 1132px 752px #000 , 1700px 1644px #000 , 902px 973px #000 , 1713px 1309px #000 , 519px 1828px #000 , 1922px 854px #000 , 1543px 1325px #000 , 425px 1095px #000 , 431px 187px #000 , 660px 232px #000 , 489px 27px #000 , 182px 108px #000 , 145px 46px #000 , 1968px 907px #000 , 919px 1027px #000 , 101px 1624px #000 , 877px 423px #000 , 1698px 1077px #000 , 1134px 50px #000 , 94px 229px #000 , 582px 42px #000 , 1432px 6px #000 , 1218px 1099px #000 , 1706px 804px #000 , 1398px 299px #000 , 832px 1032px #000 , 833px 1486px #000 , 985px 176px #000 , 1319px 1889px #000 , 1640px 1586px #000 , 1477px 1388px #000 , 1084px 1810px #000 , 711px 1008px #000 , 1507px 1517px #000 , 1071px 922px #000 , 1839px 1353px #000 , 1104px 849px #000 , 258px 1120px #000 , 1569px 1675px #000 , 688px 1198px #000 , 1483px 95px #000 , 1863px 1484px #000 , 430px 183px #000 , 783px 596px #000 , 390px 712px #000 , 974px 354px #000 , 245px 708px #000 , 1573px 517px #000 , 1671px 1732px #000 , 1767px 1647px #000 , 512px 1385px #000 , 1586px 1774px #000 , 84px 764px #000 , 350px 1138px #000 , 1725px 1994px #000 , 989px 604px #000 , 431px 1590px #000 , 1126px 1353px #000 , 905px 1710px #000 , 144px 602px #000 , 163px 978px #000 , 1106px 490px #000 , 1674px 864px #000 , 1070px 1066px #000 , 1459px 1826px #000 , 84px 1747px #000 , 1323px 899px #000 , 1607px 710px #000 , 1510px 1811px #000 , 1646px 1595px #000 , 59px 719px #000 , 1358px 49px #000 , 1953px 110px #000 , 982px 908px #000 , 1753px 531px #000 , 626px 976px #000 , 548px 1410px #000 , 1440px 819px #000 , 1641px 1613px #000 , 1185px 1966px #000 , 536px 1340px #000 , 138px 1127px #000 , 699px 1832px #000 , 1635px 1930px #000 , 700px 1289px #000 , 1700px 1202px #000 , 1848px 1567px #000 , 1958px 1865px #000 , 122px 1539px #000 , 683px 1597px #000 , 979px 456px #000 , 478px 1216px #000 , 1341px 947px #000 , 323px 1236px #000 , 1911px 1547px #000 , 1732px 1707px #000 , 1559px 1931px #000 , 663px 1179px #000 , 542px 640px #000 , 942px 1936px #000 , 1774px 1221px #000 , 152px 1113px #000 , 956px 380px #000 , 1970px 801px #000 , 1997px 1769px #000 , 313px 1211px #000 , 1089px 1441px #000 , 1260px 1355px #000 , 1556px 1581px #000 , 266px 762px #000 , 178px 427px #000 , 1659px 1799px #000 , 1775px 1767px #000 , 1311px 902px #000 , 194px 1309px #000 , 1832px 1958px #000 , 1118px 1214px #000 , 1783px 1328px #000 , 927px 973px #000 , 1482px 233px #000 , 411px 486px #000 , 882px 47px #000 , 731px 1652px #000 , 1362px 732px #000 , 980px 823px #000 , 91px 756px #000 , 368px 1656px #000;
}

#stars2 {
  width: 2px;
  height: 2px;
  background: transparent;
  box-shadow: 522px 1831px #000 , 1161px 1804px #000 , 1511px 117px #000 , 1638px 562px #000 , 471px 1956px #000 , 1580px 1202px #000 , 116px 1632px #000 , 449px 1866px #000 , 14px 1101px #000 , 587px 1358px #000 , 572px 1956px #000 , 339px 474px #000 , 918px 1842px #000 , 1479px 1774px #000 , 378px 1475px #000 , 622px 574px #000 , 460px 618px #000 , 998px 1439px #000 , 354px 1533px #000 , 1265px 1018px #000 , 406px 755px #000 , 797px 835px #000 , 1279px 1783px #000 , 1618px 547px #000 , 1514px 425px #000 , 234px 473px #000 , 691px 1574px #000 , 1152px 264px #000 , 1410px 89px #000 , 636px 167px #000 , 1572px 856px #000 , 1643px 163px #000 , 1010px 814px #000 , 1943px 1641px #000 , 1720px 832px #000 , 1238px 1913px #000 , 987px 619px #000 , 1848px 1267px #000 , 1282px 1014px #000 , 1881px 337px #000 , 1082px 1528px #000 , 1676px 862px #000 , 1367px 1979px #000 , 1012px 1962px #000 , 1299px 43px #000 , 1005px 1425px #000 , 681px 63px #000 , 1294px 1463px #000 , 136px 25px #000 , 1344px 1491px #000 , 392px 1657px #000 , 1086px 1374px #000 , 1020px 1879px #000 , 1866px 1080px #000 , 1179px 1148px #000 , 147px 1437px #000 , 1604px 1221px #000 , 1442px 1368px #000 , 493px 1788px #000 , 1717px 1329px #000 , 1995px 978px #000 , 852px 1234px #000 , 358px 567px #000 , 677px 1467px #000 , 431px 1722px #000 , 1386px 887px #000 , 208px 1519px #000 , 1150px 766px #000 , 1635px 1427px #000 , 124px 109px #000 , 1366px 1091px #000 , 719px 69px #000 , 1510px 604px #000 , 508px 1890px #000 , 109px 1278px #000 , 1788px 236px #000 , 923px 235px #000 , 336px 655px #000 , 1580px 1560px #000 , 1096px 385px #000 , 814px 1581px #000 , 1378px 550px #000 , 184px 1394px #000 , 1430px 474px #000 , 93px 121px #000 , 1715px 1831px #000 , 1747px 1539px #000 , 1431px 149px #000 , 1597px 1754px #000 , 379px 783px #000 , 942px 444px #000 , 891px 1953px #000 , 359px 1837px #000 , 341px 770px #000 , 1924px 1891px #000 , 612px 1244px #000 , 1216px 432px #000 , 547px 666px #000 , 438px 1922px #000 , 486px 629px #000 , 927px 305px #000 , 588px 236px #000 , 259px 937px #000 , 1453px 23px #000 , 333px 997px #000 , 717px 1752px #000 , 89px 143px #000 , 1919px 1129px #000 , 1298px 68px #000 , 388px 819px #000 , 1904px 112px #000 , 1147px 1547px #000 , 163px 1457px #000 , 905px 83px #000 , 1329px 1926px #000 , 1898px 271px #000 , 1460px 1801px #000 , 699px 483px #000 , 331px 1633px #000 , 1381px 952px #000 , 440px 859px #000 , 52px 1551px #000 , 1862px 1038px #000 , 1200px 1737px #000 , 1679px 393px #000 , 321px 1502px #000 , 707px 223px #000 , 1569px 1034px #000 , 470px 1717px #000 , 1816px 1417px #000 , 765px 1791px #000 , 1584px 1950px #000 , 721px 1700px #000 , 1012px 1001px #000 , 1760px 1534px #000 , 1162px 761px #000 , 1261px 1196px #000 , 462px 500px #000 , 564px 216px #000 , 1681px 1711px #000 , 1245px 960px #000 , 164px 1902px #000 , 1073px 192px #000 , 970px 1666px #000 , 551px 322px #000 , 1318px 474px #000 , 31px 1281px #000 , 1601px 294px #000 , 977px 1866px #000 , 1136px 1410px #000 , 1647px 395px #000 , 1874px 886px #000 , 264px 556px #000 , 192px 1145px #000 , 777px 1296px #000 , 1888px 1399px #000 , 1775px 935px #000 , 1807px 1527px #000 , 1514px 535px #000 , 1235px 1300px #000 , 1597px 1871px #000 , 503px 90px #000 , 66px 1228px #000 , 988px 1234px #000 , 1115px 1307px #000 , 234px 254px #000 , 868px 926px #000 , 626px 1527px #000 , 1423px 1579px #000 , 947px 1632px #000 , 1370px 1435px #000 , 1107px 897px #000 , 530px 759px #000 , 425px 1886px #000 , 1156px 1469px #000 , 1604px 819px #000 , 449px 1015px #000 , 271px 790px #000 , 540px 555px #000 , 812px 1094px #000 , 1222px 1288px #000 , 1154px 1211px #000 , 656px 686px #000 , 1902px 1987px #000 , 327px 992px #000 , 1785px 334px #000 , 1536px 1501px #000 , 767px 843px #000 , 1972px 838px #000 , 683px 1850px #000 , 67px 1782px #000 , 1459px 547px #000 , 364px 1860px #000 , 829px 1453px #000 , 1475px 1306px #000 , 876px 1078px #000 , 917px 1523px #000 , 1724px 34px #000 , 1432px 1825px #000 , 608px 1048px #000;
  animation: animStar 100s linear infinite;
}
#stars2:after {
  content: " ";
  position: absolute;
  width: 2px;
  height: 2px;
  background: transparent;
  box-shadow: 522px 1831px #000 , 1161px 1804px #000 , 1511px 117px #000 , 1638px 562px #000 , 471px 1956px #000 , 1580px 1202px #000 , 116px 1632px #000 , 449px 1866px #000 , 14px 1101px #000 , 587px 1358px #000 , 572px 1956px #000 , 339px 474px #000 , 918px 1842px #000 , 1479px 1774px #000 , 378px 1475px #000 , 622px 574px #000 , 460px 618px #000 , 998px 1439px #000 , 354px 1533px #000 , 1265px 1018px #000 , 406px 755px #000 , 797px 835px #000 , 1279px 1783px #000 , 1618px 547px #000 , 1514px 425px #000 , 234px 473px #000 , 691px 1574px #000 , 1152px 264px #000 , 1410px 89px #000 , 636px 167px #000 , 1572px 856px #000 , 1643px 163px #000 , 1010px 814px #000 , 1943px 1641px #000 , 1720px 832px #000 , 1238px 1913px #000 , 987px 619px #000 , 1848px 1267px #000 , 1282px 1014px #000 , 1881px 337px #000 , 1082px 1528px #000 , 1676px 862px #000 , 1367px 1979px #000 , 1012px 1962px #000 , 1299px 43px #000 , 1005px 1425px #000 , 681px 63px #000 , 1294px 1463px #000 , 136px 25px #000 , 1344px 1491px #000 , 392px 1657px #000 , 1086px 1374px #000 , 1020px 1879px #000 , 1866px 1080px #000 , 1179px 1148px #000 , 147px 1437px #000 , 1604px 1221px #000 , 1442px 1368px #000 , 493px 1788px #000 , 1717px 1329px #000 , 1995px 978px #000 , 852px 1234px #000 , 358px 567px #000 , 677px 1467px #000 , 431px 1722px #000 , 1386px 887px #000 , 208px 1519px #000 , 1150px 766px #000 , 1635px 1427px #000 , 124px 109px #000 , 1366px 1091px #000 , 719px 69px #000 , 1510px 604px #000 , 508px 1890px #000 , 109px 1278px #000 , 1788px 236px #000 , 923px 235px #000 , 336px 655px #000 , 1580px 1560px #000 , 1096px 385px #000 , 814px 1581px #000 , 1378px 550px #000 , 184px 1394px #000 , 1430px 474px #000 , 93px 121px #000 , 1715px 1831px #000 , 1747px 1539px #000 , 1431px 149px #000 , 1597px 1754px #000 , 379px 783px #000 , 942px 444px #000 , 891px 1953px #000 , 359px 1837px #000 , 341px 770px #000 , 1924px 1891px #000 , 612px 1244px #000 , 1216px 432px #000 , 547px 666px #000 , 438px 1922px #000 , 486px 629px #000 , 927px 305px #000 , 588px 236px #000 , 259px 937px #000 , 1453px 23px #000 , 333px 997px #000 , 717px 1752px #000 , 89px 143px #000 , 1919px 1129px #000 , 1298px 68px #000 , 388px 819px #000 , 1904px 112px #000 , 1147px 1547px #000 , 163px 1457px #000 , 905px 83px #000 , 1329px 1926px #000 , 1898px 271px #000 , 1460px 1801px #000 , 699px 483px #000 , 331px 1633px #000 , 1381px 952px #000 , 440px 859px #000 , 52px 1551px #000 , 1862px 1038px #000 , 1200px 1737px #000 , 1679px 393px #000 , 321px 1502px #000 , 707px 223px #000 , 1569px 1034px #000 , 470px 1717px #000 , 1816px 1417px #000 , 765px 1791px #000 , 1584px 1950px #000 , 721px 1700px #000 , 1012px 1001px #000 , 1760px 1534px #000 , 1162px 761px #000 , 1261px 1196px #000 , 462px 500px #000 , 564px 216px #000 , 1681px 1711px #000 , 1245px 960px #000 , 164px 1902px #000 , 1073px 192px #000 , 970px 1666px #000 , 551px 322px #000 , 1318px 474px #000 , 31px 1281px #000 , 1601px 294px #000 , 977px 1866px #000 , 1136px 1410px #000 , 1647px 395px #000 , 1874px 886px #000 , 264px 556px #000 , 192px 1145px #000 , 777px 1296px #000 , 1888px 1399px #000 , 1775px 935px #000 , 1807px 1527px #000 , 1514px 535px #000 , 1235px 1300px #000 , 1597px 1871px #000 , 503px 90px #000 , 66px 1228px #000 , 988px 1234px #000 , 1115px 1307px #000 , 234px 254px #000 , 868px 926px #000 , 626px 1527px #000 , 1423px 1579px #000 , 947px 1632px #000 , 1370px 1435px #000 , 1107px 897px #000 , 530px 759px #000 , 425px 1886px #000 , 1156px 1469px #000 , 1604px 819px #000 , 449px 1015px #000 , 271px 790px #000 , 540px 555px #000 , 812px 1094px #000 , 1222px 1288px #000 , 1154px 1211px #000 , 656px 686px #000 , 1902px 1987px #000 , 327px 992px #000 , 1785px 334px #000 , 1536px 1501px #000 , 767px 843px #000 , 1972px 838px #000 , 683px 1850px #000 , 67px 1782px #000 , 1459px 547px #000 , 364px 1860px #000 , 829px 1453px #000 , 1475px 1306px #000 , 876px 1078px #000 , 917px 1523px #000 , 1724px 34px #000 , 1432px 1825px #000 , 608px 1048px #000;
}
  

#stars3 {
  width: 2px;
  height: 2px;
  background: transparent;
  box-shadow: 35px 1918px #000 , 911px 527px #000 , 1005px 263px #000 , 53px 1221px #000 , 1587px 1416px #000 , 180px 182px #000 , 1542px 529px #000 , 285px 1042px #000 , 447px 975px #000 , 296px 1608px #000 , 459px 1988px #000 , 7px 699px #000 , 741px 1020px #000 , 716px 1982px #000 , 6px 1518px #000 , 1193px 1463px #000 , 1351px 723px #000 , 665px 1097px #000 , 1901px 489px #000 , 864px 717px #000 , 1340px 1733px #000 , 1902px 238px #000 , 1861px 500px #000 , 13px 1758px #000 , 1582px 1907px #000 , 1044px 1805px #000 , 1414px 1380px #000 , 732px 503px #000 , 1644px 1140px #000 , 1995px 537px #000 , 382px 562px #000 , 1863px 1623px #000 , 297px 1688px #000 , 1508px 752px #000 , 149px 1326px #000 , 1017px 650px #000 , 1401px 1571px #000 , 1937px 415px #000 , 384px 260px #000 , 1779px 1457px #000 , 262px 1053px #000 , 701px 1291px #000 , 199px 295px #000 , 1189px 674px #000 , 1902px 1566px #000 , 274px 1977px #000 , 315px 379px #000 , 449px 280px #000 , 350px 576px #000 , 1366px 1496px #000 , 470px 353px #000 , 1826px 166px #000 , 1015px 1557px #000 , 727px 1350px #000 , 1374px 447px #000 , 614px 1075px #000 , 1967px 1911px #000 , 974px 913px #000 , 1738px 424px #000 , 58px 781px #000 , 933px 1306px #000 , 606px 304px #000 , 1096px 1846px #000 , 505px 869px #000 , 1451px 1650px #000 , 1281px 248px #000 , 1880px 1714px #000 , 616px 431px #000 , 987px 363px #000 , 1938px 1705px #000 , 444px 1589px #000 , 350px 974px #000 , 880px 573px #000 , 1387px 1806px #000 , 117px 1716px #000 , 823px 1554px #000 , 1380px 542px #000 , 1784px 1056px #000 , 297px 1594px #000 , 744px 1906px #000 , 437px 1908px #000 , 746px 187px #000 , 1165px 131px #000 , 348px 1760px #000 , 759px 1585px #000 , 580px 1750px #000 , 276px 1258px #000 , 1004px 1358px #000 , 1482px 1371px #000 , 737px 1969px #000 , 82px 1567px #000 , 264px 1401px #000 , 938px 438px #000 , 1350px 1619px #000 , 156px 998px #000 , 412px 1918px #000 , 1222px 15px #000 , 654px 1710px #000 , 1571px 130px #000 , 1553px 541px #000;
  animation: animStar 150s linear infinite;
}
#stars3:after {
  content: " ";
  position: absolute;
  width: 2px;
  height: 2px;
  background: transparent;
  box-shadow: 35px 1918px #000 , 911px 527px #000 , 1005px 263px #000 , 53px 1221px #000 , 1587px 1416px #000 , 180px 182px #000 , 1542px 529px #000 , 285px 1042px #000 , 447px 975px #000 , 296px 1608px #000 , 459px 1988px #000 , 7px 699px #000 , 741px 1020px #000 , 716px 1982px #000 , 6px 1518px #000 , 1193px 1463px #000 , 1351px 723px #000 , 665px 1097px #000 , 1901px 489px #000 , 864px 717px #000 , 1340px 1733px #000 , 1902px 238px #000 , 1861px 500px #000 , 13px 1758px #000 , 1582px 1907px #000 , 1044px 1805px #000 , 1414px 1380px #000 , 732px 503px #000 , 1644px 1140px #000 , 1995px 537px #000 , 382px 562px #000 , 1863px 1623px #000 , 297px 1688px #000 , 1508px 752px #000 , 149px 1326px #000 , 1017px 650px #000 , 1401px 1571px #000 , 1937px 415px #000 , 384px 260px #000 , 1779px 1457px #000 , 262px 1053px #000 , 701px 1291px #000 , 199px 295px #000 , 1189px 674px #000 , 1902px 1566px #000 , 274px 1977px #000 , 315px 379px #000 , 449px 280px #000 , 350px 576px #000 , 1366px 1496px #000 , 470px 353px #000 , 1826px 166px #000 , 1015px 1557px #000 , 727px 1350px #000 , 1374px 447px #000 , 614px 1075px #000 , 1967px 1911px #000 , 974px 913px #000 , 1738px 424px #000 , 58px 781px #000 , 933px 1306px #000 , 606px 304px #000 , 1096px 1846px #000 , 505px 869px #000 , 1451px 1650px #000 , 1281px 248px #000 , 1880px 1714px #000 , 616px 431px #000 , 987px 363px #000 , 1938px 1705px #000 , 444px 1589px #000 , 350px 974px #000 , 880px 573px #000 , 1387px 1806px #000 , 117px 1716px #000 , 823px 1554px #000 , 1380px 542px #000 , 1784px 1056px #000 , 297px 1594px #000 , 744px 1906px #000 , 437px 1908px #000 , 746px 187px #000 , 1165px 131px #000 , 348px 1760px #000 , 759px 1585px #000 , 580px 1750px #000 , 276px 1258px #000 , 1004px 1358px #000 , 1482px 1371px #000 , 737px 1969px #000 , 82px 1567px #000 , 264px 1401px #000 , 938px 438px #000 , 1350px 1619px #000 , 156px 998px #000 , 412px 1918px #000 , 1222px 15px #000 , 654px 1710px #000 , 1571px 130px #000 , 1553px 541px #000;
}

@keyframes animStar {
  from {
    transform: translateY(0px);
  }
  to {
    transform: translateY(-2000px);
  }
}



#firstNavbar{
    background-image: linear-gradient(to right, #00004c, #6666ff, #00004c);
}


</style>
  
</head>

<body>


  <div id='stars'></div>
<div id='stars2'></div>
<div id='stars3'></div>
<!-- FORTEX WALA HEADER NUMBER 1 WITH IMAGE OF THE USER AS DROPDOWN -->
<nav class="navbar navbar-inverse navbar-fixed-top " id="firstNavbar" >
<div class="container-fluid" id="content">
            <div class="navbar-header" >
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbarTop">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>                        
                        </button>
                        <a style="cursor: pointer;" href="../MAIN_PAGE/main_page.jsp" id="title" class="navbar-brand"><span><b>Fortex</b></span></a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbarTop">
                <ul style="color: white;" class="nav navbar-nav navbar-right">
                            <li>

  <div class="dropdown" style="cursor: pointer;" >
      <img style="margin: 5px 120px 5px 0px;" data-toggle="dropdown" class="img-circle dp-Image dropdown-toggle" width="50" height="50" src="view.jsp"  alt="User Display Picture">
    <ul class="dropdown-content dropdown-menu" style="margin-right: 120px;">
      <li><a href="../PROFILE/Avtar.jsp">Profile</a></li>
      <li><a href="#displayImageOfUser">Change Avatar</a></li>
      <li><a href="#changePassword">Change Password</a></li>
      <li><a href="../INDEX/Index.jsp">Logout</a></li>
    </ul>
  </div>
                            </li> 
                        </ul>
                    </div>
                </div>

    </nav>


<!-- FORTEX WALA HEADER NUMBER 1 WITH IMAGE OF THE USER AS DROPDOWN -->
<!-- <nav class="navbar navbar-inverse navbar-fixed-top " id="firstNavbar" >
<div class="container-fluid" id="content">
            <div class="navbar-header" >
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbarTop">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>                        
                        </button>
                        <a style="cursor: pointer;" href="../MAIN_PAGE/main_page.jsp" id="title" class="navbar-brand"><span><b>Fortex</b></span></a>
            </div>
             <div class="collapse navbar-collapse" id="myNavbarTop">
                <ul style="color: white;" class="nav navbar-nav navbar-right">
                            <li>

  <div class="dropdown" style="cursor: pointer; margin-right: 25px;">
      <img style="margin: 5px 0px 5px 0px;" data-toggle="dropdown" class="img-circle dp-Image dropdown-toggle" width="50" height="50" src="..\images\dp.png"  alt="User Display Picture">
    <ul class="dropdown-menu">
      <li><a href="../PROFILE/Avtar.jsp">Profile</a></li>
      <li><a href="#displayImageOfUser">Change Avatar</a></li>
      <li><a href="#changePassword">Change Password</a></li>
      <li><a href="../INDEX/Index.jsp">Logout</a></li>
    </ul>
  </div>

                            </li>
                        </ul>
            </div>
    </div>
</nav> -->

    <!-- header ends -->



 <div class="card1" style="margin-top: 100px;" id="profileOfUser">
  <div class="profile-cover-container">

    <img src="../images/sky.jpg">
    <div class="cover-overlay"></div>
  </div>
  
  <div  class="profile-picture" >
  <div  class="profile-picture-outer-radius">     

    <img src="view.jsp" style="width: 150px;
  height: 150px;
  border-radius: 50%;">
</div>
  </div>
  
  <div class="infobox">
    <p class="infobox-username"><%=(String)session.getAttribute("nameo") %>  <!-- REVANTH GET USER NAME HERE FROM DATABASE DIRECTLY --> </p>
    <%
    data d = new data();
    
    %>
            
   
    
<form class="form-horizontal" action="updateinfo.jsp">

    <div class="clear-float">
      <div class="form-group">
          <label style="color: white; font-family: Montserrat; font-size: 14px; " class="align-left control-label col-sm-3" for="email">Email:</label>
          <div class="col-sm-9" id="emailWala" style="display: none;">                     
            <input type="text" class="form-control" id="email" placeholder="Enter Email Address" name="email">
          </div>
          <div class="col-sm-5" id="emailWala2" style="display: block;">
            <p ><%=d.getmail((String)session.getAttribute("nameo")) %></p>
          </div>
        </div> 
    </div>

    <div class="clear-float">
      <div class="form-group">
          <label style="color: white; font-family: Montserrat; font-size: 14px; " class="align-left control-label col-sm-3" for="mobNo">Contact No.:</label>
          <div class="col-sm-9" id="contactWala" style="display: none;">
            <input type="text" class="form-control" id="mobNo" placeholder="Enter Mobile No." name="mobNo">
          </div>
          <div class="col-sm-5" id="contactWala2" style="display: block;">
            <p ><%=d.getcon((String)session.getAttribute("nameo")) %></p>
          </div>
        </div> 
    </div>
    

  <div class="clear-float">
      <div class="form-group">
          <div class="col-sm-offset-5 col-sm-2" id="editBtn" style="display: block;">
            <a class="btn btn-lg btn-primary" onClick="enableDisable();" id="displayImageOfUser">Edit</a>
          </div>
        </div> 
    </div>



    <div class="clear-float" id="saveBtn" style="display: none;" >
      <div class="form-group">
          <button class="file-upload file-input" type="submit" id="displayImageOfUser">Save</button>
        </div> 
    </div>
</form>
  </div>
</div>


            <script>
                  function enableDisable()
                  {
                    console.log("fas");
                    var x = document.getElementById("emailWala");
                    var x1 = document.getElementById("emailWala2");
                    var y = document.getElementById("contactWala");
                    var y1 = document.getElementById("contactWala2");
                    var save = document.getElementById("saveBtn");
                    var edit = document.getElementById("editBtn");



                        if (x.style.display == "none") {
                            x.style.display = "block";
                            save.style.display = "block";
                            x1.style.display = "none";
                            edit.style.display = "none";
                        } else {
                            x.style.display = "none"; 
                            save.style.display = "none"; 
                            x1.style.display = "block";                             
                            edit.style.display = "block";                     
                        }



                           if (y.style.display == "none") {
                            y.style.display = "block";
                            y1.style.display = "none";
                        } else {
                            y.style.display = "none"; 
                            y1.style.display = "block";                        
                        }



                       


                    

                    

                  }
                </script>




<div class="card2" style="margin-top: 50px;" >
  <div class="row">
    <div class="containers">
      <h2 style="color: gold; font-family: Montserrat" >CHANGE AVATAR</h2>
      <div class="imageWrapper" style="margin-top: 20px; margin-bottom: 20px;">
        <img class="image" src="view.jsp">
      </div>
    </div>
    <form action="image-process.jsp" enctype="multipart/form-data" >
    <button class="file-upload">            
    <input type="file" class="file-input" name="myimg">Choose File
    </button>
    <button class="file-upload file-input" type="submit"  id="changePassword">Upload</button>
    </form>
</div>
</div>


 <div class="card3" style="margin-top: 50px;">
  <div class="infobox">
      <h2 style="color: gold; padding: 20px; font-family: Montserrat" >CHANGE PASSWORD</h2>
      <form class="form-horizontal" action="updatepass.jsp">

          <div class="clear-float">
            <div class="form-group">
                <label style="color: white; font-family: Montserrat; font-size: 12px; " class="align-left control-label col-sm-3" for="email">Old Password:</label>
                <div class="col-sm-9">
                  <input type="Password" class="form-control" id="email" placeholder="Enter Old Password" name="oldpass">
                </div>
              </div> 
          </div>

          <div class="clear-float">
            <div class="form-group">
                <label style="color: white; font-family: Montserrat; font-size: 12px; " class="align-left control-label col-sm-3" for="mobNo">New Password:</label>
                <div class="col-sm-9">
                  <input type="Password" class="form-control" id="mobNo" placeholder="Enter New Password" name="newpass">
                </div>
              </div> 
          </div>
          
           <div class="clear-float">
            <div class="form-group">
                <label style="color: white; font-family: Montserrat; font-size: 12px; " class="align-left control-label col-sm-3" for="address">Re-Enter:</label>
                <div class="col-sm-9">
                  <input type="Password" class="form-control" id="address" placeholder="Re-Enter New Password" name="address">
                </div>
              </div> 
          </div>

          <div class="clear-float">
            <div class="form-group">
                <button class="file-upload file-input" type="submit">Save</button>
              </div> 
          </div>
      </form>
  </div>
</div>



  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script>
      $('.file-input').change(function(){
    var curElement = $(this).parent().parent().find('.image');
    console.log(curElement);
    var reader = new FileReader();

    reader.onload = function (e) {
        // get loaded data and render thumbnail.
        curElement.attr('src', e.target.result);
    };

    // read the image file as a data URL.
    reader.readAsDataURL(this.files[0]);
});
    </script>
    <jsp:include page="../COPYRIGHTS/copyright.jsp"></jsp:include>

</body>

</html>




<!-- http://img05.deviantart.net/d3d4/i/2013/109/d/6/cavalry_knights_by_artnothearts-d62b1vs.jpg  -->