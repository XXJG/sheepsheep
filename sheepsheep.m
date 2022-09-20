function sheepsheep
clc;
clear;

material=load('material.mat');
typeNum=length(material.card);
cardNum=typeNum*3*7;
% 获取随机数表
numList=repmat(1:typeNum,[3*7,1]);
[~,index]=sort(rand(1,cardNum));
numList=numList(:);numList=numList(index);
cardNumList=1:cardNum;
% 卡槽和卡池列表
storeList=[];
cardList=[];
cardMat=zeros(cardNum,7);
cardMat(:,1)=1:cardNum;


% =========================================================================
% figure及axes创建及修饰
fig=figure('units','pixels','position',[500 50 1.5*1080/3 1.5*1500/3],...
    'Numbertitle','off','menubar','none','resize','on','name','羊了个羊');
ax=axes('Parent',fig,'Position',[0,0,1,1],'XLim',[0,1080],'YLim',[0,1500],...
    'XColor','none','YColor','none','XTick',[],'YTick',[],'Color',[195,254,138]./255);
hold on
% image(ax,[0,1080],[0,1500],flipud(material.bkg));
image(ax,[0,1080],[0,295],flipud(material.store));
% 创建卡牌
n=1;
for k=1:5
for i=1:3
    for j=1:3
        tn=numList(n);
        image(ax,[-130,130]./2+540+(j-2).*130+rand(1).*5,[-145,145]./2+1000-(i-2).*145+rand(1).*5,...
            flipud(material.card(tn).C.*.8),'AlphaData',flipud(material.card(tn).A),...
            'UserData',[n,tn],'ButtonDownFcn',@clickImg)
        cardMat(n,2)=n+9;
        if k==5
            cardMat(n,3)=n+9+3;
        end
        n=n+1;
    end
end
end
for k=1:3
for i=1:4
    for j=1:3
        tn=numList(n);
        image(ax,[-130,130]./2+540+(j-2).*130+rand(1).*5,[-145,145]./2+1000-(i-2).*145+145/2+rand(1).*5,...
            flipud(material.card(tn).C.*.8),'AlphaData',flipud(material.card(tn).A),...
            'UserData',[n,tn],'ButtonDownFcn',@clickImg)
        if k==3
            cardMat(n,2)=n+12+i-1;
            cardMat(n,3)=n+12+1+i-1;
        else
            cardMat(n,2)=n+12;
        end
        n=n+1;
    end
end
end
for k=1:3
for i=1:4
    for j=1:4
        tn=numList(n);
        image(ax,[-130,130]./2+540+(j-2.5).*130+rand(1).*5,[-145,145]./2+1000-(i-2).*145+145/2+rand(1).*5,...
            flipud(material.card(tn).C.*.8),'AlphaData',flipud(material.card(tn).A),...
            'UserData',[n,tn],'ButtonDownFcn',@clickImg)
        if k==3
            cardMat(n,2)=n+16+i-1;
            cardMat(n,3)=n+16+1+i-1;
        else
            cardMat(n,2)=n+16;
        end
        n=n+1;
    end
end
end
for k=1:4
for i=1:4
    for j=1:5
        tn=numList(n);
        if k==4
            image(ax,[-130,130]./2+540+(j-3).*130+rand(1).*5,[-145,145]./2+1000-(i-2).*145+145/2+rand(1).*5,...
            flipud(material.card(tn).C),'AlphaData',flipud(material.card(tn).A),...
            'UserData',[n,tn],'ButtonDownFcn',@clickImg)
        else
            cardMat(n,2)=n+16;
            image(ax,[-130,130]./2+540+(j-3).*130+rand(1).*5,[-145,145]./2+1000-(i-2).*145+145/2+rand(1).*5,...
            flipud(material.card(tn).C.*.8),'AlphaData',flipud(material.card(tn).A),...
            'UserData',[n,tn],'ButtonDownFcn',@clickImg)
            cardMat(n,2)=n+20;
        end
        n=n+1;
    end
end
end
for n=210:225
    tn=numList(n);       
    if n==225
        image(ax,[-130,130]./2+540-400+(n-210)*15,[-145,145]./2+600,...
        flipud(material.card(tn).C),'AlphaData',flipud(material.card(tn).A),...
        'UserData',[n,tn],'ButtonDownFcn',@clickImg)
    else
        image(ax,[-130,130]./2+540-400+(n-210)*15,[-145,145]./2+600,...
        flipud(material.card(tn).C.*.8),'AlphaData',flipud(material.card(tn).A),...
        'UserData',[n,tn],'ButtonDownFcn',@clickImg)
        cardMat(n,2)=n+1;
    end
end
for n=226:241
    tn=numList(n);       
    if n==241
        image(ax,[-130,130]./2+540-400+(n-226)*15,[-145,145]./2+400,...
        flipud(material.card(tn).C),'AlphaData',flipud(material.card(tn).A),...
        'UserData',[n,tn],'ButtonDownFcn',@clickImg)
    else
        image(ax,[-130,130]./2+540-400+(n-226)*15,[-145,145]./2+400,...
        flipud(material.card(tn).C.*.8),'AlphaData',flipud(material.card(tn).A),...
        'UserData',[n,tn],'ButtonDownFcn',@clickImg)
        cardMat(n,2)=n+1;
    end
end
for n=242:257
    tn=numList(n);       
    if n==257
        image(ax,[-130,130]./2+540+400-(n-242)*15,[-145,145]./2+600,...
        flipud(material.card(tn).C),'AlphaData',flipud(material.card(tn).A),...
        'UserData',[n,tn],'ButtonDownFcn',@clickImg)
    else
        image(ax,[-130,130]./2+540+400-(n-242)*15,[-145,145]./2+600,...
        flipud(material.card(tn).C.*.8),'AlphaData',flipud(material.card(tn).A),...
        'UserData',[n,tn],'ButtonDownFcn',@clickImg)
        cardMat(n,2)=n+1;
    end
end

for n=258:273
    tn=numList(n);       
    if n==273
        image(ax,[-130,130]./2+540+400-(n-258)*15,[-145,145]./2+400,...
        flipud(material.card(tn).C),'AlphaData',flipud(material.card(tn).A),...
        'UserData',[n,tn],'ButtonDownFcn',@clickImg)
    else
        image(ax,[-130,130]./2+540+400-(n-258)*15,[-145,145]./2+400,...
        flipud(material.card(tn).C.*.8),'AlphaData',flipud(material.card(tn).A),...
        'UserData',[n,tn],'ButtonDownFcn',@clickImg)
        cardMat(n,2)=n+1;
    end
end
% =========================================================================
% 点击卡片的回调
    function clickImg(obj,~)
        objNum=obj.UserData;
        if ~any(cardMat(objNum(1),2:end))
            cardNumList(cardNumList==objNum(1))=[];
            % 取消阴影
            [rows,cols]=find(cardMat(:,2:end)==objNum(1));
            for d=1:length(rows)
                cardMat(rows(d),cols(d)+1)=0;
                if ~any(cardMat(rows(d),2:end))
                    picObj=findobj('UserData',[rows(d),numList(rows(d))]);
                    picObj.CData=flipud(material.card(numList(rows(d))).C);
                end
            end
            % 更新卡槽
            obj.ButtonDownFcn=[];
            cardList=[cardList,objNum(1)];
            storeList=[storeList,objNum(2)];

            [storeList,tindex]=sort(storeList);
            cardList=cardList(tindex);
            % 消除卡牌
            d2=diff(diff(storeList).*(1:(length(storeList)-1)).^4);
            if ~isempty(d2)
                if any(d2==0)
                    zpos=find(d2==0,1);
                    for tk=zpos:(zpos+2)
                        picObj=findobj('UserData',[cardList(tk),storeList(tk)]);
                        delete(picObj)
                    end
                    storeList(zpos:(zpos+2))=[];
                    cardList(zpos:(zpos+2))=[];
                end
            end
            % 图像重绘
            for tk=1:length(cardList)
                picObj=findobj('UserData',[cardList(tk),storeList(tk)]);
                picObj.XData=[-130,130]./2+135+(tk-1).*135;
                picObj.YData=[-145,145]./2+154;
            end   

            if length(cardList)==7
                buttonName1=questdlg('游戏失败','游戏失败','关闭游戏','重新开始','关闭游戏');
                if isempty(buttonName1),buttonName1='end';end
                if strcmp(buttonName1,'关闭游戏');clf;clc;clear;close all
                elseif strcmp(buttonName1,'重新开始');delete(fig);sheeeppp();
                end
            end
        end
    end
% =========================================================================
image(ax,[-93,93]./1.5+100,[-81,81]./1.5+1410,flipud(material.re(1).C),...
    'AlphaData',flipud(material.re(1).A),'ButtonDownFcn',@restart)
image(ax,[-93,93]./1.5+100+160,[-81,81]./1.5+1410,flipud(material.re(2).C),...
    'AlphaData',flipud(material.re(2).A),'ButtonDownFcn',@refresh)
    function restart(~,~)
        delete(fig);sheeeppp();
    end
    function refresh(~,~)
        tnumList=numList(cardNumList);
        [~,tindex]=sort(rand([1,length(tnumList)]));
        tnumList=tnumList(tindex);

        for tk=1:length(tnumList)
            picObj=findobj('UserData',[cardNumList(tk),numList(cardNumList(tk))]);
            picObj.UserData=[cardNumList(tk),tnumList(tk)];
            picObj.CData=flipud(material.card(tnumList(tk)).C);
        end
        numList(cardNumList)=tnumList;
    end
end