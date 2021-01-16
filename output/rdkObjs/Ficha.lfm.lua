require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmsekai()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setFormType("sheetTemplate");
    obj:setDataType("com.Sekai");
    obj:setTitle("Sekai 2");
    obj:setName("frmsekai");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj.scrollBox1);
    obj.tabControl1:setLeft(10);
    obj.tabControl1:setTop(10);
    obj.tabControl1:setWidth(1000);
    obj.tabControl1:setHeight(700);
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Status");
    obj.tab1:setName("tab1");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.tab1);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.scrollBox2);
    obj.image1:setLeft(1);
    obj.image1:setTop(1);
    obj.image1:setWidth(1000);
    obj.image1:setHeight(700);
    obj.image1:setSRC("/imagens/1.png");
    obj.image1:setName("image1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.scrollBox2);
    obj.button1:setLeft(40);
    obj.button1:setTop(420);
    obj.button1:setText("Ataque Tai");
    obj.button1:setWidth(100);
    obj.button1:setName("button1");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.scrollBox2);
    obj.comboBox1:setLeft(145);
    obj.comboBox1:setTop(420);
    obj.comboBox1:setItems({'Taijutsu', 'Armado'});
    obj.comboBox1:setField("BatendoCom");
    obj.comboBox1:setName("comboBox1");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.scrollBox2);
    obj.button2:setLeft(250);
    obj.button2:setTop(420);
    obj.button2:setText("Esquiva");
    obj.button2:setWidth(100);
    obj.button2:setName("button2");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.scrollBox2);
    obj.button3:setLeft(40);
    obj.button3:setTop(448);
    obj.button3:setWidth(100);
    obj.button3:setHeight(85);
    obj.button3:setOpacity(0.1);
    obj.button3:setText("");
    obj.button3:setName("button3");

    obj.POPJutsu = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPJutsu:setParent(obj.scrollBox2);
    obj.POPJutsu:setName("POPJutsu");
    obj.POPJutsu:setVisible(false);
    obj.POPJutsu:setLeft(1);
    obj.POPJutsu:setTop(40);
    obj.POPJutsu:setWidth(900);
    obj.POPJutsu:setHeight(600);

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.POPJutsu);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.scrollBox3);
    obj.image2:setTop(1);
    obj.image2:setWidth(870);
    obj.image2:setHeight(705);
    obj.image2:setSRC("/imagens/5.png");
    obj.image2:setName("image2");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.scrollBox3);
    obj.button4:setText("Novo Jutsu");
    obj.button4:setWidth(125);
    obj.button4:setHeight(40);
    obj.button4:setLeft(70);
    obj.button4:setTop(10);
    obj.button4:setName("button4");

    obj.rclListaDosItens1 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens1:setParent(obj.scrollBox3);
    obj.rclListaDosItens1:setName("rclListaDosItens1");
    obj.rclListaDosItens1:setField("Jutsus");
    obj.rclListaDosItens1:setTemplateForm("frmItemDaLista1");
    obj.rclListaDosItens1:setWidth(880);
    obj.rclListaDosItens1:setHeight(570);
    obj.rclListaDosItens1:setLeft(10);
    obj.rclListaDosItens1:setTop(60);
    obj.rclListaDosItens1:setSelectable(true);

    obj.ListaJutsus = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.ListaJutsus:setParent(obj.scrollBox3);
    obj.ListaJutsus:setName("ListaJutsus");
    obj.ListaJutsus:setVisible(false);
    obj.ListaJutsus:setWidth(480);
    obj.ListaJutsus:setHeight(600);
    obj.ListaJutsus:setLeft(400);
    obj.ListaJutsus:setTop(60);

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.ListaJutsus);
    obj.rectangle1:setColor("black");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);
    obj.rectangle1:setWidth(460);
    obj.rectangle1:setHeight(580);
    obj.rectangle1:setLeft(1);
    obj.rectangle1:setTop(1);
    obj.rectangle1:setName("rectangle1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.rectangle1);
    obj.label1:setWidth(120);
    obj.label1:setHeight(40);
    obj.label1:setLeft(10);
    obj.label1:setTop(10);
    obj.label1:setFontFamily("Nyala");
    obj.label1:setFontSize(20);
    obj.label1:setText("Nome do Jutsu:");
    obj.label1:setName("label1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.rectangle1);
    obj.edit1:setWidth(310);
    obj.edit1:setHeight(30);
    obj.edit1:setLeft(130);
    obj.edit1:setTop(15);
    obj.edit1:setField("NomedoJutsu");
    obj.edit1:setName("edit1");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.rectangle1);
    obj.textEditor1:setLeft(10);
    obj.textEditor1:setTop(60);
    obj.textEditor1:setWidth(430);
    obj.textEditor1:setHeight(280);
    obj.textEditor1:setField("DescriJutsu");
    obj.textEditor1:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor1:setName("textEditor1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.rectangle1);
    obj.label2:setWidth(120);
    obj.label2:setHeight(40);
    obj.label2:setLeft(10);
    obj.label2:setTop(350);
    obj.label2:setFontFamily("Nyala");
    obj.label2:setFontSize(20);
    obj.label2:setText("Dano");
    obj.label2:setName("label2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.rectangle1);
    obj.edit2:setWidth(80);
    obj.edit2:setHeight(30);
    obj.edit2:setLeft(55);
    obj.edit2:setTop(355);
    obj.edit2:setType("number");
    obj.edit2:setField("DanoJutsu");
    obj.edit2:setName("edit2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.rectangle1);
    obj.label3:setWidth(60);
    obj.label3:setHeight(40);
    obj.label3:setLeft(340);
    obj.label3:setTop(350);
    obj.label3:setFontFamily("Nyala");
    obj.label3:setFontSize(20);
    obj.label3:setFontColor("cyan");
    obj.label3:setText("Chakra");
    obj.label3:setName("label3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.rectangle1);
    obj.edit3:setWidth(40);
    obj.edit3:setHeight(30);
    obj.edit3:setLeft(400);
    obj.edit3:setTop(355);
    obj.edit3:setType("number");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setFontColor("cyan");
    obj.edit3:setField("CustoJutsu");
    obj.edit3:setName("edit3");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.rectangle1);
    obj.edit4:setWidth(40);
    obj.edit4:setHeight(30);
    obj.edit4:setLeft(390);
    obj.edit4:setTop(380);
    obj.edit4:setVisible(false);
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setFontColor("cyan");
    obj.edit4:setType("number");
    obj.edit4:setField("ChakraPlayer");
    obj.edit4:setName("edit4");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.rectangle1);
    obj.label4:setWidth(60);
    obj.label4:setHeight(40);
    obj.label4:setLeft(150);
    obj.label4:setTop(350);
    obj.label4:setFontFamily("Nyala");
    obj.label4:setFontSize(20);
    obj.label4:setText("Tipo");
    obj.label4:setName("label4");

    obj.comboBox2 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.rectangle1);
    obj.comboBox2:setLeft(190);
    obj.comboBox2:setTop(363);
    obj.comboBox2:setWidth(140);
    obj.comboBox2:setHeight(18);
    obj.comboBox2:setField("Tipo");
    obj.comboBox2:setItems({'Tai', 'Nin', 'Gen', 'Elemental', 'DanoArmado', 'Defensivo', 'Selamento', 'Outros','M/Tai', 'M/Nin', 'M/Gen', 'M/Elemental', 'M/DA'});
    obj.comboBox2:setName("comboBox2");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.rectangle1);
    obj.label5:setWidth(150);
    obj.label5:setHeight(40);
    obj.label5:setLeft(10);
    obj.label5:setTop(390);
    obj.label5:setFontFamily("Nyala");
    obj.label5:setFontSize(16);
    obj.label5:setText("Dano Verdadeiro");
    obj.label5:setName("label5");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.rectangle1);
    obj.edit5:setWidth(80);
    obj.edit5:setHeight(20);
    obj.edit5:setLeft(110);
    obj.edit5:setTop(400);
    obj.edit5:setEnabled(false);
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setType("number");
    obj.edit5:setField("DNVerdadeiro");
    obj.edit5:setName("edit5");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.rectangle1);
    obj.label6:setWidth(170);
    obj.label6:setHeight(40);
    obj.label6:setLeft(280);
    obj.label6:setTop(390);
    obj.label6:setFontFamily("Nyala");
    obj.label6:setFontColor("Crimson ");
    obj.label6:setFontSize(16);
    obj.label6:setText("Intensidade");
    obj.label6:setName("label6");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.rectangle1);
    obj.edit6:setWidth(80);
    obj.edit6:setHeight(20);
    obj.edit6:setLeft(350);
    obj.edit6:setTop(400);
    obj.edit6:setEnabled(false);
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setType("number");
    obj.edit6:setFontColor("Crimson");
    obj.edit6:setField("Intensidade");
    obj.edit6:setName("edit6");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.rectangle1);
    obj.label7:setWidth(70);
    obj.label7:setHeight(40);
    obj.label7:setLeft(195);
    obj.label7:setTop(390);
    obj.label7:setFontFamily("Nyala");
    obj.label7:setFontSize(16);
    obj.label7:setText("Level");
    obj.label7:setName("label7");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.rectangle1);
    obj.edit7:setWidth(30);
    obj.edit7:setHeight(20);
    obj.edit7:setLeft(230);
    obj.edit7:setTop(400);
    obj.edit7:setEnabled(true);
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setType("number");
    obj.edit7:setField("LevelJutsu1");
    obj.edit7:setName("edit7");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.rectangle1);
    obj.image3:setLeft(20);
    obj.image3:setTop(420);
    obj.image3:setWidth(150);
    obj.image3:setHeight(150);
    obj.image3:setSRC("/imagens/Jutsu.png");
    obj.image3:setName("image3");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.rectangle1);
    obj.button5:setLeft(20);
    obj.button5:setTop(430);
    obj.button5:setFontSize(20);
    obj.button5:setOpacity(0.0);
    obj.button5:setHeight(120);
    obj.button5:setWidth(150);
    obj.button5:setText("Usar");
    obj.button5:setFontColor("White");
    obj.button5:setName("button5");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.rectangle1);
    obj.label8:setLeft(180);
    obj.label8:setTop(450);
    obj.label8:setWidth(230);
    obj.label8:setHeight(40);
    obj.label8:setFontFamily("Nyala");
    obj.label8:setFontSize(18);
    obj.label8:setText("Fortificação de jutsu 3D10 e 1d20");
    obj.label8:setName("label8");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.rectangle1);
    obj.edit8:setLeft(180);
    obj.edit8:setTop(500);
    obj.edit8:setWidth(50);
    obj.edit8:setHeight(30);
    obj.edit8:setType("number");
    obj.edit8:setMin(1);
    obj.edit8:setMax(9);
    obj.edit8:setEnabled(false);
    obj.edit8:setVisible(true);
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setField("Upa1d10");
    obj.edit8:setName("edit8");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.rectangle1);
    obj.edit9:setLeft(240);
    obj.edit9:setTop(500);
    obj.edit9:setWidth(50);
    obj.edit9:setHeight(30);
    obj.edit9:setType("number");
    obj.edit9:setMin(1);
    obj.edit9:setMax(9);
    obj.edit9:setEnabled(false);
    obj.edit9:setVisible(true);
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setField("Upa2d10");
    obj.edit9:setName("edit9");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.rectangle1);
    obj.edit10:setLeft(300);
    obj.edit10:setTop(500);
    obj.edit10:setWidth(50);
    obj.edit10:setHeight(30);
    obj.edit10:setType("number");
    obj.edit10:setMin(1);
    obj.edit10:setMax(9);
    obj.edit10:setEnabled(false);
    obj.edit10:setVisible(true);
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setField("Upa3d10");
    obj.edit10:setName("edit10");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.rectangle1);
    obj.rectangle2:setLeft(360);
    obj.rectangle2:setTop(500);
    obj.rectangle2:setWidth(50);
    obj.rectangle2:setHeight(30);
    obj.rectangle2:setColor("black");
    obj.rectangle2:setStrokeColor("red");
    obj.rectangle2:setStrokeSize(3);
    obj.rectangle2:setName("rectangle2");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.rectangle1);
    obj.edit11:setLeft(360);
    obj.edit11:setTop(500);
    obj.edit11:setWidth(50);
    obj.edit11:setHeight(30);
    obj.edit11:setType("number");
    obj.edit11:setMin(1);
    obj.edit11:setMax(18);
    obj.edit11:setEnabled(false);
    obj.edit11:setVisible(true);
    obj.edit11:setTransparent(true);
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setField("Upa1d20");
    obj.edit11:setName("edit11");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.rectangle1);
    obj.edit12:setLeft(180);
    obj.edit12:setTop(450);
    obj.edit12:setWidth(50);
    obj.edit12:setHeight(30);
    obj.edit12:setType("number");
    obj.edit12:setMin(1);
    obj.edit12:setMax(9);
    obj.edit12:setEnabled(true);
    obj.edit12:setVisible(false);
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setField("Upa1d10Soma");
    obj.edit12:setName("edit12");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.rectangle1);
    obj.edit13:setLeft(240);
    obj.edit13:setTop(450);
    obj.edit13:setWidth(50);
    obj.edit13:setHeight(30);
    obj.edit13:setType("number");
    obj.edit13:setMin(1);
    obj.edit13:setMax(9);
    obj.edit13:setEnabled(true);
    obj.edit13:setVisible(false);
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setField("Upa2d10Soma");
    obj.edit13:setName("edit13");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.rectangle1);
    obj.edit14:setLeft(300);
    obj.edit14:setTop(450);
    obj.edit14:setWidth(50);
    obj.edit14:setHeight(30);
    obj.edit14:setType("number");
    obj.edit14:setMin(1);
    obj.edit14:setMax(9);
    obj.edit14:setEnabled(true);
    obj.edit14:setVisible(false);
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setField("Upa3d10Soma");
    obj.edit14:setName("edit14");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.rectangle1);
    obj.rectangle3:setLeft(360);
    obj.rectangle3:setTop(450);
    obj.rectangle3:setWidth(50);
    obj.rectangle3:setHeight(30);
    obj.rectangle3:setColor("black");
    obj.rectangle3:setStrokeColor("red");
    obj.rectangle3:setVisible(false);
    obj.rectangle3:setStrokeSize(3);
    obj.rectangle3:setName("rectangle3");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.rectangle1);
    obj.edit15:setLeft(360);
    obj.edit15:setTop(450);
    obj.edit15:setWidth(50);
    obj.edit15:setHeight(30);
    obj.edit15:setType("number");
    obj.edit15:setMin(1);
    obj.edit15:setMax(18);
    obj.edit15:setEnabled(true);
    obj.edit15:setVisible(false);
    obj.edit15:setTransparent(true);
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setField("Upa1d20Soma");
    obj.edit15:setName("edit15");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.rectangle1);
    obj.edit16:setLeft(140);
    obj.edit16:setTop(460);
    obj.edit16:setWidth(50);
    obj.edit16:setHeight(30);
    obj.edit16:setType("number");
    obj.edit16:setMin(1);
    obj.edit16:setMax(9);
    obj.edit16:setEnabled(true);
    obj.edit16:setVisible(false);
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setField("Upa1d10Erro");
    obj.edit16:setName("edit16");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.rectangle1);
    obj.edit17:setLeft(200);
    obj.edit17:setTop(460);
    obj.edit17:setWidth(50);
    obj.edit17:setHeight(30);
    obj.edit17:setType("number");
    obj.edit17:setMin(1);
    obj.edit17:setMax(9);
    obj.edit17:setEnabled(true);
    obj.edit17:setVisible(false);
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setField("Upa2d10Erro");
    obj.edit17:setName("edit17");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.rectangle1);
    obj.edit18:setLeft(260);
    obj.edit18:setTop(460);
    obj.edit18:setWidth(50);
    obj.edit18:setHeight(30);
    obj.edit18:setType("number");
    obj.edit18:setMin(1);
    obj.edit18:setMax(9);
    obj.edit18:setEnabled(true);
    obj.edit18:setVisible(false);
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setField("Upa3d10Erro");
    obj.edit18:setName("edit18");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.rectangle1);
    obj.rectangle4:setLeft(320);
    obj.rectangle4:setTop(460);
    obj.rectangle4:setWidth(50);
    obj.rectangle4:setHeight(30);
    obj.rectangle4:setColor("black");
    obj.rectangle4:setStrokeColor("red");
    obj.rectangle4:setVisible(false);
    obj.rectangle4:setStrokeSize(3);
    obj.rectangle4:setName("rectangle4");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.rectangle1);
    obj.edit19:setLeft(320);
    obj.edit19:setTop(460);
    obj.edit19:setWidth(50);
    obj.edit19:setHeight(30);
    obj.edit19:setType("number");
    obj.edit19:setMin(1);
    obj.edit19:setMax(18);
    obj.edit19:setEnabled(true);
    obj.edit19:setVisible(false);
    obj.edit19:setTransparent(true);
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setField("Upa1d20Erro");
    obj.edit19:setName("edit19");

    obj.btnUparJutsu = GUI.fromHandle(_obj_newObject("button"));
    obj.btnUparJutsu:setParent(obj.rectangle1);
    obj.btnUparJutsu:setName("btnUparJutsu");
    obj.btnUparJutsu:setLeft(180);
    obj.btnUparJutsu:setTop(540);
    obj.btnUparJutsu:setWidth(230);
    obj.btnUparJutsu:setHeight(30);
    obj.btnUparJutsu:setFontFamily("Nyala");
    obj.btnUparJutsu:setFontSize(18);
    obj.btnUparJutsu:setText("Treinar");


										local function UparJutsu() 
																			
										self.btnUparJutsu.visible = false;
										local node = self.ListaJutsus.node;									
										local mesaDoPersonagem = rrpg.getMesaDe(sheet);	
										
										node.Upa1d10 = node.Upa1d10 or 0;
										node.Upa2d10 = node.Upa2d10 or 0;
										node.Upa3d10 = node.Upa3d10 or 0;
										node.Upa1d20 = node.Upa1d20 or 0;
										
										node.Upa1d10Erro = node.Upa1d10Erro or 0;
										node.Upa2d10Erro = node.Upa2d10Erro or 0;
										node.Upa3d10Erro = node.Upa3d10Erro or 0;
										node.Upa1d20Erro = node.Upa1d20Erro or 0;
										
										node.Upa1d10Soma = node.Upa1d10Soma or 0;
										node.Upa2d10Soma = node.Upa2d10Soma or 0;
										node.Upa3d10Soma = node.Upa3d10Soma or 0;
										node.Upa1d20Soma = node.Upa1d20Soma or 0;	
										
										if node.Upa1d10 < 0 then
											node.Upa1d10 = 1;
										end;
										
										if node.Upa2d10 < 0 then
											node.Upa2d10 = 1;
										end;
										
										if node.Upa3d10 < 0 then
											node.Upa3d10 = 1;
										end;
										
										if node.Upa1d20 < 0 then
											node.Upa1d20 = 5;
										end;

										node.Upa1d10 = (tonumber(sheet.Bonus1d10) or 0) + (tonumber(node.Upa1d10Soma) or 0) + (tonumber(node.Upa1d10Erro) or 0);
										node.Upa2d10 = (tonumber(sheet.Bonus2d10) or 0) + (tonumber(node.Upa2d10Soma) or 0) + (tonumber(node.Upa2d10Erro) or 0);
										node.Upa3d10 = (tonumber(sheet.Bonus3d10) or 0) + (tonumber(node.Upa3d10Soma) or 0) + (tonumber(node.Upa3d10Erro) or 0);
										node.Upa1d20 = (tonumber(sheet.Bonus1d20) or 0) + (tonumber(node.Upa1d20Soma) or 0) + (tonumber(node.Upa1d20Erro) or 0);
										
										if node.Upa1d10 > 9 then
											node.Upa1d10 = 9;
										end;
										
										if node.Upa2d10 > 9 then
											node.Upa2d10 = 9;
										end;
										
										if node.Upa3d10 > 9 then
											node.Upa3d10 = 9;
										end;
										
										if node.Upa1d20 > 18 then
											node.Upa1d20 = 18;
										end;	
										
										if sheet.TreinoON == true then	
											mesaDoPersonagem.chat:rolarDados("1d10", "[§K3]Fortificamento de Jutsu",
											function (rolado)
											if node.DescriJutsu == nil then
												showMessage("Falta Descrição do Jutsu ou não irá funcionar");
												self.btnUparJutsu.visible = true;
											else 
												mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. node.DescriJutsu);										
													if node.Upa1d10 >= rolado.resultado then
														mesaDoPersonagem.chat:enviarMensagem(".. [§K3] Sucesso");
														mesaDoPersonagem.chat:rolarDados("1d10", "[§K3]Segunda Tentativa",
														function (rolado)	
															if node.Upa2d10 >= rolado.resultado then
																mesaDoPersonagem.chat:enviarMensagem(".. [§K3] Sucesso");
																mesaDoPersonagem.chat:rolarDados("1d10", "[§K3]Terceira Tentativa",
																function (rolado)
																	if node.Upa3d10 >= rolado.resultado then
																		mesaDoPersonagem.chat:enviarMensagem(".. [§K3] Sucesso");
																		mesaDoPersonagem.chat:rolarDados("1d20", "[§K3]Tentativa de Execução Final",
																		function (rolado)
																			if node.Upa1d20 >= rolado.resultado then
																				mesaDoPersonagem.chat:enviarMensagem(".. [§K3] Aprendeu o Jutsu");										
																				mesaDoPersonagem.chat:enviarMensagem("[§I https://ns-rpg.weebly.com/uploads/2/5/1/4/25140777/644651_orig.gif]");
																				node.Upa1d10Erro = 0;
																				node.Upa2d10Erro = 0;
																				node.Upa3d10Erro = 0;
																				node.Upa1d20Erro = 0;																			
																				node.LevelJutsu1 = tonumber(node.LevelJutsu1 or 0) + 1;
																				self.btnUparJutsu.visible = true;	
																			else 
																				mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Ultima");
																				node.Upa1d20Erro =  node.Upa1d20Erro + 1;
																				node.Upa1d20 = (tonumber(sheet.Bonus1d20) or 0) + (tonumber(node.Upa1d20Soma) or 0) + (tonumber(node.Upa1d20Erro) or 0);
																				self.btnUparJutsu.visible = true;	
																			end;
																		end);	
																	else
																		mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Terceira");
																		node.Upa3d10Erro =  node.Upa3d10Erro + 1;
																		node.Upa3d10 = (tonumber(sheet.Bonus3d10) or 0) + (tonumber(node.Upa3d10Soma) or 0) + (tonumber(node.Upa3d10Erro) or 0);
																		self.btnUparJutsu.visible = true;																
																	end;
																end);
															else
																mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Segunda");
																node.Upa2d10Erro =  node.Upa2d10Erro + 1;														
																node.Upa2d10 = (tonumber(sheet.Bonus2d10) or 0) + (tonumber(node.Upa2d10Soma) or 0) + (tonumber(node.Upa2d10Erro) or 0);
																self.btnUparJutsu.visible = true;														
															end;												
														end)
													else
														mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Primeira");
														node.Upa1d10Erro =  node.Upa1d10Erro + 1;
														node.Upa1d10 = (tonumber(sheet.Bonus1d10) or 0) + (tonumber(node.Upa1d10Soma) or 0) + (tonumber(node.Upa1d10Erro) or 0);
														self.btnUparJutsu.visible = true;
													end;
												end;
											end);
										else
											showMessage("TREINO NÃO HABILITADO PROVAVELMENTE O MESTRE ESTA OFFLINE");
											self.btnUparJutsu3.visible = true;
										end;
									end;	
									


    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.scrollBox2);
    obj.button6:setLeft(145);
    obj.button6:setTop(448);
    obj.button6:setWidth(100);
    obj.button6:setHeight(85);
    obj.button6:setOpacity(0.1);
    obj.button6:setText("");
    obj.button6:setName("button6");

    obj.POPFavorito = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPFavorito:setParent(obj.scrollBox2);
    obj.POPFavorito:setName("POPFavorito");
    obj.POPFavorito:setVisible(false);
    obj.POPFavorito:setLeft(1);
    obj.POPFavorito:setTop(40);
    obj.POPFavorito:setWidth(900);
    obj.POPFavorito:setHeight(600);

    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.POPFavorito);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.scrollBox4);
    obj.image4:setTop(1);
    obj.image4:setWidth(870);
    obj.image4:setHeight(705);
    obj.image4:setSRC("/imagens/5.png");
    obj.image4:setName("image4");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.scrollBox4);
    obj.button7:setText("Novo Jutsu");
    obj.button7:setWidth(125);
    obj.button7:setHeight(40);
    obj.button7:setLeft(70);
    obj.button7:setTop(10);
    obj.button7:setName("button7");

    obj.rclListaDosItens2 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens2:setParent(obj.scrollBox4);
    obj.rclListaDosItens2:setName("rclListaDosItens2");
    obj.rclListaDosItens2:setField("Jutsus2");
    obj.rclListaDosItens2:setTemplateForm("frmItemDaLista2");
    obj.rclListaDosItens2:setWidth(880);
    obj.rclListaDosItens2:setHeight(570);
    obj.rclListaDosItens2:setLeft(10);
    obj.rclListaDosItens2:setTop(60);
    obj.rclListaDosItens2:setSelectable(true);

    obj.ListaJutsus2 = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.ListaJutsus2:setParent(obj.scrollBox4);
    obj.ListaJutsus2:setName("ListaJutsus2");
    obj.ListaJutsus2:setVisible(false);
    obj.ListaJutsus2:setWidth(480);
    obj.ListaJutsus2:setHeight(580);
    obj.ListaJutsus2:setLeft(400);
    obj.ListaJutsus2:setTop(60);

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.ListaJutsus2);
    obj.rectangle5:setColor("black");
    obj.rectangle5:setXradius(10);
    obj.rectangle5:setYradius(10);
    obj.rectangle5:setWidth(460);
    obj.rectangle5:setHeight(560);
    obj.rectangle5:setLeft(1);
    obj.rectangle5:setTop(1);
    obj.rectangle5:setName("rectangle5");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.rectangle5);
    obj.label9:setWidth(120);
    obj.label9:setHeight(40);
    obj.label9:setLeft(10);
    obj.label9:setTop(10);
    obj.label9:setFontFamily("Nyala");
    obj.label9:setFontSize(20);
    obj.label9:setText("Nome do Jutsu:");
    obj.label9:setName("label9");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.rectangle5);
    obj.edit20:setWidth(310);
    obj.edit20:setHeight(30);
    obj.edit20:setLeft(130);
    obj.edit20:setTop(15);
    obj.edit20:setField("NomedoJutsu2");
    obj.edit20:setName("edit20");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.rectangle5);
    obj.textEditor2:setLeft(10);
    obj.textEditor2:setTop(60);
    obj.textEditor2:setWidth(430);
    obj.textEditor2:setHeight(280);
    obj.textEditor2:setField("DescriJutsu2");
    obj.textEditor2:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor2:setName("textEditor2");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.rectangle5);
    obj.label10:setWidth(120);
    obj.label10:setHeight(40);
    obj.label10:setLeft(10);
    obj.label10:setTop(350);
    obj.label10:setFontFamily("Nyala");
    obj.label10:setFontSize(20);
    obj.label10:setText("Dano");
    obj.label10:setName("label10");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.rectangle5);
    obj.edit21:setWidth(80);
    obj.edit21:setHeight(30);
    obj.edit21:setLeft(55);
    obj.edit21:setTop(355);
    obj.edit21:setType("number");
    obj.edit21:setField("DanoJutsu2");
    obj.edit21:setName("edit21");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.rectangle5);
    obj.label11:setWidth(60);
    obj.label11:setHeight(40);
    obj.label11:setLeft(340);
    obj.label11:setTop(350);
    obj.label11:setFontFamily("Nyala");
    obj.label11:setFontSize(20);
    obj.label11:setFontColor("cyan");
    obj.label11:setText("Chakra");
    obj.label11:setName("label11");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.rectangle5);
    obj.edit22:setWidth(40);
    obj.edit22:setHeight(30);
    obj.edit22:setLeft(400);
    obj.edit22:setTop(355);
    obj.edit22:setType("number");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setFontColor("cyan");
    obj.edit22:setField("CustoJutsu2");
    obj.edit22:setName("edit22");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.rectangle5);
    obj.edit23:setWidth(40);
    obj.edit23:setHeight(30);
    obj.edit23:setLeft(390);
    obj.edit23:setTop(380);
    obj.edit23:setVisible(false);
    obj.edit23:setType("number");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setFontColor("cyan");
    obj.edit23:setField("ChakraPlayer2");
    obj.edit23:setName("edit23");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.rectangle5);
    obj.label12:setWidth(60);
    obj.label12:setHeight(40);
    obj.label12:setLeft(150);
    obj.label12:setTop(350);
    obj.label12:setFontFamily("Nyala");
    obj.label12:setFontSize(20);
    obj.label12:setText("Tipo");
    obj.label12:setName("label12");

    obj.comboBox3 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox3:setParent(obj.rectangle5);
    obj.comboBox3:setLeft(190);
    obj.comboBox3:setTop(363);
    obj.comboBox3:setWidth(140);
    obj.comboBox3:setHeight(18);
    obj.comboBox3:setField("Tipo2");
    obj.comboBox3:setItems({'Tai', 'Nin', 'Gen', 'Elemental', 'DanoArmado', 'Defensivo', 'Selamento', 'Outros','M/Tai', 'M/Nin', 'M/Gen', 'M/Elemental', 'M/DA'});
    obj.comboBox3:setName("comboBox3");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.rectangle5);
    obj.label13:setWidth(150);
    obj.label13:setHeight(40);
    obj.label13:setLeft(10);
    obj.label13:setTop(390);
    obj.label13:setFontFamily("Nyala");
    obj.label13:setFontSize(16);
    obj.label13:setText("Dano Verdadeiro");
    obj.label13:setName("label13");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.rectangle5);
    obj.edit24:setWidth(80);
    obj.edit24:setHeight(20);
    obj.edit24:setLeft(110);
    obj.edit24:setTop(400);
    obj.edit24:setEnabled(false);
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setType("number");
    obj.edit24:setField("DNVerdadeiro2");
    obj.edit24:setName("edit24");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.rectangle5);
    obj.label14:setWidth(170);
    obj.label14:setHeight(40);
    obj.label14:setLeft(280);
    obj.label14:setTop(390);
    obj.label14:setFontFamily("Nyala");
    obj.label14:setFontColor("Crimson ");
    obj.label14:setFontSize(16);
    obj.label14:setText("Intensidade");
    obj.label14:setName("label14");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.rectangle5);
    obj.edit25:setWidth(80);
    obj.edit25:setHeight(20);
    obj.edit25:setLeft(350);
    obj.edit25:setTop(400);
    obj.edit25:setEnabled(false);
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setType("number");
    obj.edit25:setFontColor("Crimson");
    obj.edit25:setField("Intensidade2");
    obj.edit25:setName("edit25");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.rectangle5);
    obj.label15:setWidth(70);
    obj.label15:setHeight(40);
    obj.label15:setLeft(195);
    obj.label15:setTop(390);
    obj.label15:setFontFamily("Nyala");
    obj.label15:setFontSize(16);
    obj.label15:setText("Level");
    obj.label15:setName("label15");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.rectangle5);
    obj.edit26:setWidth(30);
    obj.edit26:setHeight(20);
    obj.edit26:setLeft(230);
    obj.edit26:setTop(400);
    obj.edit26:setEnabled(false);
    obj.edit26:setType("number");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setField("LevelJutsu2");
    obj.edit26:setName("edit26");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.rectangle5);
    obj.image5:setLeft(20);
    obj.image5:setTop(420);
    obj.image5:setWidth(150);
    obj.image5:setHeight(150);
    obj.image5:setSRC("/imagens/Jutsu.png");
    obj.image5:setName("image5");

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.rectangle5);
    obj.button8:setLeft(20);
    obj.button8:setTop(430);
    obj.button8:setFontSize(20);
    obj.button8:setOpacity(0.0);
    obj.button8:setHeight(120);
    obj.button8:setWidth(150);
    obj.button8:setText("Usar");
    obj.button8:setFontColor("White");
    obj.button8:setName("button8");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.rectangle5);
    obj.label16:setLeft(180);
    obj.label16:setTop(450);
    obj.label16:setWidth(230);
    obj.label16:setHeight(40);
    obj.label16:setFontFamily("Nyala");
    obj.label16:setFontSize(18);
    obj.label16:setText("Fortificação de jutsu 3D10 e 1d20");
    obj.label16:setName("label16");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.rectangle5);
    obj.edit27:setLeft(180);
    obj.edit27:setTop(500);
    obj.edit27:setWidth(50);
    obj.edit27:setHeight(30);
    obj.edit27:setType("number");
    obj.edit27:setMin(1);
    obj.edit27:setMax(9);
    obj.edit27:setEnabled(false);
    obj.edit27:setVisible(true);
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setField("Upa1d102");
    obj.edit27:setName("edit27");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.rectangle5);
    obj.edit28:setLeft(240);
    obj.edit28:setTop(500);
    obj.edit28:setWidth(50);
    obj.edit28:setHeight(30);
    obj.edit28:setType("number");
    obj.edit28:setMin(1);
    obj.edit28:setMax(9);
    obj.edit28:setEnabled(false);
    obj.edit28:setVisible(true);
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setField("Upa2d102");
    obj.edit28:setName("edit28");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.rectangle5);
    obj.edit29:setLeft(300);
    obj.edit29:setTop(500);
    obj.edit29:setWidth(50);
    obj.edit29:setHeight(30);
    obj.edit29:setType("number");
    obj.edit29:setMin(1);
    obj.edit29:setMax(9);
    obj.edit29:setEnabled(false);
    obj.edit29:setVisible(true);
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setField("Upa3d102");
    obj.edit29:setName("edit29");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.rectangle5);
    obj.rectangle6:setLeft(360);
    obj.rectangle6:setTop(500);
    obj.rectangle6:setWidth(50);
    obj.rectangle6:setHeight(30);
    obj.rectangle6:setColor("black");
    obj.rectangle6:setStrokeColor("red");
    obj.rectangle6:setStrokeSize(3);
    obj.rectangle6:setName("rectangle6");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.rectangle5);
    obj.edit30:setLeft(360);
    obj.edit30:setTop(500);
    obj.edit30:setWidth(50);
    obj.edit30:setHeight(30);
    obj.edit30:setType("number");
    obj.edit30:setMin(1);
    obj.edit30:setMax(18);
    obj.edit30:setEnabled(false);
    obj.edit30:setVisible(true);
    obj.edit30:setTransparent(true);
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setField("Upa1d202");
    obj.edit30:setName("edit30");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.rectangle5);
    obj.edit31:setLeft(180);
    obj.edit31:setTop(450);
    obj.edit31:setWidth(50);
    obj.edit31:setHeight(30);
    obj.edit31:setType("number");
    obj.edit31:setMin(1);
    obj.edit31:setMax(9);
    obj.edit31:setEnabled(true);
    obj.edit31:setVisible(false);
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setField("Upa1d10Soma2");
    obj.edit31:setName("edit31");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.rectangle5);
    obj.edit32:setLeft(240);
    obj.edit32:setTop(450);
    obj.edit32:setWidth(50);
    obj.edit32:setHeight(30);
    obj.edit32:setType("number");
    obj.edit32:setMin(1);
    obj.edit32:setMax(9);
    obj.edit32:setEnabled(true);
    obj.edit32:setVisible(false);
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setField("Upa2d10Soma2");
    obj.edit32:setName("edit32");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.rectangle5);
    obj.edit33:setLeft(300);
    obj.edit33:setTop(450);
    obj.edit33:setWidth(50);
    obj.edit33:setHeight(30);
    obj.edit33:setType("number");
    obj.edit33:setMin(1);
    obj.edit33:setMax(9);
    obj.edit33:setEnabled(true);
    obj.edit33:setVisible(false);
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setField("Upa3d10Soma2");
    obj.edit33:setName("edit33");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.rectangle5);
    obj.rectangle7:setLeft(360);
    obj.rectangle7:setTop(450);
    obj.rectangle7:setWidth(50);
    obj.rectangle7:setHeight(30);
    obj.rectangle7:setColor("black");
    obj.rectangle7:setStrokeColor("red");
    obj.rectangle7:setVisible(false);
    obj.rectangle7:setStrokeSize(3);
    obj.rectangle7:setName("rectangle7");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.rectangle5);
    obj.edit34:setLeft(360);
    obj.edit34:setTop(450);
    obj.edit34:setWidth(50);
    obj.edit34:setHeight(30);
    obj.edit34:setType("number");
    obj.edit34:setMin(1);
    obj.edit34:setMax(18);
    obj.edit34:setEnabled(true);
    obj.edit34:setVisible(false);
    obj.edit34:setTransparent(false);
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setField("Upa1d20Soma2");
    obj.edit34:setName("edit34");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.rectangle5);
    obj.edit35:setLeft(140);
    obj.edit35:setTop(460);
    obj.edit35:setWidth(50);
    obj.edit35:setHeight(30);
    obj.edit35:setType("number");
    obj.edit35:setMin(1);
    obj.edit35:setMax(9);
    obj.edit35:setEnabled(true);
    obj.edit35:setVisible(false);
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setField("Upa1d10Erro2");
    obj.edit35:setName("edit35");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.rectangle5);
    obj.edit36:setLeft(200);
    obj.edit36:setTop(460);
    obj.edit36:setWidth(50);
    obj.edit36:setHeight(30);
    obj.edit36:setType("number");
    obj.edit36:setMin(1);
    obj.edit36:setMax(9);
    obj.edit36:setEnabled(true);
    obj.edit36:setVisible(false);
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setField("Upa2d10Erro2");
    obj.edit36:setName("edit36");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.rectangle5);
    obj.edit37:setLeft(260);
    obj.edit37:setTop(460);
    obj.edit37:setWidth(50);
    obj.edit37:setHeight(30);
    obj.edit37:setType("number");
    obj.edit37:setMin(1);
    obj.edit37:setMax(9);
    obj.edit37:setEnabled(true);
    obj.edit37:setVisible(false);
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setField("Upa3d10Erro2");
    obj.edit37:setName("edit37");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.rectangle5);
    obj.rectangle8:setLeft(320);
    obj.rectangle8:setTop(460);
    obj.rectangle8:setWidth(50);
    obj.rectangle8:setHeight(30);
    obj.rectangle8:setColor("black");
    obj.rectangle8:setStrokeColor("red");
    obj.rectangle8:setVisible(false);
    obj.rectangle8:setStrokeSize(3);
    obj.rectangle8:setName("rectangle8");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.rectangle5);
    obj.edit38:setLeft(320);
    obj.edit38:setTop(460);
    obj.edit38:setWidth(50);
    obj.edit38:setHeight(30);
    obj.edit38:setType("number");
    obj.edit38:setMin(1);
    obj.edit38:setMax(18);
    obj.edit38:setEnabled(true);
    obj.edit38:setVisible(false);
    obj.edit38:setTransparent(true);
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setField("Upa1d20Erro2");
    obj.edit38:setName("edit38");

    obj.btnUparJutsu2 = GUI.fromHandle(_obj_newObject("button"));
    obj.btnUparJutsu2:setParent(obj.rectangle5);
    obj.btnUparJutsu2:setName("btnUparJutsu2");
    obj.btnUparJutsu2:setLeft(180);
    obj.btnUparJutsu2:setTop(540);
    obj.btnUparJutsu2:setWidth(230);
    obj.btnUparJutsu2:setHeight(30);
    obj.btnUparJutsu2:setFontFamily("Nyala");
    obj.btnUparJutsu2:setFontSize(18);
    obj.btnUparJutsu2:setText("Treinar");


										local function UparJutsu2() 
																			
										self.btnUparJutsu2.visible = false;
										local node = self.ListaJutsus2.node;									
										local mesaDoPersonagem = rrpg.getMesaDe(sheet);	
										
										node.Upa1d102 = node.Upa1d102 or 0;
										node.Upa2d102 = node.Upa2d102 or 0;
										node.Upa3d102 = node.Upa3d102 or 0;
										node.Upa1d202 = node.Upa1d202 or 0;
										
										node.Upa1d10Erro2 = node.Upa1d10Erro2 or 0;
										node.Upa2d10Erro2 = node.Upa2d10Erro2 or 0;
										node.Upa3d10Erro2 = node.Upa3d10Erro2 or 0;
										node.Upa1d20Erro2 = node.Upa1d20Erro2 or 0;
										
										node.Upa1d10Soma2 = node.Upa1d10Soma2 or 0;
										node.Upa2d10Soma2 = node.Upa2d10Soma2 or 0;
										node.Upa3d10Soma2 = node.Upa3d10Soma2 or 0;
										node.Upa1d20Soma2 = node.Upa1d20Soma2 or 0;	
										
										if node.Upa1d102 < 0 then
											node.Upa1d102 = 1;
										end;
										
										if node.Upa2d102 < 0 then
											node.Upa2d102 = 1;
										end;
										
										if node.Upa3d102 < 0 then
											node.Upa3d102 = 1;
										end;
										
										if node.Upa1d202 < 0 then
											node.Upa1d202 = 5;
										end;

										node.Upa1d102 = (tonumber(sheet.Bonus1d10) or 0) + (tonumber(node.Upa1d10Soma2) or 0) + (tonumber(node.Upa1d10Erro2) or 0);
										node.Upa2d102 = (tonumber(sheet.Bonus2d10) or 0) + (tonumber(node.Upa2d10Soma2) or 0) + (tonumber(node.Upa2d10Erro2) or 0);
										node.Upa3d102 = (tonumber(sheet.Bonus3d10) or 0) + (tonumber(node.Upa3d10Soma2) or 0) + (tonumber(node.Upa3d10Erro2) or 0);
										node.Upa1d202 = (tonumber(sheet.Bonus1d20) or 0) + (tonumber(node.Upa1d20Soma2) or 0) + (tonumber(node.Upa1d20Erro2) or 0);
										
										if node.Upa1d102 > 9 then
											node.Upa1d102 = 9;
										end;
										
										if node.Upa2d102 > 9 then
											node.Upa2d102 = 9;
										end;
										
										if node.Upa3d102 > 9 then
											node.Upa3d102 = 9;
										end;
										
										if node.Upa1d202 > 18 then
											node.Upa1d202 = 18;
										end;	
										
										if sheet.TreinoON == true then	
											mesaDoPersonagem.chat:rolarDados("1d10", "[§K3]Fortificamento de Jutsu",
											function (rolado)
											if node.DescriJutsu2 == nil then
												showMessage("Falta Descrição do Jutsu ou não irá funcionar");
												self.btnUparJutsu2.visible = true;
											else 
												mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. node.DescriJutsu2);										
													if node.Upa1d102 >= rolado.resultado then
														mesaDoPersonagem.chat:enviarMensagem(".. [§K3] Sucesso");
														mesaDoPersonagem.chat:rolarDados("1d10", "[§K3]Segunda Tentativa",
														function (rolado)	
															if node.Upa2d102 >= rolado.resultado then
																mesaDoPersonagem.chat:enviarMensagem(".. [§K3] Sucesso");
																mesaDoPersonagem.chat:rolarDados("1d10", "[§K3]Terceira Tentativa",
																function (rolado)
																	if node.Upa3d102 >= rolado.resultado then
																		mesaDoPersonagem.chat:enviarMensagem(".. [§K3] Sucesso");
																		mesaDoPersonagem.chat:rolarDados("1d20", "[§K3]Tentativa de Execução Final",
																		function (rolado)
																			if node.Upa1d202 >= rolado.resultado then
																				mesaDoPersonagem.chat:enviarMensagem(".. [§K3] Aprendeu o Jutsu");										
																				mesaDoPersonagem.chat:enviarMensagem("[§I https://ns-rpg.weebly.com/uploads/2/5/1/4/25140777/644651_orig.gif]");
																				node.Upa1d10Erro2 = 0;
																				node.Upa2d10Erro2 = 0;
																				node.Upa3d10Erro2 = 0;
																				node.Upa1d20Erro2 = 0;																			
																				node.LevelJutsu2 = tonumber(node.LevelJutsu2 or 0) + 1;
																				self.btnUparJutsu2.visible = true;	
																			else 
																				mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Ultima");
																				node.Upa1d20Erro2 =  node.Upa1d20Erro2 + 1;
																				node.Upa1d202 = (tonumber(sheet.Bonus1d20) or 0) + (tonumber(node.Upa1d20Soma2) or 0) + (tonumber(node.Upa1d20Erro2) or 0);
																				self.btnUparJutsu2.visible = true;	
																			end;
																		end);	
																	else
																		mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Terceira");
																		node.Upa3d10Erro2 =  node.Upa3d10Erro2 + 1;
																		node.Upa3d102 = (tonumber(sheet.Bonus3d10) or 0) + (tonumber(node.Upa3d10Soma2) or 0) + (tonumber(node.Upa3d10Erro2) or 0);
																		self.btnUparJutsu2.visible = true;																
																	end;
																end);
															else
																mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Segunda");
																node.Upa2d10Erro2 =  node.Upa2d10Erro2 + 1;														
																node.Upa2d102 = (tonumber(sheet.Bonus2d10) or 0) + (tonumber(node.Upa2d10Soma2) or 0) + (tonumber(node.Upa2d10Erro2) or 0);
																self.btnUparJutsu2.visible = true;														
															end;												
														end)
													else
														mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Primeira");
														node.Upa1d10Erro2 =  node.Upa1d10Erro2 + 1;
														node.Upa1d102 = (tonumber(sheet.Bonus1d10) or 0) + (tonumber(node.Upa1d10Soma2) or 0) + (tonumber(node.Upa1d10Erro2) or 0);
														self.btnUparJutsu2.visible = true;
													end;
												end;
											end);
										else
											showMessage("TREINO NÃO HABILITADO PROVAVELMENTE O MESTRE ESTA OFFLINE");
											self.btnUparJutsu3.visible = true;
										end;										
									end;	
									


    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.scrollBox2);
    obj.button9:setLeft(250);
    obj.button9:setTop(448);
    obj.button9:setWidth(100);
    obj.button9:setHeight(85);
    obj.button9:setOpacity(0.1);
    obj.button9:setText("");
    obj.button9:setName("button9");

    obj.POPKekegenkai = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPKekegenkai:setParent(obj.scrollBox2);
    obj.POPKekegenkai:setName("POPKekegenkai");
    obj.POPKekegenkai:setVisible(false);
    obj.POPKekegenkai:setLeft(1);
    obj.POPKekegenkai:setTop(40);
    obj.POPKekegenkai:setWidth(900);
    obj.POPKekegenkai:setHeight(600);

    obj.scrollBox5 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.POPKekegenkai);
    obj.scrollBox5:setAlign("client");
    obj.scrollBox5:setName("scrollBox5");

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.scrollBox5);
    obj.image6:setTop(1);
    obj.image6:setWidth(870);
    obj.image6:setHeight(705);
    obj.image6:setSRC("/imagens/5.png");
    obj.image6:setName("image6");

    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.scrollBox5);
    obj.button10:setText("Novo Jutsu");
    obj.button10:setWidth(125);
    obj.button10:setHeight(40);
    obj.button10:setLeft(70);
    obj.button10:setTop(10);
    obj.button10:setName("button10");

    obj.rclListaDosItens3 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens3:setParent(obj.scrollBox5);
    obj.rclListaDosItens3:setName("rclListaDosItens3");
    obj.rclListaDosItens3:setField("Jutsus3");
    obj.rclListaDosItens3:setTemplateForm("frmItemDaLista3");
    obj.rclListaDosItens3:setWidth(880);
    obj.rclListaDosItens3:setHeight(570);
    obj.rclListaDosItens3:setLeft(10);
    obj.rclListaDosItens3:setTop(60);
    obj.rclListaDosItens3:setSelectable(true);

    obj.ListaJutsus3 = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.ListaJutsus3:setParent(obj.scrollBox5);
    obj.ListaJutsus3:setName("ListaJutsus3");
    obj.ListaJutsus3:setVisible(false);
    obj.ListaJutsus3:setWidth(480);
    obj.ListaJutsus3:setHeight(580);
    obj.ListaJutsus3:setLeft(400);
    obj.ListaJutsus3:setTop(60);

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.ListaJutsus3);
    obj.rectangle9:setColor("black");
    obj.rectangle9:setXradius(10);
    obj.rectangle9:setYradius(10);
    obj.rectangle9:setWidth(460);
    obj.rectangle9:setHeight(560);
    obj.rectangle9:setLeft(1);
    obj.rectangle9:setTop(1);
    obj.rectangle9:setName("rectangle9");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.rectangle9);
    obj.label17:setWidth(120);
    obj.label17:setHeight(40);
    obj.label17:setLeft(10);
    obj.label17:setTop(10);
    obj.label17:setFontFamily("Nyala");
    obj.label17:setFontSize(20);
    obj.label17:setText("Nome do Jutsu:");
    obj.label17:setName("label17");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.rectangle9);
    obj.edit39:setWidth(310);
    obj.edit39:setHeight(30);
    obj.edit39:setLeft(130);
    obj.edit39:setTop(15);
    obj.edit39:setField("NomedoJutsu3");
    obj.edit39:setName("edit39");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.rectangle9);
    obj.textEditor3:setLeft(10);
    obj.textEditor3:setTop(60);
    obj.textEditor3:setWidth(430);
    obj.textEditor3:setHeight(280);
    obj.textEditor3:setField("DescriJutsu3");
    obj.textEditor3:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor3:setName("textEditor3");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.rectangle9);
    obj.label18:setWidth(120);
    obj.label18:setHeight(40);
    obj.label18:setLeft(10);
    obj.label18:setTop(350);
    obj.label18:setFontFamily("Nyala");
    obj.label18:setFontSize(20);
    obj.label18:setText("Dano");
    obj.label18:setName("label18");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.rectangle9);
    obj.edit40:setWidth(80);
    obj.edit40:setHeight(30);
    obj.edit40:setLeft(55);
    obj.edit40:setTop(355);
    obj.edit40:setType("number");
    obj.edit40:setField("DanoJutsu3");
    obj.edit40:setName("edit40");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.rectangle9);
    obj.label19:setWidth(60);
    obj.label19:setHeight(40);
    obj.label19:setLeft(340);
    obj.label19:setTop(350);
    obj.label19:setFontFamily("Nyala");
    obj.label19:setFontSize(20);
    obj.label19:setFontColor("cyan");
    obj.label19:setText("Chakra");
    obj.label19:setName("label19");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.rectangle9);
    obj.edit41:setWidth(40);
    obj.edit41:setHeight(30);
    obj.edit41:setLeft(400);
    obj.edit41:setTop(355);
    obj.edit41:setType("number");
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setFontColor("cyan");
    obj.edit41:setField("CustoJutsu3");
    obj.edit41:setName("edit41");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.rectangle9);
    obj.edit42:setWidth(40);
    obj.edit42:setHeight(30);
    obj.edit42:setLeft(390);
    obj.edit42:setTop(380);
    obj.edit42:setVisible(false);
    obj.edit42:setType("number");
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setFontColor("cyan");
    obj.edit42:setField("ChakraPlayer3");
    obj.edit42:setName("edit42");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.rectangle9);
    obj.label20:setWidth(60);
    obj.label20:setHeight(40);
    obj.label20:setLeft(150);
    obj.label20:setTop(350);
    obj.label20:setFontFamily("Nyala");
    obj.label20:setFontSize(20);
    obj.label20:setText("Tipo");
    obj.label20:setName("label20");

    obj.comboBox4 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox4:setParent(obj.rectangle9);
    obj.comboBox4:setLeft(190);
    obj.comboBox4:setTop(363);
    obj.comboBox4:setWidth(140);
    obj.comboBox4:setHeight(18);
    obj.comboBox4:setField("Tipo3");
    obj.comboBox4:setItems({'Tai', 'Nin', 'Gen', 'Elemental', 'DanoArmado', 'Defensivo', 'Selamento', 'Outros','M/Tai', 'M/Nin', 'M/Gen', 'M/Elemental', 'M/DA'});
    obj.comboBox4:setName("comboBox4");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.rectangle9);
    obj.label21:setWidth(150);
    obj.label21:setHeight(40);
    obj.label21:setLeft(10);
    obj.label21:setTop(390);
    obj.label21:setFontFamily("Nyala");
    obj.label21:setFontSize(16);
    obj.label21:setText("Dano Verdadeiro");
    obj.label21:setName("label21");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.rectangle9);
    obj.edit43:setWidth(80);
    obj.edit43:setHeight(20);
    obj.edit43:setLeft(110);
    obj.edit43:setTop(400);
    obj.edit43:setEnabled(false);
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setType("number");
    obj.edit43:setField("DNVerdadeiro3");
    obj.edit43:setName("edit43");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.rectangle9);
    obj.label22:setWidth(170);
    obj.label22:setHeight(40);
    obj.label22:setLeft(280);
    obj.label22:setTop(390);
    obj.label22:setFontFamily("Nyala");
    obj.label22:setFontColor("Crimson");
    obj.label22:setFontSize(16);
    obj.label22:setText("Intensidade");
    obj.label22:setName("label22");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.rectangle9);
    obj.edit44:setWidth(80);
    obj.edit44:setHeight(20);
    obj.edit44:setLeft(350);
    obj.edit44:setTop(400);
    obj.edit44:setEnabled(false);
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setType("number");
    obj.edit44:setFontColor("Crimson");
    obj.edit44:setField("Intensidade3");
    obj.edit44:setName("edit44");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.rectangle9);
    obj.label23:setWidth(70);
    obj.label23:setHeight(40);
    obj.label23:setLeft(195);
    obj.label23:setTop(390);
    obj.label23:setFontFamily("Nyala");
    obj.label23:setFontSize(16);
    obj.label23:setText("Level");
    obj.label23:setName("label23");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.rectangle9);
    obj.edit45:setWidth(30);
    obj.edit45:setHeight(20);
    obj.edit45:setLeft(230);
    obj.edit45:setTop(400);
    obj.edit45:setEnabled(false);
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setType("number");
    obj.edit45:setField("LevelJutsu3");
    obj.edit45:setName("edit45");

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.rectangle9);
    obj.image7:setLeft(20);
    obj.image7:setTop(420);
    obj.image7:setWidth(150);
    obj.image7:setHeight(150);
    obj.image7:setSRC("/imagens/Jutsu.png");
    obj.image7:setName("image7");

    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.rectangle9);
    obj.button11:setLeft(20);
    obj.button11:setTop(430);
    obj.button11:setFontSize(20);
    obj.button11:setOpacity(0.0);
    obj.button11:setHeight(120);
    obj.button11:setWidth(150);
    obj.button11:setText("Usar");
    obj.button11:setFontColor("White");
    obj.button11:setName("button11");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.rectangle9);
    obj.label24:setLeft(180);
    obj.label24:setTop(450);
    obj.label24:setWidth(230);
    obj.label24:setHeight(40);
    obj.label24:setFontFamily("Nyala");
    obj.label24:setFontSize(18);
    obj.label24:setText("Fortificação de jutsu 3D10 e 1d20");
    obj.label24:setName("label24");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.rectangle9);
    obj.edit46:setLeft(180);
    obj.edit46:setTop(500);
    obj.edit46:setWidth(50);
    obj.edit46:setHeight(30);
    obj.edit46:setType("number");
    obj.edit46:setMin(1);
    obj.edit46:setMax(9);
    obj.edit46:setEnabled(false);
    obj.edit46:setVisible(true);
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setField("Upa1d103");
    obj.edit46:setName("edit46");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.rectangle9);
    obj.edit47:setLeft(240);
    obj.edit47:setTop(500);
    obj.edit47:setWidth(50);
    obj.edit47:setHeight(30);
    obj.edit47:setType("number");
    obj.edit47:setMin(1);
    obj.edit47:setMax(9);
    obj.edit47:setEnabled(false);
    obj.edit47:setVisible(true);
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setField("Upa2d103");
    obj.edit47:setName("edit47");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.rectangle9);
    obj.edit48:setLeft(300);
    obj.edit48:setTop(500);
    obj.edit48:setWidth(50);
    obj.edit48:setHeight(30);
    obj.edit48:setType("number");
    obj.edit48:setMin(1);
    obj.edit48:setMax(9);
    obj.edit48:setEnabled(false);
    obj.edit48:setVisible(true);
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setField("Upa3d103");
    obj.edit48:setName("edit48");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.rectangle9);
    obj.rectangle10:setLeft(360);
    obj.rectangle10:setTop(500);
    obj.rectangle10:setWidth(50);
    obj.rectangle10:setHeight(30);
    obj.rectangle10:setColor("black");
    obj.rectangle10:setStrokeColor("red");
    obj.rectangle10:setStrokeSize(3);
    obj.rectangle10:setName("rectangle10");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.rectangle9);
    obj.edit49:setLeft(360);
    obj.edit49:setTop(500);
    obj.edit49:setWidth(50);
    obj.edit49:setHeight(30);
    obj.edit49:setType("number");
    obj.edit49:setMin(1);
    obj.edit49:setMax(18);
    obj.edit49:setEnabled(false);
    obj.edit49:setVisible(true);
    obj.edit49:setTransparent(true);
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setField("Upa1d203");
    obj.edit49:setName("edit49");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.rectangle9);
    obj.edit50:setLeft(180);
    obj.edit50:setTop(450);
    obj.edit50:setWidth(50);
    obj.edit50:setHeight(30);
    obj.edit50:setType("number");
    obj.edit50:setMin(1);
    obj.edit50:setMax(9);
    obj.edit50:setEnabled(true);
    obj.edit50:setVisible(false);
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setField("Upa1d10Soma3");
    obj.edit50:setName("edit50");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.rectangle9);
    obj.edit51:setLeft(240);
    obj.edit51:setTop(450);
    obj.edit51:setWidth(50);
    obj.edit51:setHeight(30);
    obj.edit51:setType("number");
    obj.edit51:setMin(1);
    obj.edit51:setMax(9);
    obj.edit51:setEnabled(true);
    obj.edit51:setVisible(false);
    obj.edit51:setHorzTextAlign("center");
    obj.edit51:setField("Upa2d10Soma3");
    obj.edit51:setName("edit51");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.rectangle9);
    obj.edit52:setLeft(300);
    obj.edit52:setTop(450);
    obj.edit52:setWidth(50);
    obj.edit52:setHeight(30);
    obj.edit52:setType("number");
    obj.edit52:setMin(1);
    obj.edit52:setMax(9);
    obj.edit52:setEnabled(true);
    obj.edit52:setVisible(false);
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setField("Upa3d10Soma3");
    obj.edit52:setName("edit52");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.rectangle9);
    obj.rectangle11:setLeft(360);
    obj.rectangle11:setTop(450);
    obj.rectangle11:setWidth(50);
    obj.rectangle11:setHeight(30);
    obj.rectangle11:setColor("black");
    obj.rectangle11:setStrokeColor("red");
    obj.rectangle11:setVisible(false);
    obj.rectangle11:setStrokeSize(3);
    obj.rectangle11:setName("rectangle11");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.rectangle9);
    obj.edit53:setLeft(360);
    obj.edit53:setTop(450);
    obj.edit53:setWidth(50);
    obj.edit53:setHeight(30);
    obj.edit53:setType("number");
    obj.edit53:setMin(1);
    obj.edit53:setMax(18);
    obj.edit53:setEnabled(true);
    obj.edit53:setVisible(false);
    obj.edit53:setTransparent(true);
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setField("Upa1d20Soma3");
    obj.edit53:setName("edit53");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.rectangle9);
    obj.edit54:setLeft(140);
    obj.edit54:setTop(460);
    obj.edit54:setWidth(50);
    obj.edit54:setHeight(30);
    obj.edit54:setType("number");
    obj.edit54:setMin(1);
    obj.edit54:setMax(9);
    obj.edit54:setEnabled(true);
    obj.edit54:setVisible(false);
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setField("Upa1d10Erro3");
    obj.edit54:setName("edit54");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.rectangle9);
    obj.edit55:setLeft(200);
    obj.edit55:setTop(460);
    obj.edit55:setWidth(50);
    obj.edit55:setHeight(30);
    obj.edit55:setType("number");
    obj.edit55:setMin(1);
    obj.edit55:setMax(9);
    obj.edit55:setEnabled(true);
    obj.edit55:setVisible(false);
    obj.edit55:setHorzTextAlign("center");
    obj.edit55:setField("Upa2d10Erro3");
    obj.edit55:setName("edit55");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.rectangle9);
    obj.edit56:setLeft(260);
    obj.edit56:setTop(460);
    obj.edit56:setWidth(50);
    obj.edit56:setHeight(30);
    obj.edit56:setType("number");
    obj.edit56:setMin(1);
    obj.edit56:setMax(9);
    obj.edit56:setEnabled(true);
    obj.edit56:setVisible(false);
    obj.edit56:setHorzTextAlign("center");
    obj.edit56:setField("Upa3d10Erro3");
    obj.edit56:setName("edit56");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.rectangle9);
    obj.rectangle12:setLeft(320);
    obj.rectangle12:setTop(460);
    obj.rectangle12:setWidth(50);
    obj.rectangle12:setHeight(30);
    obj.rectangle12:setColor("black");
    obj.rectangle12:setStrokeColor("red");
    obj.rectangle12:setVisible(false);
    obj.rectangle12:setStrokeSize(3);
    obj.rectangle12:setName("rectangle12");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.rectangle9);
    obj.edit57:setLeft(320);
    obj.edit57:setTop(460);
    obj.edit57:setWidth(50);
    obj.edit57:setHeight(30);
    obj.edit57:setType("number");
    obj.edit57:setMin(1);
    obj.edit57:setMax(18);
    obj.edit57:setEnabled(true);
    obj.edit57:setVisible(false);
    obj.edit57:setTransparent(true);
    obj.edit57:setHorzTextAlign("center");
    obj.edit57:setField("Upa1d20Erro3");
    obj.edit57:setName("edit57");

    obj.btnUparJutsu3 = GUI.fromHandle(_obj_newObject("button"));
    obj.btnUparJutsu3:setParent(obj.rectangle9);
    obj.btnUparJutsu3:setName("btnUparJutsu3");
    obj.btnUparJutsu3:setLeft(180);
    obj.btnUparJutsu3:setTop(540);
    obj.btnUparJutsu3:setWidth(230);
    obj.btnUparJutsu3:setHeight(30);
    obj.btnUparJutsu3:setFontFamily("Nyala");
    obj.btnUparJutsu3:setFontSize(18);
    obj.btnUparJutsu3:setText("Treinar");


										local function UparJutsu3() 
																			
										self.btnUparJutsu3.visible = false;
										local node = self.ListaJutsus3.node;									
										local mesaDoPersonagem = rrpg.getMesaDe(sheet);	
										
										node.Upa1d103 = node.Upa1d103 or 0;
										node.Upa2d103 = node.Upa2d103 or 0;
										node.Upa3d103 = node.Upa3d103 or 0;
										node.Upa1d203 = node.Upa1d203 or 0;
										
										node.Upa1d10Erro3 = node.Upa1d10Erro3 or 0;
										node.Upa2d10Erro3 = node.Upa2d10Erro3 or 0;
										node.Upa3d10Erro3 = node.Upa3d10Erro3 or 0;
										node.Upa1d20Erro3 = node.Upa1d20Erro3 or 0;
										
										node.Upa1d10Soma3 = node.Upa1d10Soma3 or 0;
										node.Upa2d10Soma3 = node.Upa2d10Soma3 or 0;
										node.Upa3d10Soma3 = node.Upa3d10Soma3 or 0;
										node.Upa1d20Soma3 = node.Upa1d20Soma3 or 0;	
										
										if node.Upa1d103 < 0 then
											node.Upa1d103 = 1;
										end;
										
										if node.Upa2d103 < 0 then
											node.Upa2d103 = 1;
										end;
										
										if node.Upa3d103 < 0 then
											node.Upa3d103 = 1;
										end;
										
										if node.Upa1d203 < 0 then
											node.Upa1d203 = 5;
										end;

										node.Upa1d103 = (tonumber(sheet.Bonus1d10) or 0) + (tonumber(node.Upa1d10Soma3) or 0) + (tonumber(node.Upa1d10Erro3) or 0);
										node.Upa2d103 = (tonumber(sheet.Bonus2d10) or 0) + (tonumber(node.Upa2d10Soma3) or 0) + (tonumber(node.Upa2d10Erro3) or 0);
										node.Upa3d103 = (tonumber(sheet.Bonus3d10) or 0) + (tonumber(node.Upa3d10Soma3) or 0) + (tonumber(node.Upa3d10Erro3) or 0);
										node.Upa1d203 = (tonumber(sheet.Bonus1d20) or 0) + (tonumber(node.Upa1d20Soma3) or 0) + (tonumber(node.Upa1d20Erro3) or 0);
										
										if node.Upa1d103 > 9 then
											node.Upa1d103 = 9;
										end;
										
										if node.Upa2d103 > 9 then
											node.Upa2d103 = 9;
										end;
										
										if node.Upa3d103 > 9 then
											node.Upa3d103 = 9;
										end;
										
										if node.Upa1d203 > 18 then
											node.Upa1d203 = 18;
										end;
										
										if sheet.TreinoON == true then										
											mesaDoPersonagem.chat:rolarDados("1d10", "[§K3]Fortificamento de Jutsu",
											function (rolado)
											if node.DescriJutsu3 == nil then
												showMessage("Falta Descrição do Jutsu ou não irá funcionar");
												self.btnUparJutsu3.visible = true;
											else 
												mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. node.DescriJutsu3);										
													if node.Upa1d103 >= rolado.resultado then
														mesaDoPersonagem.chat:enviarMensagem(".. [§K3] Sucesso");
														mesaDoPersonagem.chat:rolarDados("1d10", "[§K3]Segunda Tentativa",
														function (rolado)	
															if node.Upa2d103 >= rolado.resultado then
																mesaDoPersonagem.chat:enviarMensagem(".. [§K3] Sucesso");
																mesaDoPersonagem.chat:rolarDados("1d10", "[§K3]Terceira Tentativa",
																function (rolado)
																	if node.Upa3d103 >= rolado.resultado then
																		mesaDoPersonagem.chat:enviarMensagem(".. [§K3] Sucesso");
																		mesaDoPersonagem.chat:rolarDados("1d20", "[§K3]Tentativa de Execução Final",
																		function (rolado)
																			if node.Upa1d203 >= rolado.resultado then
																				mesaDoPersonagem.chat:enviarMensagem(".. [§K3] Aprendeu o Jutsu");										
																				mesaDoPersonagem.chat:enviarMensagem("[§I https://ns-rpg.weebly.com/uploads/2/5/1/4/25140777/644651_orig.gif]");
																				node.Upa1d10Erro3 = 0;
																				node.Upa2d10Erro3 = 0;
																				node.Upa3d10Erro3 = 0;
																				node.Upa1d20Erro3 = 0;																			
																				node.LevelJutsu3 = tonumber(node.LevelJutsu3 or 0) + 1;
																				self.btnUparJutsu3.visible = true;	
																			else 
																				mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Ultima");
																				node.Upa1d20Erro3 =  node.Upa1d20Erro3 + 1;
																				node.Upa1d203 = (tonumber(sheet.Bonus1d20) or 0) + (tonumber(node.Upa1d20Soma3) or 0) + (tonumber(node.Upa1d20Erro3) or 0);
																				self.btnUparJutsu3.visible = true;	
																			end;
																		end);	
																	else
																		mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Terceira");
																		node.Upa3d10Erro3 =  node.Upa3d10Erro3 + 1;
																		node.Upa3d103 = (tonumber(sheet.Bonus3d10) or 0) + (tonumber(node.Upa3d10Soma3) or 0) + (tonumber(node.Upa3d10Erro3) or 0);
																		self.btnUparJutsu3.visible = true;																
																	end;
																end);
															else
																mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Segunda");
																node.Upa2d10Erro3 =  node.Upa2d10Erro3 + 1;														
																node.Upa2d103 = (tonumber(sheet.Bonus2d10) or 0) + (tonumber(node.Upa2d10Soma3) or 0) + (tonumber(node.Upa2d10Erro3) or 0);
																self.btnUparJutsu3.visible = true;														
															end;												
														end)
													else
														mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Primeira");
														node.Upa1d10Erro3 =  node.Upa1d10Erro3 + 1;
														node.Upa1d103 = (tonumber(sheet.Bonus1d10) or 0) + (tonumber(node.Upa1d10Soma3) or 0) + (tonumber(node.Upa1d10Erro3) or 0);
														self.btnUparJutsu3.visible = true;
													end;
												end;
											end);
										else
											showMessage("TREINO NÃO HABILITADO PROVAVELMENTE O MESTRE ESTA OFFLINE");
											self.btnUparJutsu3.visible = true;
										end;
									end;	
									


    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.scrollBox2);
    obj.edit58:setLeft(90);
    obj.edit58:setTop(32);
    obj.edit58:setWidth(85);
    obj.edit58:setHeight(18);
    obj.edit58:setField("Nome");
    obj.edit58:setName("edit58");

    obj.comboBox5 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox5:setParent(obj.scrollBox2);
    obj.comboBox5:setLeft(220);
    obj.comboBox5:setTop(32);
    obj.comboBox5:setWidth(95);
    obj.comboBox5:setHeight(18);
    obj.comboBox5:setField("Cla");
    obj.comboBox5:setItems({'Sem clã', 'Aburame', 'Akimichi', 'Fuma', 'Hyuga', 'Inuzuka', 'Jyuin', 'Kaguya', 'Kami', 'Kamizurui', 'Nara', 'Uchiha', 'Uzumaki', 'Yamanaka', 'Rinnegan',
		 '----------', 'Fire', 'Kibaku', 'Kori', 'Mashido', 'Nomade', 'Orega', 'Ray', 'Sabaku', 'Senju', 'Temuri', 'Xaulan', '----------', 'Gote', 'Hanbun', 'Kazumi', 'Kouga', 'Miroku', 'Mitsu', 'Nakamura', 'Natsume', 'Neko', 'Neon', 'Shinkara', '----------'});
    obj.comboBox5:setName("comboBox5");

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.scrollBox2);
    obj.edit59:setLeft(365);
    obj.edit59:setTop(32);
    obj.edit59:setWidth(50);
    obj.edit59:setHeight(18);
    obj.edit59:setField("Idade");
    obj.edit59:setName("edit59");

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.scrollBox2);
    obj.edit60:setLeft(365);
    obj.edit60:setTop(80);
    obj.edit60:setWidth(50);
    obj.edit60:setHeight(18);
    obj.edit60:setVisible(false);
    obj.edit60:setType("number");
    obj.edit60:setMax(40);
    obj.edit60:setField("Idade2");
    obj.edit60:setName("edit60");

    obj.comboBox6 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox6:setParent(obj.scrollBox2);
    obj.comboBox6:setLeft(505);
    obj.comboBox6:setTop(32);
    obj.comboBox6:setWidth(140);
    obj.comboBox6:setHeight(18);
    obj.comboBox6:setField("Graduacao");
    obj.comboBox6:setItems({'Academico', 'Genin', 'Chunin', 'Jounin', 'Anbu', 'AnbuNucleo', 'Organização', 'GDE', 'Concelheiro', 'Kage'});
    obj.comboBox6:setName("comboBox6");

    obj.edit61 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.scrollBox2);
    obj.edit61:setLeft(220);
    obj.edit61:setTop(52);
    obj.edit61:setWidth(85);
    obj.edit61:setHeight(18);
    obj.edit61:setType("number");
    obj.edit61:setEnabled(true);
    obj.edit61:setField("Yen");
    obj.edit61:setName("edit61");

    obj.edit62 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.scrollBox2);
    obj.edit62:setLeft(90);
    obj.edit62:setTop(52);
    obj.edit62:setWidth(85);
    obj.edit62:setHeight(18);
    obj.edit62:setField("Elemento");
    obj.edit62:setName("edit62");

    obj.edit63 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.scrollBox2);
    obj.edit63:setLeft(130);
    obj.edit63:setTop(115);
    obj.edit63:setWidth(85);
    obj.edit63:setHeight(18);
    obj.edit63:setType("number");
    obj.edit63:setField("Forca");
    obj.edit63:setName("edit63");

    obj.edit64 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.scrollBox2);
    obj.edit64:setLeft(130);
    obj.edit64:setTop(135);
    obj.edit64:setWidth(85);
    obj.edit64:setHeight(18);
    obj.edit64:setType("number");
    obj.edit64:setField("Inteligencia");
    obj.edit64:setName("edit64");

    obj.edit65 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.scrollBox2);
    obj.edit65:setLeft(130);
    obj.edit65:setTop(155);
    obj.edit65:setWidth(85);
    obj.edit65:setHeight(18);
    obj.edit65:setType("number");
    obj.edit65:setField("Sabedoria");
    obj.edit65:setName("edit65");

    obj.edit66 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.scrollBox2);
    obj.edit66:setLeft(130);
    obj.edit66:setTop(175);
    obj.edit66:setWidth(85);
    obj.edit66:setHeight(18);
    obj.edit66:setType("number");
    obj.edit66:setField("Habilidade");
    obj.edit66:setName("edit66");

    obj.edit67 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.scrollBox2);
    obj.edit67:setLeft(130);
    obj.edit67:setTop(195);
    obj.edit67:setWidth(85);
    obj.edit67:setHeight(18);
    obj.edit67:setType("number");
    obj.edit67:setField("Resistencia");
    obj.edit67:setName("edit67");

    obj.edit68 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.scrollBox2);
    obj.edit68:setLeft(370);
    obj.edit68:setTop(115);
    obj.edit68:setWidth(85);
    obj.edit68:setEnabled(false);
    obj.edit68:setHeight(18);
    obj.edit68:setType("float");
    obj.edit68:setField("TaiTotal");
    obj.edit68:setName("edit68");

    obj.edit69 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.scrollBox2);
    obj.edit69:setLeft(370);
    obj.edit69:setTop(135);
    obj.edit69:setWidth(85);
    obj.edit69:setEnabled(false);
    obj.edit69:setHeight(18);
    obj.edit69:setType("float");
    obj.edit69:setField("NinTotal");
    obj.edit69:setName("edit69");

    obj.edit70 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.scrollBox2);
    obj.edit70:setLeft(370);
    obj.edit70:setTop(155);
    obj.edit70:setWidth(85);
    obj.edit70:setEnabled(false);
    obj.edit70:setHeight(18);
    obj.edit70:setType("float");
    obj.edit70:setField("GenTotal");
    obj.edit70:setName("edit70");

    obj.edit71 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit71:setParent(obj.scrollBox2);
    obj.edit71:setLeft(370);
    obj.edit71:setTop(175);
    obj.edit71:setWidth(85);
    obj.edit71:setEnabled(false);
    obj.edit71:setHeight(18);
    obj.edit71:setType("float");
    obj.edit71:setField("DATotal");
    obj.edit71:setName("edit71");

    obj.edit72 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit72:setParent(obj.scrollBox2);
    obj.edit72:setLeft(370);
    obj.edit72:setTop(195);
    obj.edit72:setWidth(85);
    obj.edit72:setEnabled(false);
    obj.edit72:setHeight(18);
    obj.edit72:setType("float");
    obj.edit72:setField("EleTotal");
    obj.edit72:setName("edit72");

    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.scrollBox2);
    obj.button12:setLeft(540);
    obj.button12:setTop(100);
    obj.button12:setWidth(30);
    obj.button12:setHeight(30);
    obj.button12:setFontColor("Red");
    obj.button12:setFontFamily("Nyala");
    obj.button12:setFontSize(30);
    obj.button12:setVisible(false);
    obj.button12:setEnabled(true);
    obj.button12:setText("«");
    obj.button12:setName("button12");

    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.scrollBox2);
    obj.button13:setLeft(625);
    obj.button13:setTop(100);
    obj.button13:setWidth(30);
    obj.button13:setHeight(30);
    obj.button13:setFontColor("Red");
    obj.button13:setFontFamily("Nyala");
    obj.button13:setVisible(false);
    obj.button13:setFontSize(30);
    obj.button13:setText("»");
    obj.button13:setName("button13");

    obj.edit73 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit73:setParent(obj.scrollBox2);
    obj.edit73:setLeft(570);
    obj.edit73:setTop(100);
    obj.edit73:setWidth(55);
    obj.edit73:setHeight(30);
    obj.edit73:setHorzTextAlign("center");
    obj.edit73:setFontColor("Red");
    obj.edit73:setFontFamily("Nyala");
    obj.edit73:setFontSize(25);
    obj.edit73:setEnabled(true);
    obj.edit73:setType("number");
    obj.edit73:setField("Level");
    obj.edit73:setName("edit73");

    obj.edit74 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit74:setParent(obj.scrollBox2);
    obj.edit74:setLeft(535);
    obj.edit74:setTop(132);
    obj.edit74:setWidth(55);
    obj.edit74:setHeight(18);
    obj.edit74:setType("float");
    obj.edit74:setField("Exp");
    obj.edit74:setName("edit74");

    obj.edit75 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit75:setParent(obj.scrollBox2);
    obj.edit75:setLeft(610);
    obj.edit75:setTop(132);
    obj.edit75:setWidth(55);
    obj.edit75:setHeight(18);
    obj.edit75:setEnabled(false);
    obj.edit75:setType("float");
    obj.edit75:setField("ExpTotal");
    obj.edit75:setName("edit75");

    obj.edit76 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit76:setParent(obj.scrollBox2);
    obj.edit76:setLeft(90);
    obj.edit76:setTop(276);
    obj.edit76:setWidth(85);
    obj.edit76:setHeight(18);
    obj.edit76:setType("float");
    obj.edit76:setEnabled(false);
    obj.edit76:setHorzTextAlign("center");
    obj.edit76:setFontColor("Red");
    obj.edit76:setField("HP");
    obj.edit76:setName("edit76");

    obj.edit77 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit77:setParent(obj.scrollBox2);
    obj.edit77:setLeft(90);
    obj.edit77:setTop(296);
    obj.edit77:setWidth(85);
    obj.edit77:setHeight(18);
    obj.edit77:setType("float");
    obj.edit77:setEnabled(false);
    obj.edit77:setHorzTextAlign("center");
    obj.edit77:setFontColor("Cyan");
    obj.edit77:setField("Chakra");
    obj.edit77:setName("edit77");

    obj.edit78 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit78:setParent(obj.scrollBox2);
    obj.edit78:setLeft(90);
    obj.edit78:setTop(316);
    obj.edit78:setWidth(85);
    obj.edit78:setHeight(18);
    obj.edit78:setType("float");
    obj.edit78:setEnabled(false);
    obj.edit78:setHorzTextAlign("center");
    obj.edit78:setFontColor("#FFD700");
    obj.edit78:setField("Reiatsu");
    obj.edit78:setName("edit78");

    obj.edit79 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit79:setParent(obj.scrollBox2);
    obj.edit79:setLeft(90);
    obj.edit79:setTop(336);
    obj.edit79:setWidth(85);
    obj.edit79:setHeight(18);
    obj.edit79:setType("float");
    obj.edit79:setEnabled(false);
    obj.edit79:setHorzTextAlign("center");
    obj.edit79:setField("Outros");
    obj.edit79:setName("edit79");

    obj.checkBox1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.scrollBox2);
    obj.checkBox1:setLeft(800);
    obj.checkBox1:setTop(20);
    obj.checkBox1:setFontSize(18);
    obj.checkBox1:setText("TREINO ON ?");
    obj.checkBox1:setVisible(false);
    obj.checkBox1:setField("TreinoON");
    obj.checkBox1:setName("checkBox1");

    obj.edit80 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit80:setParent(obj.scrollBox2);
    obj.edit80:setLeft(190);
    obj.edit80:setTop(276);
    obj.edit80:setWidth(85);
    obj.edit80:setHeight(18);
    obj.edit80:setEnabled(false);
    obj.edit80:setType("float");
    obj.edit80:setHorzTextAlign("center");
    obj.edit80:setFontColor("Red");
    obj.edit80:setField("HPTotal");
    obj.edit80:setName("edit80");

    obj.button14 = GUI.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.scrollBox2);
    obj.button14:setLeft(300);
    obj.button14:setTop(276);
    obj.button14:setWidth(40);
    obj.button14:setHeight(20);
    obj.button14:setFontColor("red");
    obj.button14:setText("❤");
    obj.button14:setName("button14");

    obj.edit81 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit81:setParent(obj.scrollBox2);
    obj.edit81:setLeft(190);
    obj.edit81:setTop(296);
    obj.edit81:setWidth(85);
    obj.edit81:setHeight(18);
    obj.edit81:setEnabled(false);
    obj.edit81:setType("float");
    obj.edit81:setHorzTextAlign("center");
    obj.edit81:setFontColor("cyan");
    obj.edit81:setField("ChakraTotal");
    obj.edit81:setName("edit81");

    obj.button15 = GUI.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj.scrollBox2);
    obj.button15:setLeft(300);
    obj.button15:setTop(296);
    obj.button15:setWidth(40);
    obj.button15:setHeight(20);
    obj.button15:setFontColor("Cyan");
    obj.button15:setText("🌀");
    obj.button15:setName("button15");

    obj.edit82 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit82:setParent(obj.scrollBox2);
    obj.edit82:setLeft(190);
    obj.edit82:setTop(316);
    obj.edit82:setWidth(85);
    obj.edit82:setHeight(18);
    obj.edit82:setEnabled(false);
    obj.edit82:setType("float");
    obj.edit82:setHorzTextAlign("center");
    obj.edit82:setFontColor("#FFD700");
    obj.edit82:setField("ReiatsuTotal");
    obj.edit82:setName("edit82");

    obj.button16 = GUI.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj.scrollBox2);
    obj.button16:setLeft(300);
    obj.button16:setTop(316);
    obj.button16:setWidth(40);
    obj.button16:setHeight(20);
    obj.button16:setFontColor("Yellow");
    obj.button16:setText("⚡");
    obj.button16:setName("button16");

    obj.edit83 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit83:setParent(obj.scrollBox2);
    obj.edit83:setLeft(190);
    obj.edit83:setTop(336);
    obj.edit83:setWidth(85);
    obj.edit83:setHeight(18);
    obj.edit83:setEnabled(false);
    obj.edit83:setType("float");
    obj.edit83:setHorzTextAlign("center");
    obj.edit83:setField("OutrosTotal");
    obj.edit83:setName("edit83");

    obj.comboBox7 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox7:setParent(obj.scrollBox2);
    obj.comboBox7:setLeft(280);
    obj.comboBox7:setTop(336);
    obj.comboBox7:setWidth(110);
    obj.comboBox7:setHeight(18);
    obj.comboBox7:setField("TipoOutro");
    obj.comboBox7:setItems({'ChakraBiju', 'ChakraBranco', 'ChakraPreto', 'Hadou', 'HadouNegro', 'ChakraNatural', 'ChakraRoxo'});
    obj.comboBox7:setName("comboBox7");

    obj.button17 = GUI.fromHandle(_obj_newObject("button"));
    obj.button17:setParent(obj.scrollBox2);
    obj.button17:setLeft(490);
    obj.button17:setTop(155);
    obj.button17:setWidth(145);
    obj.button17:setHeight(60);
    obj.button17:setName("button17");

    obj.PopTransformation = GUI.fromHandle(_obj_newObject("popup"));
    obj.PopTransformation:setParent(obj.scrollBox2);
    obj.PopTransformation:setName("PopTransformation");
    obj.PopTransformation:setVisible(false);
    obj.PopTransformation:setLeft(1);
    obj.PopTransformation:setTop(10);
    obj.PopTransformation:setWidth(1020);
    obj.PopTransformation:setHeight(580);

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.PopTransformation);
    obj.image8:setLeft(10);
    obj.image8:setTop(10);
    obj.image8:setWidth(1000);
    obj.image8:setHeight(563);
    obj.image8:setSRC("/imagens/8.png");
    obj.image8:setName("image8");

    obj.transformation = GUI.fromHandle(_obj_newObject("image"));
    obj.transformation:setParent(obj.scrollBox2);
    obj.transformation:setName("transformation");
    obj.transformation:setLeft(490);
    obj.transformation:setTop(155);
    obj.transformation:setWidth(145);
    obj.transformation:setHeight(60);
    obj.transformation:setSRC("/imagens/Transform1.png");

    obj.transformationDisable = GUI.fromHandle(_obj_newObject("image"));
    obj.transformationDisable:setParent(obj.scrollBox2);
    obj.transformationDisable:setName("transformationDisable");
    obj.transformationDisable:setLeft(490);
    obj.transformationDisable:setTop(155);
    obj.transformationDisable:setWidth(145);
    obj.transformationDisable:setVisible(false);
    obj.transformationDisable:setHeight(60);
    obj.transformationDisable:setSRC("/imagens/Transform2.png");

    obj.ControlaTrans = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.ControlaTrans:setParent(obj.scrollBox2);
    obj.ControlaTrans:setName("ControlaTrans");
    obj.ControlaTrans:setLeft(490);
    obj.ControlaTrans:setTop(220);
    obj.ControlaTrans:setText("Ativar Transformação");
    obj.ControlaTrans:setField("Trasnformado");

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.scrollBox2);
    obj.image9:setField("imagemDoPersonagem");
    obj.image9:setEditable(true);
    obj.image9:setStyle("autoFit");
    obj.image9:setLeft(404);
    obj.image9:setTop(410);
    obj.image9:setWidth(302);
    obj.image9:setHeight(255);
    obj.image9:setName("image9");

    obj.button18 = GUI.fromHandle(_obj_newObject("button"));
    obj.button18:setParent(obj.scrollBox2);
    obj.button18:setLeft(502);
    obj.button18:setTop(270);
    obj.button18:setWidth(105);
    obj.button18:setHeight(85);
    obj.button18:setOpacity(1.0);
    obj.button18:setVisible(false);
    obj.button18:setText("Calculo");
    obj.button18:setName("button18");

    obj.POPCALCULO = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPCALCULO:setParent(obj.scrollBox2);
    obj.POPCALCULO:setName("POPCALCULO");
    obj.POPCALCULO:setVisible(false);
    obj.POPCALCULO:setLeft(1);
    obj.POPCALCULO:setTop(40);
    obj.POPCALCULO:setWidth(820);
    obj.POPCALCULO:setHeight(620);

    obj.image10 = GUI.fromHandle(_obj_newObject("image"));
    obj.image10:setParent(obj.POPCALCULO);
    obj.image10:setLeft(10);
    obj.image10:setTop(10);
    obj.image10:setWidth(800);
    obj.image10:setHeight(600);
    obj.image10:setSRC("/imagens/CALCULO.png");
    obj.image10:setName("image10");

    obj.edit84 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit84:setParent(obj.POPCALCULO);
    obj.edit84:setLeft(150);
    obj.edit84:setTop(35);
    obj.edit84:setWidth(85);
    obj.edit84:setHeight(18);
    obj.edit84:setEnabled(false);
    obj.edit84:setType("float");
    obj.edit84:setField("CTai");
    obj.edit84:setName("edit84");

    obj.edit85 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit85:setParent(obj.POPCALCULO);
    obj.edit85:setLeft(150);
    obj.edit85:setTop(58);
    obj.edit85:setWidth(85);
    obj.edit85:setHeight(18);
    obj.edit85:setEnabled(false);
    obj.edit85:setType("float");
    obj.edit85:setField("CNin");
    obj.edit85:setName("edit85");

    obj.edit86 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit86:setParent(obj.POPCALCULO);
    obj.edit86:setLeft(150);
    obj.edit86:setTop(81);
    obj.edit86:setWidth(85);
    obj.edit86:setHeight(18);
    obj.edit86:setEnabled(false);
    obj.edit86:setType("float");
    obj.edit86:setField("CGen");
    obj.edit86:setName("edit86");

    obj.edit87 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit87:setParent(obj.POPCALCULO);
    obj.edit87:setLeft(150);
    obj.edit87:setTop(102);
    obj.edit87:setWidth(85);
    obj.edit87:setHeight(18);
    obj.edit87:setEnabled(false);
    obj.edit87:setType("float");
    obj.edit87:setField("CDA");
    obj.edit87:setName("edit87");

    obj.edit88 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit88:setParent(obj.POPCALCULO);
    obj.edit88:setLeft(150);
    obj.edit88:setTop(122);
    obj.edit88:setWidth(85);
    obj.edit88:setHeight(18);
    obj.edit88:setEnabled(false);
    obj.edit88:setType("float");
    obj.edit88:setField("CDE");
    obj.edit88:setName("edit88");

    obj.edit89 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit89:setParent(obj.POPCALCULO);
    obj.edit89:setLeft(150);
    obj.edit89:setTop(145);
    obj.edit89:setWidth(85);
    obj.edit89:setHeight(18);
    obj.edit89:setEnabled(false);
    obj.edit89:setType("float");
    obj.edit89:setField("CHP");
    obj.edit89:setName("edit89");

    obj.edit90 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit90:setParent(obj.POPCALCULO);
    obj.edit90:setLeft(150);
    obj.edit90:setTop(168);
    obj.edit90:setWidth(85);
    obj.edit90:setHeight(18);
    obj.edit90:setEnabled(false);
    obj.edit90:setType("float");
    obj.edit90:setField("CChakra");
    obj.edit90:setName("edit90");

    obj.edit91 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit91:setParent(obj.POPCALCULO);
    obj.edit91:setLeft(280);
    obj.edit91:setTop(35);
    obj.edit91:setWidth(85);
    obj.edit91:setHeight(18);
    obj.edit91:setEnabled(false);
    obj.edit91:setType("float");
    obj.edit91:setField("Taijutsu");
    obj.edit91:setName("edit91");

    obj.edit92 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit92:setParent(obj.POPCALCULO);
    obj.edit92:setLeft(280);
    obj.edit92:setTop(58);
    obj.edit92:setWidth(85);
    obj.edit92:setHeight(18);
    obj.edit92:setEnabled(false);
    obj.edit92:setType("float");
    obj.edit92:setField("Ninjutsu");
    obj.edit92:setName("edit92");

    obj.edit93 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit93:setParent(obj.POPCALCULO);
    obj.edit93:setLeft(280);
    obj.edit93:setTop(81);
    obj.edit93:setWidth(85);
    obj.edit93:setHeight(18);
    obj.edit93:setEnabled(false);
    obj.edit93:setType("float");
    obj.edit93:setField("Genjutsu");
    obj.edit93:setName("edit93");

    obj.edit94 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit94:setParent(obj.POPCALCULO);
    obj.edit94:setLeft(280);
    obj.edit94:setTop(102);
    obj.edit94:setWidth(85);
    obj.edit94:setHeight(18);
    obj.edit94:setEnabled(false);
    obj.edit94:setType("float");
    obj.edit94:setField("DanoArmado");
    obj.edit94:setName("edit94");

    obj.edit95 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit95:setParent(obj.POPCALCULO);
    obj.edit95:setLeft(280);
    obj.edit95:setTop(122);
    obj.edit95:setWidth(85);
    obj.edit95:setHeight(18);
    obj.edit95:setEnabled(false);
    obj.edit95:setType("float");
    obj.edit95:setField("Elemental1");
    obj.edit95:setName("edit95");

    obj.edit96 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit96:setParent(obj.POPCALCULO);
    obj.edit96:setLeft(300);
    obj.edit96:setTop(145);
    obj.edit96:setWidth(85);
    obj.edit96:setHeight(18);
    obj.edit96:setType("float");
    obj.edit96:setEnabled(true);
    obj.edit96:setField("GHP");
    obj.edit96:setName("edit96");

    obj.edit97 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit97:setParent(obj.POPCALCULO);
    obj.edit97:setLeft(300);
    obj.edit97:setTop(168);
    obj.edit97:setWidth(85);
    obj.edit97:setHeight(18);
    obj.edit97:setEnabled(false);
    obj.edit97:setType("float");
    obj.edit97:setField("GChakra");
    obj.edit97:setName("edit97");

    obj.edit98 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit98:setParent(obj.POPCALCULO);
    obj.edit98:setLeft(150);
    obj.edit98:setTop(210);
    obj.edit98:setWidth(85);
    obj.edit98:setHeight(18);
    obj.edit98:setEnabled(false);
    obj.edit98:setType("float");
    obj.edit98:setField("CAT");
    obj.edit98:setName("edit98");

    obj.edit99 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit99:setParent(obj.POPCALCULO);
    obj.edit99:setLeft(150);
    obj.edit99:setTop(230);
    obj.edit99:setWidth(85);
    obj.edit99:setHeight(18);
    obj.edit99:setEnabled(false);
    obj.edit99:setType("float");
    obj.edit99:setField("CAN");
    obj.edit99:setName("edit99");

    obj.edit100 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit100:setParent(obj.POPCALCULO);
    obj.edit100:setLeft(150);
    obj.edit100:setTop(250);
    obj.edit100:setWidth(85);
    obj.edit100:setHeight(18);
    obj.edit100:setEnabled(false);
    obj.edit100:setType("float");
    obj.edit100:setField("CAG");
    obj.edit100:setName("edit100");

    obj.edit101 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit101:setParent(obj.POPCALCULO);
    obj.edit101:setLeft(150);
    obj.edit101:setTop(300);
    obj.edit101:setWidth(85);
    obj.edit101:setHeight(18);
    obj.edit101:setEnabled(false);
    obj.edit101:setType("float");
    obj.edit101:setField("CEsq");
    obj.edit101:setName("edit101");

    obj.edit102 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit102:setParent(obj.POPCALCULO);
    obj.edit102:setLeft(150);
    obj.edit102:setTop(320);
    obj.edit102:setWidth(85);
    obj.edit102:setHeight(18);
    obj.edit102:setEnabled(false);
    obj.edit102:setType("float");
    obj.edit102:setField("CBloq");
    obj.edit102:setName("edit102");

    obj.edit103 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit103:setParent(obj.POPCALCULO);
    obj.edit103:setLeft(150);
    obj.edit103:setTop(360);
    obj.edit103:setWidth(85);
    obj.edit103:setHeight(18);
    obj.edit103:setEnabled(false);
    obj.edit103:setType("float");
    obj.edit103:setField("CCRT");
    obj.edit103:setName("edit103");

    obj.edit104 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit104:setParent(obj.POPCALCULO);
    obj.edit104:setLeft(150);
    obj.edit104:setTop(380);
    obj.edit104:setWidth(85);
    obj.edit104:setHeight(18);
    obj.edit104:setEnabled(false);
    obj.edit104:setType("float");
    obj.edit104:setField("CCRN");
    obj.edit104:setName("edit104");

    obj.edit105 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit105:setParent(obj.POPCALCULO);
    obj.edit105:setLeft(150);
    obj.edit105:setTop(400);
    obj.edit105:setWidth(85);
    obj.edit105:setHeight(18);
    obj.edit105:setEnabled(false);
    obj.edit105:setType("float");
    obj.edit105:setField("CCRG");
    obj.edit105:setName("edit105");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.POPCALCULO);
    obj.dataLink1:setFields({'Level', 'Exp'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.POPCALCULO);
    obj.dataLink2:setFields({'Cla'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.POPCALCULO);
    obj.dataLink3:setFields({'Forca', 'Inteligencia', 'Sabedoria', 'Elemental', 'Habilidade', 'Resistencia', 'TaiTotal', 'NinTotal', 'GenTotal', 'EleTotal', 'DATotal', 'Level', 
		'ArmaDT', 'ArmaDN', 'ArmaDG', 'ArmaDE', 'ArmaDA', 'AcessorioDT', 'AcessorioDN', 'AcessorioDG', 'AcessorioDE', 'DTaijutsu', 'DNinjutsu', 'DGenjutsu', 'DDA', 'DDE', 'Graduacao'
		,'Nome', 'Elemento', 'Cla', 'Idade', 'HP', 'HPTotal', 'Chakra' ,'ChakraTotal', 'Reiatsu', 'ReiatsuTotal', 'Outros', 'OutrosTotal', 'DanoJutsu', 'DanoJutsu2', 'DanoJutsu3', 
		'Intensidade', 'Intensidade2','Intensidade3' ,'CustoJutsu' ,'CustoJutsu2' ,'CustoJutsu3' ,'LevelJutsu' ,'LevelJutsu2' ,'LevelJutsu3' ,'DanoKunai' ,'DanoShuriken' ,'DanoKunaiGigante' ,'DanoShurikenFuuma' ,'Marionete'
		,'PB' ,'GinsoExplosivo' ,'Veneno' ,'Bandagem' ,'BF','DTaijutsu','DNinjutsu','DGenjutsu','DDA','DDE','DHP','DChakra','DReiatsu','DOutro','DAcertoTai','DAcertoNin','DAcertoGen','DBloqueio','DCriticalTai','DCriticalNin','DCriticalGen'
		,'ChakraBiju','ChakraBranco','ChakraPreto','Hadou','HadouNegro','ChakraNatural','ChakraRoxo','IntensidadeP1','IntensidadeP2','IntensidadeP3','CustoPerga1','CustoPerga2','CustoPerga3','DEDC'
		,'Taijutsu','Ninjutsu','Genjutsu','DanoArmado','Elemental1','TipoOutro','TipoItens','Tipo','Tipo2','Tipo3'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.POPCALCULO);
    obj.dataLink4:setFields({'TipoOutro', 'ChakraBiju', 'ChakraBranco', 'ChakraPreto', 'ChakraNatural', 'ChakraRoxo', 'Hadou', 'HadouNegro'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.POPCALCULO);
    obj.dataLink5:setFields({'Chakra', 'ChakraTotal', 'Idade', 'TipoOutro'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.POPCALCULO);
    obj.dataLink6:setFields({'Graduacao', 'AcertoTaiTotal', 'AcertoNinTotal', 'AcertoGenTotal', 'EsquivaTotal','BloqueioTotal', 'TurnoTotal', 'CRTaiTotal', 'CRNinTotal', 'CRGenTotal', 'GAcertoTai', 'GAcertoNin', 'GAcertoGen', 'GEsquiva', 'GBloqueio', 'GCRTai', 'GCRNin', 'GCRGen', 'GTurno'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.POPCALCULO);
    obj.dataLink7:setFields({'Forca', 'Inteligencia', 'Sabedoria', 'Elemental', 'Habilidade', 'Resistencia', 'TaiTotal', 'NinTotal', 'GenTotal', 'EleTotal', 'DATotal', 'Level', 
		'ArmaDT', 'ArmaDN', 'ArmaDG', 'ArmaDE', 'ArmaDA', 'AcessorioDT', 'AcessorioDN', 'AcessorioDG', 'AcessorioDE', 'DTaijutsu', 'DNinjutsu', 'DGenjutsu', 'DDA', 'DDE', 'Graduacao'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.POPCALCULO);
    obj.dataLink8:setFields({'Forca', 'Inteligencia', 'Sabedoria', 'Elemental', 'Habilidade', 'Resistencia', 'Level', 'Taijutsu', 'Ninjutsu', 'Genjutsu', 'Elemental1', 'DanoArmado',
		'ArmaDT', 'ArmaDN', 'ArmaDG', 'ArmaDE', 'ArmaDA', 'AcessorioDT', 'AcessorioDN', 'AcessorioDG', 'AcessorioDE', 'DTaijutsu', 'DNinjutsu', 'DGenjutsu', 'DDA', 'DDE', 'Graduacao'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.POPCALCULO);
    obj.dataLink9:setFields({'Chakra', 'ChakraTotal', 'ArmaHP','ArmaChakra', 'BandanaChakra', 'Resistencia', 
		'BandanaHP', 'ColeteChakra', 'ColeteHP', 'AcessorioChakra', 'AcessorioHP', 'DHP', 'DChakra', 'CHP', 'GHP'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.POPCALCULO);
    obj.dataLink10:setFields({'HP', 'Chakra', 'ChakraTotal', 'ArmaHP','ArmaChakra', 'BandanaChakra',
		'BandanaHP', 'ColeteChakra', 'ColeteHP', 'AcessorioChakra', 'AcessorioHP', 'DHP', 'DChakra', 'CChakra', 'GChakra', 'Idade'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.POPCALCULO);
    obj.dataLink11:setFields({'TaiTotal', 'NinTotal', 'GenTotal', 'DATotal','EleTotal', 'Level',
		'DReiatsu', 'AcessorioReiatsu'});
    obj.dataLink11:setName("dataLink11");

    obj.button19 = GUI.fromHandle(_obj_newObject("button"));
    obj.button19:setParent(obj.scrollBox2);
    obj.button19:setLeft(32);
    obj.button19:setTop(550);
    obj.button19:setWidth(105);
    obj.button19:setHeight(85);
    obj.button19:setOpacity(0.1);
    obj.button19:setText("");
    obj.button19:setName("button19");

    obj.POPKunai = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPKunai:setParent(obj.scrollBox2);
    obj.POPKunai:setName("POPKunai");
    obj.POPKunai:setVisible(false);
    obj.POPKunai:setLeft(1);
    obj.POPKunai:setTop(40);
    obj.POPKunai:setWidth(550);
    obj.POPKunai:setHeight(550);

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.POPKunai);
    obj.label25:setWidth(120);
    obj.label25:setHeight(40);
    obj.label25:setLeft(280);
    obj.label25:setTop(10);
    obj.label25:setFontColor("Red");
    obj.label25:setFontFamily("Nyala");
    obj.label25:setFontSize(20);
    obj.label25:setText("Danos");
    obj.label25:setName("label25");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.POPKunai);
    obj.label26:setWidth(120);
    obj.label26:setHeight(40);
    obj.label26:setLeft(420);
    obj.label26:setTop(10);
    obj.label26:setFontColor("Red");
    obj.label26:setFontFamily("Nyala");
    obj.label26:setFontSize(20);
    obj.label26:setText("Quantidade");
    obj.label26:setName("label26");

    obj.image11 = GUI.fromHandle(_obj_newObject("image"));
    obj.image11:setParent(obj.POPKunai);
    obj.image11:setLeft(10);
    obj.image11:setTop(30);
    obj.image11:setWidth(100);
    obj.image11:setHeight(130);
    obj.image11:setSRC("/imagens/kunai.png");
    obj.image11:setName("image11");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.POPKunai);
    obj.label27:setWidth(120);
    obj.label27:setHeight(40);
    obj.label27:setLeft(130);
    obj.label27:setTop(60);
    obj.label27:setFontFamily("Nyala");
    obj.label27:setFontSize(20);
    obj.label27:setText("Dano Kunai");
    obj.label27:setName("label27");

    obj.edit106 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit106:setParent(obj.POPKunai);
    obj.edit106:setWidth(100);
    obj.edit106:setHeight(30);
    obj.edit106:setLeft(260);
    obj.edit106:setTop(65);
    obj.edit106:setEnabled(false);
    obj.edit106:setField("DanoKunai");
    obj.edit106:setName("edit106");

    obj.image12 = GUI.fromHandle(_obj_newObject("image"));
    obj.image12:setParent(obj.POPKunai);
    obj.image12:setLeft(10);
    obj.image12:setTop(130);
    obj.image12:setWidth(100);
    obj.image12:setHeight(100);
    obj.image12:setSRC("/imagens/shuriken.png");
    obj.image12:setName("image12");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.POPKunai);
    obj.label28:setWidth(120);
    obj.label28:setHeight(40);
    obj.label28:setLeft(130);
    obj.label28:setTop(150);
    obj.label28:setFontFamily("Nyala");
    obj.label28:setFontSize(20);
    obj.label28:setText("Dano Shuriken");
    obj.label28:setName("label28");

    obj.edit107 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit107:setParent(obj.POPKunai);
    obj.edit107:setWidth(100);
    obj.edit107:setHeight(30);
    obj.edit107:setLeft(260);
    obj.edit107:setTop(155);
    obj.edit107:setEnabled(false);
    obj.edit107:setField("DanoShuriken");
    obj.edit107:setName("edit107");

    obj.image13 = GUI.fromHandle(_obj_newObject("image"));
    obj.image13:setParent(obj.POPKunai);
    obj.image13:setLeft(10);
    obj.image13:setTop(230);
    obj.image13:setWidth(100);
    obj.image13:setHeight(100);
    obj.image13:setSRC("/imagens/SFuuma.png");
    obj.image13:setName("image13");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.POPKunai);
    obj.label29:setWidth(120);
    obj.label29:setHeight(40);
    obj.label29:setLeft(130);
    obj.label29:setTop(250);
    obj.label29:setFontFamily("Nyala");
    obj.label29:setFontSize(20);
    obj.label29:setText("Shuriken Fuuma");
    obj.label29:setName("label29");

    obj.edit108 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit108:setParent(obj.POPKunai);
    obj.edit108:setWidth(100);
    obj.edit108:setHeight(30);
    obj.edit108:setLeft(260);
    obj.edit108:setTop(255);
    obj.edit108:setEnabled(false);
    obj.edit108:setField("DanoShurikenFuuma");
    obj.edit108:setName("edit108");

    obj.image14 = GUI.fromHandle(_obj_newObject("image"));
    obj.image14:setParent(obj.POPKunai);
    obj.image14:setLeft(10);
    obj.image14:setTop(330);
    obj.image14:setWidth(100);
    obj.image14:setHeight(100);
    obj.image14:setSRC("/imagens/Kgigante.png");
    obj.image14:setName("image14");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.POPKunai);
    obj.label30:setWidth(120);
    obj.label30:setHeight(40);
    obj.label30:setLeft(130);
    obj.label30:setTop(350);
    obj.label30:setFontFamily("Nyala");
    obj.label30:setFontSize(20);
    obj.label30:setText("Kunai Gigante");
    obj.label30:setName("label30");

    obj.edit109 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit109:setParent(obj.POPKunai);
    obj.edit109:setWidth(100);
    obj.edit109:setHeight(30);
    obj.edit109:setLeft(260);
    obj.edit109:setTop(355);
    obj.edit109:setEnabled(false);
    obj.edit109:setField("DanoKunaiGigante");
    obj.edit109:setName("edit109");

    obj.image15 = GUI.fromHandle(_obj_newObject("image"));
    obj.image15:setParent(obj.POPKunai);
    obj.image15:setLeft(10);
    obj.image15:setTop(430);
    obj.image15:setWidth(100);
    obj.image15:setHeight(100);
    obj.image15:setSRC("/imagens/Senbon.png");
    obj.image15:setName("image15");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.POPKunai);
    obj.label31:setWidth(120);
    obj.label31:setHeight(40);
    obj.label31:setLeft(130);
    obj.label31:setTop(450);
    obj.label31:setFontFamily("Nyala");
    obj.label31:setFontSize(20);
    obj.label31:setText("Senbon");
    obj.label31:setName("label31");

    obj.edit110 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit110:setParent(obj.POPKunai);
    obj.edit110:setWidth(100);
    obj.edit110:setHeight(30);
    obj.edit110:setLeft(260);
    obj.edit110:setTop(455);
    obj.edit110:setEnabled(false);
    obj.edit110:setField("Senbon");
    obj.edit110:setName("edit110");

    obj.edit111 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit111:setParent(obj.POPKunai);
    obj.edit111:setWidth(100);
    obj.edit111:setHeight(30);
    obj.edit111:setLeft(410);
    obj.edit111:setTop(65);
    obj.edit111:setEnabled(false);
    obj.edit111:setField("KunaiLimite");
    obj.edit111:setName("edit111");

    obj.edit112 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit112:setParent(obj.POPKunai);
    obj.edit112:setWidth(100);
    obj.edit112:setHeight(30);
    obj.edit112:setLeft(410);
    obj.edit112:setTop(155);
    obj.edit112:setEnabled(false);
    obj.edit112:setField("ShurikenLimite");
    obj.edit112:setName("edit112");

    obj.edit113 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit113:setParent(obj.POPKunai);
    obj.edit113:setWidth(100);
    obj.edit113:setHeight(30);
    obj.edit113:setLeft(410);
    obj.edit113:setTop(255);
    obj.edit113:setEnabled(false);
    obj.edit113:setField("SFuumaLimite");
    obj.edit113:setName("edit113");

    obj.edit114 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit114:setParent(obj.POPKunai);
    obj.edit114:setWidth(100);
    obj.edit114:setHeight(30);
    obj.edit114:setLeft(410);
    obj.edit114:setTop(355);
    obj.edit114:setEnabled(false);
    obj.edit114:setField("KGiganteLimite");
    obj.edit114:setName("edit114");

    obj.edit115 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit115:setParent(obj.POPKunai);
    obj.edit115:setWidth(100);
    obj.edit115:setHeight(30);
    obj.edit115:setLeft(410);
    obj.edit115:setTop(455);
    obj.edit115:setEnabled(false);
    obj.edit115:setField("SenbonLimite");
    obj.edit115:setName("edit115");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.POPKunai);
    obj.dataLink12:setFields({'Forca', 'Inteligencia', 'Sabedoria', 'Habilidade', 'Resistencia'});
    obj.dataLink12:setName("dataLink12");

    obj.button20 = GUI.fromHandle(_obj_newObject("button"));
    obj.button20:setParent(obj.scrollBox2);
    obj.button20:setLeft(140);
    obj.button20:setTop(550);
    obj.button20:setWidth(105);
    obj.button20:setHeight(85);
    obj.button20:setOpacity(0.1);
    obj.button20:setText("");
    obj.button20:setName("button20");

    obj.POPPB = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPPB:setParent(obj.scrollBox2);
    obj.POPPB:setName("POPPB");
    obj.POPPB:setVisible(false);
    obj.POPPB:setLeft(1);
    obj.POPPB:setTop(40);
    obj.POPPB:setWidth(550);
    obj.POPPB:setHeight(550);

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.POPPB);
    obj.label32:setWidth(120);
    obj.label32:setHeight(40);
    obj.label32:setLeft(280);
    obj.label32:setTop(10);
    obj.label32:setFontColor("Red");
    obj.label32:setFontFamily("Nyala");
    obj.label32:setFontSize(20);
    obj.label32:setText("Danos");
    obj.label32:setName("label32");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.POPPB);
    obj.label33:setWidth(120);
    obj.label33:setHeight(40);
    obj.label33:setLeft(420);
    obj.label33:setTop(10);
    obj.label33:setFontColor("Red");
    obj.label33:setFontFamily("Nyala");
    obj.label33:setFontSize(20);
    obj.label33:setText("Quantidade");
    obj.label33:setName("label33");

    obj.image16 = GUI.fromHandle(_obj_newObject("image"));
    obj.image16:setParent(obj.POPPB);
    obj.image16:setLeft(10);
    obj.image16:setTop(30);
    obj.image16:setWidth(100);
    obj.image16:setHeight(130);
    obj.image16:setSRC("/imagens/pb.png");
    obj.image16:setName("image16");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.POPPB);
    obj.label34:setWidth(120);
    obj.label34:setHeight(40);
    obj.label34:setLeft(130);
    obj.label34:setTop(60);
    obj.label34:setFontFamily("Nyala");
    obj.label34:setFontSize(20);
    obj.label34:setText("Papel Bomba");
    obj.label34:setName("label34");

    obj.edit116 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit116:setParent(obj.POPPB);
    obj.edit116:setWidth(100);
    obj.edit116:setHeight(30);
    obj.edit116:setLeft(260);
    obj.edit116:setTop(65);
    obj.edit116:setEnabled(false);
    obj.edit116:setField("PB");
    obj.edit116:setName("edit116");

    obj.image17 = GUI.fromHandle(_obj_newObject("image"));
    obj.image17:setParent(obj.POPPB);
    obj.image17:setLeft(0);
    obj.image17:setTop(120);
    obj.image17:setWidth(130);
    obj.image17:setHeight(130);
    obj.image17:setSRC("/imagens/BE.png");
    obj.image17:setName("image17");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.POPPB);
    obj.label35:setWidth(120);
    obj.label35:setHeight(40);
    obj.label35:setLeft(130);
    obj.label35:setTop(150);
    obj.label35:setFontFamily("Nyala");
    obj.label35:setFontSize(20);
    obj.label35:setText("Ginso Explosivo");
    obj.label35:setName("label35");

    obj.edit117 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit117:setParent(obj.POPPB);
    obj.edit117:setWidth(100);
    obj.edit117:setHeight(30);
    obj.edit117:setLeft(260);
    obj.edit117:setTop(155);
    obj.edit117:setEnabled(false);
    obj.edit117:setField("GinsoExplosivo");
    obj.edit117:setName("edit117");

    obj.image18 = GUI.fromHandle(_obj_newObject("image"));
    obj.image18:setParent(obj.POPPB);
    obj.image18:setLeft(20);
    obj.image18:setTop(240);
    obj.image18:setWidth(100);
    obj.image18:setHeight(100);
    obj.image18:setSRC("/imagens/veneno.png");
    obj.image18:setName("image18");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.POPPB);
    obj.label36:setWidth(120);
    obj.label36:setHeight(40);
    obj.label36:setLeft(130);
    obj.label36:setTop(250);
    obj.label36:setFontFamily("Nyala");
    obj.label36:setFontSize(20);
    obj.label36:setText("Veneno");
    obj.label36:setName("label36");

    obj.edit118 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit118:setParent(obj.POPPB);
    obj.edit118:setWidth(100);
    obj.edit118:setHeight(30);
    obj.edit118:setLeft(260);
    obj.edit118:setTop(255);
    obj.edit118:setEnabled(false);
    obj.edit118:setField("Veneno");
    obj.edit118:setName("edit118");

    obj.image19 = GUI.fromHandle(_obj_newObject("image"));
    obj.image19:setParent(obj.POPPB);
    obj.image19:setLeft(10);
    obj.image19:setTop(330);
    obj.image19:setWidth(100);
    obj.image19:setHeight(100);
    obj.image19:setSRC("/imagens/bandagem.png");
    obj.image19:setName("image19");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.POPPB);
    obj.label37:setWidth(120);
    obj.label37:setHeight(40);
    obj.label37:setLeft(130);
    obj.label37:setTop(350);
    obj.label37:setFontFamily("Nyala");
    obj.label37:setFontSize(20);
    obj.label37:setText("Bandagem");
    obj.label37:setName("label37");

    obj.edit119 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit119:setParent(obj.POPPB);
    obj.edit119:setWidth(100);
    obj.edit119:setHeight(30);
    obj.edit119:setLeft(260);
    obj.edit119:setTop(355);
    obj.edit119:setEnabled(false);
    obj.edit119:setField("Bandagem");
    obj.edit119:setName("edit119");

    obj.image20 = GUI.fromHandle(_obj_newObject("image"));
    obj.image20:setParent(obj.POPPB);
    obj.image20:setLeft(10);
    obj.image20:setTop(430);
    obj.image20:setWidth(100);
    obj.image20:setHeight(100);
    obj.image20:setSRC("/imagens/bombaf.png");
    obj.image20:setName("image20");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.POPPB);
    obj.label38:setWidth(120);
    obj.label38:setHeight(40);
    obj.label38:setLeft(130);
    obj.label38:setTop(450);
    obj.label38:setFontFamily("Nyala");
    obj.label38:setFontSize(20);
    obj.label38:setText("Bomba Fumaça");
    obj.label38:setName("label38");

    obj.edit120 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit120:setParent(obj.POPPB);
    obj.edit120:setWidth(100);
    obj.edit120:setHeight(30);
    obj.edit120:setLeft(260);
    obj.edit120:setTop(455);
    obj.edit120:setEnabled(false);
    obj.edit120:setField("BF");
    obj.edit120:setName("edit120");

    obj.edit121 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit121:setParent(obj.POPPB);
    obj.edit121:setWidth(100);
    obj.edit121:setHeight(30);
    obj.edit121:setLeft(410);
    obj.edit121:setTop(65);
    obj.edit121:setEnabled(false);
    obj.edit121:setField("PBombaLimite");
    obj.edit121:setName("edit121");

    obj.edit122 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit122:setParent(obj.POPPB);
    obj.edit122:setWidth(100);
    obj.edit122:setHeight(30);
    obj.edit122:setLeft(410);
    obj.edit122:setTop(155);
    obj.edit122:setEnabled(false);
    obj.edit122:setField("GExplosivoLimite");
    obj.edit122:setName("edit122");

    obj.edit123 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit123:setParent(obj.POPPB);
    obj.edit123:setWidth(100);
    obj.edit123:setHeight(30);
    obj.edit123:setLeft(410);
    obj.edit123:setTop(255);
    obj.edit123:setEnabled(false);
    obj.edit123:setField("VenenoLimite");
    obj.edit123:setName("edit123");

    obj.edit124 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit124:setParent(obj.POPPB);
    obj.edit124:setWidth(100);
    obj.edit124:setHeight(30);
    obj.edit124:setLeft(410);
    obj.edit124:setTop(355);
    obj.edit124:setEnabled(false);
    obj.edit124:setField("BandagemLimite");
    obj.edit124:setName("edit124");

    obj.edit125 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit125:setParent(obj.POPPB);
    obj.edit125:setWidth(100);
    obj.edit125:setHeight(30);
    obj.edit125:setLeft(410);
    obj.edit125:setTop(455);
    obj.edit125:setEnabled(false);
    obj.edit125:setField("BombaFumacaLimite");
    obj.edit125:setName("edit125");

    obj.button21 = GUI.fromHandle(_obj_newObject("button"));
    obj.button21:setParent(obj.scrollBox2);
    obj.button21:setLeft(250);
    obj.button21:setTop(550);
    obj.button21:setWidth(105);
    obj.button21:setHeight(85);
    obj.button21:setOpacity(0.1);
    obj.button21:setText("");
    obj.button21:setName("button21");

    obj.POPDiverso = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPDiverso:setParent(obj.tab1);
    obj.POPDiverso:setName("POPDiverso");
    obj.POPDiverso:setVisible(false);
    obj.POPDiverso:setLeft(1);
    obj.POPDiverso:setTop(40);
    obj.POPDiverso:setWidth(1130);
    obj.POPDiverso:setHeight(400);

    obj.image21 = GUI.fromHandle(_obj_newObject("image"));
    obj.image21:setParent(obj.POPDiverso);
    obj.image21:setLeft(1);
    obj.image21:setTop(1);
    obj.image21:setWidth(1110);
    obj.image21:setHeight(350);
    obj.image21:setSRC("/imagens/6.png");
    obj.image21:setName("image21");

    obj.edit126 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit126:setParent(obj.POPDiverso);
    obj.edit126:setWidth(80);
    obj.edit126:setHeight(20);
    obj.edit126:setLeft(220);
    obj.edit126:setTop(73);
    obj.edit126:setType("number");
    obj.edit126:setField("DTaijutsu");
    obj.edit126:setName("edit126");

    obj.edit127 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit127:setParent(obj.POPDiverso);
    obj.edit127:setWidth(80);
    obj.edit127:setHeight(20);
    obj.edit127:setLeft(220);
    obj.edit127:setTop(95);
    obj.edit127:setType("number");
    obj.edit127:setField("DNinjutsu");
    obj.edit127:setName("edit127");

    obj.edit128 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit128:setParent(obj.POPDiverso);
    obj.edit128:setWidth(80);
    obj.edit128:setHeight(20);
    obj.edit128:setLeft(220);
    obj.edit128:setTop(117);
    obj.edit128:setType("number");
    obj.edit128:setField("DGenjutsu");
    obj.edit128:setName("edit128");

    obj.edit129 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit129:setParent(obj.POPDiverso);
    obj.edit129:setWidth(80);
    obj.edit129:setHeight(20);
    obj.edit129:setLeft(220);
    obj.edit129:setTop(139);
    obj.edit129:setType("number");
    obj.edit129:setField("DDA");
    obj.edit129:setName("edit129");

    obj.edit130 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit130:setParent(obj.POPDiverso);
    obj.edit130:setWidth(80);
    obj.edit130:setHeight(20);
    obj.edit130:setLeft(220);
    obj.edit130:setTop(161);
    obj.edit130:setType("number");
    obj.edit130:setField("DDE");
    obj.edit130:setName("edit130");

    obj.edit131 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit131:setParent(obj.POPDiverso);
    obj.edit131:setWidth(80);
    obj.edit131:setHeight(20);
    obj.edit131:setLeft(220);
    obj.edit131:setTop(183);
    obj.edit131:setType("number");
    obj.edit131:setField("DHP");
    obj.edit131:setName("edit131");

    obj.edit132 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit132:setParent(obj.POPDiverso);
    obj.edit132:setWidth(80);
    obj.edit132:setHeight(20);
    obj.edit132:setLeft(220);
    obj.edit132:setTop(205);
    obj.edit132:setType("number");
    obj.edit132:setField("DChakra");
    obj.edit132:setName("edit132");

    obj.edit133 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit133:setParent(obj.POPDiverso);
    obj.edit133:setWidth(80);
    obj.edit133:setHeight(20);
    obj.edit133:setLeft(220);
    obj.edit133:setTop(227);
    obj.edit133:setType("number");
    obj.edit133:setField("DReiatsu");
    obj.edit133:setName("edit133");

    obj.edit134 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit134:setParent(obj.POPDiverso);
    obj.edit134:setWidth(80);
    obj.edit134:setHeight(20);
    obj.edit134:setLeft(220);
    obj.edit134:setTop(249);
    obj.edit134:setType("number");
    obj.edit134:setField("DOutro");
    obj.edit134:setName("edit134");

    obj.edit135 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit135:setParent(obj.POPDiverso);
    obj.edit135:setWidth(80);
    obj.edit135:setHeight(20);
    obj.edit135:setLeft(480);
    obj.edit135:setTop(73);
    obj.edit135:setType("number");
    obj.edit135:setField("DAcertoTai");
    obj.edit135:setName("edit135");

    obj.edit136 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit136:setParent(obj.POPDiverso);
    obj.edit136:setWidth(80);
    obj.edit136:setHeight(20);
    obj.edit136:setLeft(480);
    obj.edit136:setTop(95);
    obj.edit136:setType("number");
    obj.edit136:setField("DAcertoNin");
    obj.edit136:setName("edit136");

    obj.edit137 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit137:setParent(obj.POPDiverso);
    obj.edit137:setWidth(80);
    obj.edit137:setHeight(20);
    obj.edit137:setLeft(480);
    obj.edit137:setTop(117);
    obj.edit137:setType("number");
    obj.edit137:setField("DAcertoGen");
    obj.edit137:setName("edit137");

    obj.edit138 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit138:setParent(obj.POPDiverso);
    obj.edit138:setWidth(80);
    obj.edit138:setHeight(20);
    obj.edit138:setLeft(480);
    obj.edit138:setTop(139);
    obj.edit138:setType("number");
    obj.edit138:setField("DBloqueio");
    obj.edit138:setName("edit138");

    obj.edit139 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit139:setParent(obj.POPDiverso);
    obj.edit139:setWidth(80);
    obj.edit139:setHeight(20);
    obj.edit139:setLeft(480);
    obj.edit139:setTop(161);
    obj.edit139:setType("number");
    obj.edit139:setField("DEsquiva");
    obj.edit139:setName("edit139");

    obj.edit140 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit140:setParent(obj.POPDiverso);
    obj.edit140:setWidth(80);
    obj.edit140:setHeight(20);
    obj.edit140:setLeft(480);
    obj.edit140:setTop(183);
    obj.edit140:setType("number");
    obj.edit140:setField("DCriticalTai");
    obj.edit140:setName("edit140");

    obj.edit141 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit141:setParent(obj.POPDiverso);
    obj.edit141:setWidth(80);
    obj.edit141:setHeight(20);
    obj.edit141:setLeft(480);
    obj.edit141:setTop(205);
    obj.edit141:setType("number");
    obj.edit141:setField("DCriticalNin");
    obj.edit141:setName("edit141");

    obj.edit142 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit142:setParent(obj.POPDiverso);
    obj.edit142:setWidth(80);
    obj.edit142:setHeight(20);
    obj.edit142:setLeft(480);
    obj.edit142:setTop(227);
    obj.edit142:setType("number");
    obj.edit142:setField("DCriticalGen");
    obj.edit142:setName("edit142");

    obj.edit143 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit143:setParent(obj.POPDiverso);
    obj.edit143:setWidth(80);
    obj.edit143:setHeight(20);
    obj.edit143:setLeft(740);
    obj.edit143:setTop(73);
    obj.edit143:setType("number");
    obj.edit143:setField("ChakraBiju");
    obj.edit143:setName("edit143");

    obj.edit144 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit144:setParent(obj.POPDiverso);
    obj.edit144:setWidth(80);
    obj.edit144:setHeight(20);
    obj.edit144:setLeft(740);
    obj.edit144:setTop(95);
    obj.edit144:setType("number");
    obj.edit144:setField("ChakraBranco");
    obj.edit144:setName("edit144");

    obj.edit145 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit145:setParent(obj.POPDiverso);
    obj.edit145:setWidth(80);
    obj.edit145:setHeight(20);
    obj.edit145:setLeft(740);
    obj.edit145:setTop(117);
    obj.edit145:setType("number");
    obj.edit145:setField("ChakraPreto");
    obj.edit145:setName("edit145");

    obj.edit146 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit146:setParent(obj.POPDiverso);
    obj.edit146:setWidth(80);
    obj.edit146:setHeight(20);
    obj.edit146:setLeft(740);
    obj.edit146:setTop(139);
    obj.edit146:setType("number");
    obj.edit146:setField("Hadou");
    obj.edit146:setName("edit146");

    obj.edit147 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit147:setParent(obj.POPDiverso);
    obj.edit147:setWidth(80);
    obj.edit147:setHeight(20);
    obj.edit147:setLeft(740);
    obj.edit147:setTop(161);
    obj.edit147:setType("number");
    obj.edit147:setField("HadouNegro");
    obj.edit147:setName("edit147");

    obj.edit148 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit148:setParent(obj.POPDiverso);
    obj.edit148:setWidth(80);
    obj.edit148:setHeight(20);
    obj.edit148:setLeft(740);
    obj.edit148:setTop(183);
    obj.edit148:setEnabled(false);
    obj.edit148:setField("ChakraNatural");
    obj.edit148:setName("edit148");

    obj.edit149 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit149:setParent(obj.POPDiverso);
    obj.edit149:setWidth(80);
    obj.edit149:setHeight(20);
    obj.edit149:setLeft(740);
    obj.edit149:setTop(205);
    obj.edit149:setType("number");
    obj.edit149:setField("ChakraRoxo");
    obj.edit149:setName("edit149");

    obj.button22 = GUI.fromHandle(_obj_newObject("button"));
    obj.button22:setParent(obj.POPDiverso);
    obj.button22:setLeft(845);
    obj.button22:setTop(105);
    obj.button22:setWidth(70);
    obj.button22:setHeight(80);
    obj.button22:setOpacity(0.1);
    obj.button22:setText("");
    obj.button22:setName("button22");

    obj.POPPergaminho1 = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPPergaminho1:setParent(obj.POPDiverso);
    obj.POPPergaminho1:setName("POPPergaminho1");
    obj.POPPergaminho1:setVisible(false);
    obj.POPPergaminho1:setLeft(1);
    obj.POPPergaminho1:setTop(40);
    obj.POPPergaminho1:setWidth(450);
    obj.POPPergaminho1:setHeight(520);

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.POPPergaminho1);
    obj.label39:setWidth(120);
    obj.label39:setHeight(40);
    obj.label39:setLeft(10);
    obj.label39:setTop(10);
    obj.label39:setFontFamily("Nyala");
    obj.label39:setFontSize(20);
    obj.label39:setText("Selado :");
    obj.label39:setName("label39");

    obj.edit150 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit150:setParent(obj.POPPergaminho1);
    obj.edit150:setWidth(310);
    obj.edit150:setHeight(30);
    obj.edit150:setLeft(100);
    obj.edit150:setTop(15);
    obj.edit150:setField("NomePergaminho1");
    obj.edit150:setName("edit150");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.POPPergaminho1);
    obj.textEditor4:setLeft(10);
    obj.textEditor4:setTop(60);
    obj.textEditor4:setWidth(430);
    obj.textEditor4:setHeight(280);
    obj.textEditor4:setField("DescriPergaminho1");
    obj.textEditor4:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor4:setName("textEditor4");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.POPPergaminho1);
    obj.label40:setWidth(120);
    obj.label40:setHeight(40);
    obj.label40:setLeft(10);
    obj.label40:setTop(350);
    obj.label40:setFontFamily("Nyala");
    obj.label40:setFontSize(20);
    obj.label40:setText("Intensidade");
    obj.label40:setName("label40");

    obj.edit151 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit151:setParent(obj.POPPergaminho1);
    obj.edit151:setWidth(120);
    obj.edit151:setHeight(30);
    obj.edit151:setLeft(100);
    obj.edit151:setTop(355);
    obj.edit151:setType("number");
    obj.edit151:setEnabled(false);
    obj.edit151:setField("IntensidadeP1");
    obj.edit151:setName("edit151");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.POPPergaminho1);
    obj.label41:setWidth(60);
    obj.label41:setHeight(40);
    obj.label41:setLeft(340);
    obj.label41:setTop(350);
    obj.label41:setFontFamily("Nyala");
    obj.label41:setFontSize(20);
    obj.label41:setText("Chakra");
    obj.label41:setName("label41");

    obj.edit152 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit152:setParent(obj.POPPergaminho1);
    obj.edit152:setWidth(40);
    obj.edit152:setHeight(30);
    obj.edit152:setLeft(400);
    obj.edit152:setTop(355);
    obj.edit152:setType("number");
    obj.edit152:setField("CustoPerga1");
    obj.edit152:setName("edit152");

    obj.edit153 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit153:setParent(obj.POPPergaminho1);
    obj.edit153:setWidth(40);
    obj.edit153:setHeight(30);
    obj.edit153:setLeft(390);
    obj.edit153:setTop(380);
    obj.edit153:setVisible(false);
    obj.edit153:setType("number");
    obj.edit153:setField("ChakraPerga1");
    obj.edit153:setName("edit153");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.POPPergaminho1);
    obj.label42:setWidth(60);
    obj.label42:setHeight(40);
    obj.label42:setLeft(230);
    obj.label42:setTop(350);
    obj.label42:setFontFamily("Nyala");
    obj.label42:setFontSize(20);
    obj.label42:setText("Tipo");
    obj.label42:setName("label42");

    obj.comboBox8 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox8:setParent(obj.POPPergaminho1);
    obj.comboBox8:setLeft(275);
    obj.comboBox8:setTop(363);
    obj.comboBox8:setWidth(50);
    obj.comboBox8:setHeight(18);
    obj.comboBox8:setField("TipoPergaminho1");
    obj.comboBox8:setItems({'X', 'SS', 'S'});
    obj.comboBox8:setName("comboBox8");

    obj.image22 = GUI.fromHandle(_obj_newObject("image"));
    obj.image22:setParent(obj.POPPergaminho1);
    obj.image22:setLeft(20);
    obj.image22:setTop(380);
    obj.image22:setOpacity(1.0);
    obj.image22:setWidth(150);
    obj.image22:setHeight(150);
    obj.image22:setSRC("/imagens/Pergamin.png");
    obj.image22:setName("image22");

    obj.button23 = GUI.fromHandle(_obj_newObject("button"));
    obj.button23:setParent(obj.POPPergaminho1);
    obj.button23:setLeft(20);
    obj.button23:setTop(390);
    obj.button23:setFontSize(20);
    obj.button23:setOpacity(0.0);
    obj.button23:setHeight(120);
    obj.button23:setWidth(150);
    obj.button23:setText("");
    obj.button23:setFontColor("White");
    obj.button23:setName("button23");

 
						local function Pergaminho1() 
						   
						local mesaDoPersonagem = rrpg.getMesaDe(sheet); 

						mesaDoPersonagem.chat:rolarDados("1d100", "[§K3]Uso do Pergaminho Grande",
							function (rolado)
							
								mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. sheet.DescriPergaminho1);
								local mesa = Firecast.getMesaDe(sheet); 
								local CustoPerga1 = mesa.meuJogador:getBarValue(2);
								CustoPerga1 = CustoPerga1 - (tonumber(sheet.CustoPerga1) or 0);
								mesa.meuJogador:requestSetBarValue(2, CustoPerga1);
						
						end);
						end;			
					


    obj.button24 = GUI.fromHandle(_obj_newObject("button"));
    obj.button24:setParent(obj.POPDiverso);
    obj.button24:setLeft(917);
    obj.button24:setTop(105);
    obj.button24:setWidth(65);
    obj.button24:setHeight(80);
    obj.button24:setOpacity(0.1);
    obj.button24:setText("");
    obj.button24:setName("button24");

    obj.POPPergaminho2 = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPPergaminho2:setParent(obj.POPDiverso);
    obj.POPPergaminho2:setName("POPPergaminho2");
    obj.POPPergaminho2:setVisible(false);
    obj.POPPergaminho2:setLeft(1);
    obj.POPPergaminho2:setTop(40);
    obj.POPPergaminho2:setWidth(450);
    obj.POPPergaminho2:setHeight(520);

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.POPPergaminho2);
    obj.label43:setWidth(120);
    obj.label43:setHeight(40);
    obj.label43:setLeft(10);
    obj.label43:setTop(10);
    obj.label43:setFontFamily("Nyala");
    obj.label43:setFontSize(20);
    obj.label43:setText("Selado :");
    obj.label43:setName("label43");

    obj.edit154 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit154:setParent(obj.POPPergaminho2);
    obj.edit154:setWidth(310);
    obj.edit154:setHeight(30);
    obj.edit154:setLeft(100);
    obj.edit154:setTop(15);
    obj.edit154:setField("NomePergaminho2");
    obj.edit154:setName("edit154");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.POPPergaminho2);
    obj.textEditor5:setLeft(10);
    obj.textEditor5:setTop(60);
    obj.textEditor5:setWidth(430);
    obj.textEditor5:setHeight(280);
    obj.textEditor5:setField("DescriPergaminho2");
    obj.textEditor5:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor5:setName("textEditor5");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.POPPergaminho2);
    obj.label44:setWidth(120);
    obj.label44:setHeight(40);
    obj.label44:setLeft(10);
    obj.label44:setTop(350);
    obj.label44:setFontFamily("Nyala");
    obj.label44:setFontSize(20);
    obj.label44:setText("Intensidade");
    obj.label44:setName("label44");

    obj.edit155 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit155:setParent(obj.POPPergaminho2);
    obj.edit155:setWidth(120);
    obj.edit155:setHeight(30);
    obj.edit155:setLeft(100);
    obj.edit155:setTop(355);
    obj.edit155:setEnabled(false);
    obj.edit155:setType("number");
    obj.edit155:setField("IntensidadeP2");
    obj.edit155:setName("edit155");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.POPPergaminho2);
    obj.label45:setWidth(60);
    obj.label45:setHeight(40);
    obj.label45:setLeft(340);
    obj.label45:setTop(350);
    obj.label45:setFontFamily("Nyala");
    obj.label45:setFontSize(20);
    obj.label45:setText("Chakra");
    obj.label45:setName("label45");

    obj.edit156 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit156:setParent(obj.POPPergaminho2);
    obj.edit156:setWidth(40);
    obj.edit156:setHeight(30);
    obj.edit156:setLeft(400);
    obj.edit156:setTop(355);
    obj.edit156:setType("number");
    obj.edit156:setField("CustoPerga2");
    obj.edit156:setName("edit156");

    obj.edit157 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit157:setParent(obj.POPPergaminho2);
    obj.edit157:setWidth(40);
    obj.edit157:setHeight(30);
    obj.edit157:setLeft(390);
    obj.edit157:setTop(380);
    obj.edit157:setVisible(false);
    obj.edit157:setType("number");
    obj.edit157:setField("ChakraPerga2");
    obj.edit157:setName("edit157");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.POPPergaminho2);
    obj.label46:setWidth(60);
    obj.label46:setHeight(40);
    obj.label46:setLeft(230);
    obj.label46:setTop(350);
    obj.label46:setFontFamily("Nyala");
    obj.label46:setFontSize(20);
    obj.label46:setText("Tipo");
    obj.label46:setName("label46");

    obj.comboBox9 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox9:setParent(obj.POPPergaminho2);
    obj.comboBox9:setLeft(275);
    obj.comboBox9:setTop(363);
    obj.comboBox9:setWidth(50);
    obj.comboBox9:setHeight(18);
    obj.comboBox9:setField("TipoPergaminho2");
    obj.comboBox9:setItems({'A', 'B', 'C', 'D', 'E'});
    obj.comboBox9:setName("comboBox9");

    obj.image23 = GUI.fromHandle(_obj_newObject("image"));
    obj.image23:setParent(obj.POPPergaminho2);
    obj.image23:setLeft(20);
    obj.image23:setTop(380);
    obj.image23:setOpacity(1.0);
    obj.image23:setWidth(150);
    obj.image23:setHeight(150);
    obj.image23:setSRC("/imagens/Pergamin.png");
    obj.image23:setName("image23");

    obj.button25 = GUI.fromHandle(_obj_newObject("button"));
    obj.button25:setParent(obj.POPPergaminho2);
    obj.button25:setLeft(20);
    obj.button25:setTop(390);
    obj.button25:setFontSize(20);
    obj.button25:setOpacity(0.0);
    obj.button25:setHeight(120);
    obj.button25:setWidth(150);
    obj.button25:setText("");
    obj.button25:setFontColor("White");
    obj.button25:setName("button25");

 
							local function Pergaminho2() 
								   
							local mesaDoPersonagem = rrpg.getMesaDe(sheet); 
				
							mesaDoPersonagem.chat:rolarDados("1d100", "[§K3]Uso do Pergaminho Medio",
								function (rolado)
								
									mesaDoPersonagem.chat:enviarMensagem(".. [§K1]".. sheet.DescriPergaminho2);
									local mesa = Firecast.getMesaDe(sheet); 
									local CustoPerga2 = mesa.meuJogador:getBarValue(2);
									CustoPerga2 = CustoPerga2 - (tonumber(sheet.CustoPerga2) or 0);
									mesa.meuJogador:requestSetBarValue(2, CustoPerga2);
							
							end);
							end;
						


    obj.button26 = GUI.fromHandle(_obj_newObject("button"));
    obj.button26:setParent(obj.POPDiverso);
    obj.button26:setLeft(984);
    obj.button26:setTop(105);
    obj.button26:setWidth(65);
    obj.button26:setHeight(80);
    obj.button26:setOpacity(0.1);
    obj.button26:setText("");
    obj.button26:setName("button26");

    obj.POPPergaminho3 = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPPergaminho3:setParent(obj.POPDiverso);
    obj.POPPergaminho3:setName("POPPergaminho3");
    obj.POPPergaminho3:setVisible(false);
    obj.POPPergaminho3:setLeft(1);
    obj.POPPergaminho3:setTop(40);
    obj.POPPergaminho3:setWidth(450);
    obj.POPPergaminho3:setHeight(520);

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.POPPergaminho3);
    obj.label47:setWidth(120);
    obj.label47:setHeight(40);
    obj.label47:setLeft(10);
    obj.label47:setTop(10);
    obj.label47:setFontFamily("Nyala");
    obj.label47:setFontSize(20);
    obj.label47:setText("Selado :");
    obj.label47:setName("label47");

    obj.edit158 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit158:setParent(obj.POPPergaminho3);
    obj.edit158:setWidth(310);
    obj.edit158:setHeight(30);
    obj.edit158:setLeft(100);
    obj.edit158:setTop(15);
    obj.edit158:setField("NomePergaminho3");
    obj.edit158:setName("edit158");

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.POPPergaminho3);
    obj.textEditor6:setLeft(10);
    obj.textEditor6:setTop(60);
    obj.textEditor6:setWidth(430);
    obj.textEditor6:setHeight(280);
    obj.textEditor6:setField("DescriPergaminho3");
    obj.textEditor6:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor6:setName("textEditor6");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.POPPergaminho3);
    obj.label48:setWidth(120);
    obj.label48:setHeight(40);
    obj.label48:setLeft(10);
    obj.label48:setTop(350);
    obj.label48:setFontFamily("Nyala");
    obj.label48:setFontSize(20);
    obj.label48:setText("Intensidade");
    obj.label48:setName("label48");

    obj.edit159 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit159:setParent(obj.POPPergaminho3);
    obj.edit159:setWidth(120);
    obj.edit159:setHeight(30);
    obj.edit159:setLeft(100);
    obj.edit159:setTop(355);
    obj.edit159:setEnabled(false);
    obj.edit159:setType("number");
    obj.edit159:setField("IntensidadeP3");
    obj.edit159:setName("edit159");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.POPPergaminho3);
    obj.label49:setWidth(60);
    obj.label49:setHeight(40);
    obj.label49:setLeft(340);
    obj.label49:setTop(350);
    obj.label49:setFontFamily("Nyala");
    obj.label49:setFontSize(20);
    obj.label49:setText("Chakra");
    obj.label49:setName("label49");

    obj.edit160 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit160:setParent(obj.POPPergaminho3);
    obj.edit160:setWidth(40);
    obj.edit160:setHeight(30);
    obj.edit160:setLeft(400);
    obj.edit160:setTop(355);
    obj.edit160:setType("number");
    obj.edit160:setField("CustoPerga3");
    obj.edit160:setName("edit160");

    obj.edit161 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit161:setParent(obj.POPPergaminho3);
    obj.edit161:setWidth(40);
    obj.edit161:setHeight(30);
    obj.edit161:setLeft(390);
    obj.edit161:setTop(380);
    obj.edit161:setVisible(false);
    obj.edit161:setType("number");
    obj.edit161:setField("ChakraPerga3");
    obj.edit161:setName("edit161");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.POPPergaminho3);
    obj.label50:setWidth(60);
    obj.label50:setHeight(40);
    obj.label50:setLeft(230);
    obj.label50:setTop(350);
    obj.label50:setFontFamily("Nyala");
    obj.label50:setFontSize(20);
    obj.label50:setText("Tipo");
    obj.label50:setName("label50");

    obj.comboBox10 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox10:setParent(obj.POPPergaminho3);
    obj.comboBox10:setLeft(275);
    obj.comboBox10:setTop(363);
    obj.comboBox10:setWidth(50);
    obj.comboBox10:setHeight(18);
    obj.comboBox10:setField("TipoPergaminho3");
    obj.comboBox10:setItems({'X','SS','S','A','B','C','D','E','Outros'});
    obj.comboBox10:setName("comboBox10");

    obj.image24 = GUI.fromHandle(_obj_newObject("image"));
    obj.image24:setParent(obj.POPPergaminho3);
    obj.image24:setLeft(20);
    obj.image24:setTop(380);
    obj.image24:setOpacity(1.0);
    obj.image24:setWidth(150);
    obj.image24:setHeight(150);
    obj.image24:setSRC("/imagens/Pergamin.png");
    obj.image24:setName("image24");

    obj.button27 = GUI.fromHandle(_obj_newObject("button"));
    obj.button27:setParent(obj.POPPergaminho3);
    obj.button27:setLeft(20);
    obj.button27:setTop(390);
    obj.button27:setFontSize(20);
    obj.button27:setOpacity(0.0);
    obj.button27:setHeight(120);
    obj.button27:setWidth(150);
    obj.button27:setText("");
    obj.button27:setFontColor("White");
    obj.button27:setName("button27");

 
							local function Pergaminho3() 
								   
							local mesaDoPersonagem = rrpg.getMesaDe(sheet); 
				
							mesaDoPersonagem.chat:rolarDados("1d100", "[§K4]Uso de Selamento",
								function (rolado)
								
									mesaDoPersonagem.chat:enviarMensagem(".. [§K1]".. sheet.DescriPergaminho3);
									local mesa = Firecast.getMesaDe(sheet); 
									local CustoPerga3 = mesa.meuJogador:getBarValue(2);
									CustoPerga3 = CustoPerga3 - (tonumber(sheet.CustoPerga3) or 0);
									mesa.meuJogador:requestSetBarValue(2, CustoPerga3);
							
							end);
							end;
						


    obj.button28 = GUI.fromHandle(_obj_newObject("button"));
    obj.button28:setParent(obj.POPDiverso);
    obj.button28:setLeft(907);
    obj.button28:setTop(188);
    obj.button28:setWidth(83);
    obj.button28:setHeight(80);
    obj.button28:setOpacity(0.1);
    obj.button28:setText("");
    obj.button28:setName("button28");

    obj.EstilodeCombate = GUI.fromHandle(_obj_newObject("popup"));
    obj.EstilodeCombate:setParent(obj.POPDiverso);
    obj.EstilodeCombate:setName("EstilodeCombate");
    obj.EstilodeCombate:setVisible(false);
    obj.EstilodeCombate:setLeft(1);
    obj.EstilodeCombate:setTop(40);
    obj.EstilodeCombate:setWidth(450);
    obj.EstilodeCombate:setHeight(350);

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.EstilodeCombate);
    obj.label51:setWidth(300);
    obj.label51:setHeight(40);
    obj.label51:setLeft(10);
    obj.label51:setTop(10);
    obj.label51:setFontFamily("Nyala");
    obj.label51:setFontSize(20);
    obj.label51:setText("Nome do estilo de Combate :");
    obj.label51:setName("label51");

    obj.edit162 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit162:setParent(obj.EstilodeCombate);
    obj.edit162:setWidth(210);
    obj.edit162:setHeight(30);
    obj.edit162:setLeft(230);
    obj.edit162:setTop(15);
    obj.edit162:setField("NomeEDC");
    obj.edit162:setName("edit162");

    obj.textEditor7 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.EstilodeCombate);
    obj.textEditor7:setLeft(10);
    obj.textEditor7:setTop(60);
    obj.textEditor7:setWidth(430);
    obj.textEditor7:setHeight(280);
    obj.textEditor7:setField("DEDC");
    obj.textEditor7:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor7:setName("textEditor7");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Chances");
    obj.tab2:setName("tab2");

    obj.scrollBox6 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox6:setParent(obj.tab2);
    obj.scrollBox6:setAlign("client");
    obj.scrollBox6:setName("scrollBox6");

    obj.image25 = GUI.fromHandle(_obj_newObject("image"));
    obj.image25:setParent(obj.scrollBox6);
    obj.image25:setLeft(1);
    obj.image25:setTop(1);
    obj.image25:setWidth(1000);
    obj.image25:setHeight(700);
    obj.image25:setSRC("/imagens/2.png");
    obj.image25:setName("image25");

    obj.edit163 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit163:setParent(obj.scrollBox6);
    obj.edit163:setLeft(230);
    obj.edit163:setTop(45);
    obj.edit163:setWidth(75);
    obj.edit163:setHeight(18);
    obj.edit163:setEnabled(false);
    obj.edit163:setHorzTextAlign("center");
    obj.edit163:setFontColor("#00FFFF");
    obj.edit163:setType("number");
    obj.edit163:setField("AcertoTaiTotal");
    obj.edit163:setName("edit163");

    obj.edit164 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit164:setParent(obj.scrollBox6);
    obj.edit164:setLeft(230);
    obj.edit164:setTop(70);
    obj.edit164:setWidth(75);
    obj.edit164:setHeight(18);
    obj.edit164:setEnabled(false);
    obj.edit164:setHorzTextAlign("center");
    obj.edit164:setFontColor("#00FFFF");
    obj.edit164:setType("number");
    obj.edit164:setField("AcertoNinTotal");
    obj.edit164:setName("edit164");

    obj.edit165 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit165:setParent(obj.scrollBox6);
    obj.edit165:setLeft(230);
    obj.edit165:setTop(95);
    obj.edit165:setWidth(75);
    obj.edit165:setHeight(18);
    obj.edit165:setEnabled(false);
    obj.edit165:setHorzTextAlign("center");
    obj.edit165:setFontColor("#00FFFF");
    obj.edit165:setType("number");
    obj.edit165:setField("AcertoGenTotal");
    obj.edit165:setName("edit165");

    obj.edit166 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit166:setParent(obj.scrollBox6);
    obj.edit166:setLeft(230);
    obj.edit166:setTop(145);
    obj.edit166:setWidth(75);
    obj.edit166:setHeight(18);
    obj.edit166:setEnabled(false);
    obj.edit166:setHorzTextAlign("center");
    obj.edit166:setFontColor("#00FFFF");
    obj.edit166:setType("number");
    obj.edit166:setField("EsquivaTotal");
    obj.edit166:setName("edit166");

    obj.edit167 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit167:setParent(obj.scrollBox6);
    obj.edit167:setLeft(230);
    obj.edit167:setTop(170);
    obj.edit167:setWidth(75);
    obj.edit167:setHeight(18);
    obj.edit167:setEnabled(false);
    obj.edit167:setHorzTextAlign("center");
    obj.edit167:setFontColor("#00FFFF");
    obj.edit167:setType("number");
    obj.edit167:setField("BloqueioTotal");
    obj.edit167:setName("edit167");

    obj.edit168 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit168:setParent(obj.scrollBox6);
    obj.edit168:setLeft(230);
    obj.edit168:setTop(220);
    obj.edit168:setWidth(75);
    obj.edit168:setHeight(18);
    obj.edit168:setEnabled(false);
    obj.edit168:setHorzTextAlign("center");
    obj.edit168:setFontColor("#00FFFF");
    obj.edit168:setType("number");
    obj.edit168:setField("CRTaiTotal");
    obj.edit168:setName("edit168");

    obj.edit169 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit169:setParent(obj.scrollBox6);
    obj.edit169:setLeft(230);
    obj.edit169:setTop(245);
    obj.edit169:setWidth(75);
    obj.edit169:setHeight(18);
    obj.edit169:setEnabled(false);
    obj.edit169:setHorzTextAlign("center");
    obj.edit169:setFontColor("#00FFFF");
    obj.edit169:setType("number");
    obj.edit169:setField("CRNinTotal");
    obj.edit169:setName("edit169");

    obj.edit170 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit170:setParent(obj.scrollBox6);
    obj.edit170:setLeft(230);
    obj.edit170:setTop(270);
    obj.edit170:setWidth(75);
    obj.edit170:setHeight(18);
    obj.edit170:setEnabled(false);
    obj.edit170:setHorzTextAlign("center");
    obj.edit170:setFontColor("#00FFFF");
    obj.edit170:setType("number");
    obj.edit170:setField("CRGenTotal");
    obj.edit170:setName("edit170");

    obj.edit171 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit171:setParent(obj.scrollBox6);
    obj.edit171:setLeft(230);
    obj.edit171:setTop(320);
    obj.edit171:setWidth(75);
    obj.edit171:setHeight(18);
    obj.edit171:setEnabled(false);
    obj.edit171:setHorzTextAlign("center");
    obj.edit171:setFontColor("#00FFFF");
    obj.edit171:setType("number");
    obj.edit171:setField("TurnoTotal");
    obj.edit171:setName("edit171");

    obj.edit172 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit172:setParent(obj.scrollBox6);
    obj.edit172:setLeft(230);
    obj.edit172:setTop(370);
    obj.edit172:setWidth(75);
    obj.edit172:setHeight(18);
    obj.edit172:setEnabled(true);
    obj.edit172:setHorzTextAlign("center");
    obj.edit172:setFontColor("#00FFFF");
    obj.edit172:setType("number");
    obj.edit172:setField("Atletismo");
    obj.edit172:setName("edit172");

    obj.edit173 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit173:setParent(obj.scrollBox6);
    obj.edit173:setLeft(230);
    obj.edit173:setTop(395);
    obj.edit173:setWidth(75);
    obj.edit173:setHeight(18);
    obj.edit173:setEnabled(true);
    obj.edit173:setHorzTextAlign("center");
    obj.edit173:setFontColor("#00FFFF");
    obj.edit173:setType("number");
    obj.edit173:setField("Raciocinio");
    obj.edit173:setName("edit173");

    obj.edit174 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit174:setParent(obj.scrollBox6);
    obj.edit174:setLeft(230);
    obj.edit174:setTop(420);
    obj.edit174:setWidth(75);
    obj.edit174:setHeight(18);
    obj.edit174:setEnabled(true);
    obj.edit174:setHorzTextAlign("center");
    obj.edit174:setFontColor("#00FFFF");
    obj.edit174:setType("number");
    obj.edit174:setField("Percepcao");
    obj.edit174:setName("edit174");

    obj.edit175 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit175:setParent(obj.scrollBox6);
    obj.edit175:setLeft(230);
    obj.edit175:setTop(445);
    obj.edit175:setWidth(75);
    obj.edit175:setHeight(18);
    obj.edit175:setEnabled(true);
    obj.edit175:setHorzTextAlign("center");
    obj.edit175:setFontColor("#00FFFF");
    obj.edit175:setType("number");
    obj.edit175:setField("Furtividade");
    obj.edit175:setName("edit175");

    obj.edit176 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit176:setParent(obj.scrollBox6);
    obj.edit176:setLeft(230);
    obj.edit176:setTop(470);
    obj.edit176:setWidth(75);
    obj.edit176:setHeight(18);
    obj.edit176:setEnabled(true);
    obj.edit176:setHorzTextAlign("center");
    obj.edit176:setFontColor("#00FFFF");
    obj.edit176:setType("number");
    obj.edit176:setField("Vigor");
    obj.edit176:setName("edit176");

    obj.edit177 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit177:setParent(obj.scrollBox6);
    obj.edit177:setLeft(430);
    obj.edit177:setTop(370);
    obj.edit177:setWidth(75);
    obj.edit177:setHeight(18);
    obj.edit177:setVisible(false);
    obj.edit177:setEnabled(false);
    obj.edit177:setHorzTextAlign("center");
    obj.edit177:setFontColor("#00FFFF");
    obj.edit177:setType("number");
    obj.edit177:setField("GAtletismo");
    obj.edit177:setName("edit177");

    obj.edit178 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit178:setParent(obj.scrollBox6);
    obj.edit178:setLeft(430);
    obj.edit178:setTop(395);
    obj.edit178:setWidth(75);
    obj.edit178:setHeight(18);
    obj.edit178:setVisible(false);
    obj.edit178:setEnabled(false);
    obj.edit178:setHorzTextAlign("center");
    obj.edit178:setFontColor("#00FFFF");
    obj.edit178:setType("number");
    obj.edit178:setField("GRaciocinio");
    obj.edit178:setName("edit178");

    obj.edit179 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit179:setParent(obj.scrollBox6);
    obj.edit179:setLeft(430);
    obj.edit179:setTop(420);
    obj.edit179:setWidth(75);
    obj.edit179:setHeight(18);
    obj.edit179:setVisible(false);
    obj.edit179:setEnabled(false);
    obj.edit179:setHorzTextAlign("center");
    obj.edit179:setFontColor("#00FFFF");
    obj.edit179:setType("number");
    obj.edit179:setField("GPercepcao");
    obj.edit179:setName("edit179");

    obj.edit180 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit180:setParent(obj.scrollBox6);
    obj.edit180:setLeft(430);
    obj.edit180:setTop(445);
    obj.edit180:setWidth(75);
    obj.edit180:setHeight(18);
    obj.edit180:setVisible(false);
    obj.edit180:setEnabled(false);
    obj.edit180:setHorzTextAlign("center");
    obj.edit180:setFontColor("#00FFFF");
    obj.edit180:setType("number");
    obj.edit180:setField("GFurtividade");
    obj.edit180:setName("edit180");

    obj.edit181 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit181:setParent(obj.scrollBox6);
    obj.edit181:setLeft(430);
    obj.edit181:setTop(470);
    obj.edit181:setWidth(75);
    obj.edit181:setHeight(18);
    obj.edit181:setVisible(false);
    obj.edit181:setEnabled(false);
    obj.edit181:setHorzTextAlign("center");
    obj.edit181:setFontColor("#00FFFF");
    obj.edit181:setType("number");
    obj.edit181:setField("GVigor");
    obj.edit181:setName("edit181");

    obj.edit182 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit182:setParent(obj.scrollBox6);
    obj.edit182:setLeft(330);
    obj.edit182:setTop(370);
    obj.edit182:setWidth(75);
    obj.edit182:setHeight(18);
    obj.edit182:setEnabled(false);
    obj.edit182:setHorzTextAlign("center");
    obj.edit182:setFontColor("#00FFFF");
    obj.edit182:setType("number");
    obj.edit182:setField("AtletismoTotal");
    obj.edit182:setName("edit182");

    obj.edit183 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit183:setParent(obj.scrollBox6);
    obj.edit183:setLeft(330);
    obj.edit183:setTop(395);
    obj.edit183:setWidth(75);
    obj.edit183:setHeight(18);
    obj.edit183:setEnabled(false);
    obj.edit183:setHorzTextAlign("center");
    obj.edit183:setFontColor("#00FFFF");
    obj.edit183:setType("number");
    obj.edit183:setField("RaciocinioTotal");
    obj.edit183:setName("edit183");

    obj.edit184 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit184:setParent(obj.scrollBox6);
    obj.edit184:setLeft(330);
    obj.edit184:setTop(420);
    obj.edit184:setWidth(75);
    obj.edit184:setHeight(18);
    obj.edit184:setEnabled(false);
    obj.edit184:setHorzTextAlign("center");
    obj.edit184:setFontColor("#00FFFF");
    obj.edit184:setType("number");
    obj.edit184:setField("PercepcaoTotal");
    obj.edit184:setName("edit184");

    obj.edit185 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit185:setParent(obj.scrollBox6);
    obj.edit185:setLeft(330);
    obj.edit185:setTop(445);
    obj.edit185:setWidth(75);
    obj.edit185:setHeight(18);
    obj.edit185:setEnabled(false);
    obj.edit185:setHorzTextAlign("center");
    obj.edit185:setFontColor("#00FFFF");
    obj.edit185:setType("number");
    obj.edit185:setField("FurtividadeTotal");
    obj.edit185:setName("edit185");

    obj.edit186 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit186:setParent(obj.scrollBox6);
    obj.edit186:setLeft(330);
    obj.edit186:setTop(470);
    obj.edit186:setWidth(75);
    obj.edit186:setHeight(18);
    obj.edit186:setEnabled(false);
    obj.edit186:setHorzTextAlign("center");
    obj.edit186:setFontColor("#00FFFF");
    obj.edit186:setType("number");
    obj.edit186:setField("VigorTotal");
    obj.edit186:setName("edit186");

    obj.edit187 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit187:setParent(obj.scrollBox6);
    obj.edit187:setLeft(530);
    obj.edit187:setTop(370);
    obj.edit187:setWidth(75);
    obj.edit187:setHeight(18);
    obj.edit187:setVisible(false);
    obj.edit187:setEnabled(false);
    obj.edit187:setHorzTextAlign("center");
    obj.edit187:setFontColor("#00FFFF");
    obj.edit187:setType("number");
    obj.edit187:setField("SAtletismo");
    obj.edit187:setName("edit187");

    obj.edit188 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit188:setParent(obj.scrollBox6);
    obj.edit188:setLeft(530);
    obj.edit188:setTop(395);
    obj.edit188:setWidth(75);
    obj.edit188:setHeight(18);
    obj.edit188:setVisible(false);
    obj.edit188:setEnabled(false);
    obj.edit188:setHorzTextAlign("center");
    obj.edit188:setFontColor("#00FFFF");
    obj.edit188:setType("number");
    obj.edit188:setField("SRaciocinio");
    obj.edit188:setName("edit188");

    obj.edit189 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit189:setParent(obj.scrollBox6);
    obj.edit189:setLeft(530);
    obj.edit189:setTop(420);
    obj.edit189:setWidth(75);
    obj.edit189:setHeight(18);
    obj.edit189:setVisible(false);
    obj.edit189:setEnabled(false);
    obj.edit189:setHorzTextAlign("center");
    obj.edit189:setFontColor("#00FFFF");
    obj.edit189:setType("number");
    obj.edit189:setField("SPercepcao");
    obj.edit189:setName("edit189");

    obj.edit190 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit190:setParent(obj.scrollBox6);
    obj.edit190:setLeft(530);
    obj.edit190:setTop(445);
    obj.edit190:setWidth(75);
    obj.edit190:setHeight(18);
    obj.edit190:setVisible(false);
    obj.edit190:setEnabled(false);
    obj.edit190:setHorzTextAlign("center");
    obj.edit190:setFontColor("#00FFFF");
    obj.edit190:setType("number");
    obj.edit190:setField("SFurtividade");
    obj.edit190:setName("edit190");

    obj.edit191 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit191:setParent(obj.scrollBox6);
    obj.edit191:setLeft(530);
    obj.edit191:setTop(470);
    obj.edit191:setWidth(75);
    obj.edit191:setHeight(18);
    obj.edit191:setVisible(false);
    obj.edit191:setEnabled(false);
    obj.edit191:setHorzTextAlign("center");
    obj.edit191:setFontColor("#00FFFF");
    obj.edit191:setType("number");
    obj.edit191:setField("SVigor");
    obj.edit191:setName("edit191");

    obj.edit192 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit192:setParent(obj.scrollBox6);
    obj.edit192:setLeft(330);
    obj.edit192:setTop(45);
    obj.edit192:setWidth(85);
    obj.edit192:setHeight(18);
    obj.edit192:setEnabled(false);
    obj.edit192:setVisible(false);
    obj.edit192:setType("number");
    obj.edit192:setField("GAcertoTai");
    obj.edit192:setName("edit192");

    obj.edit193 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit193:setParent(obj.scrollBox6);
    obj.edit193:setLeft(330);
    obj.edit193:setTop(70);
    obj.edit193:setWidth(85);
    obj.edit193:setHeight(18);
    obj.edit193:setEnabled(false);
    obj.edit193:setVisible(false);
    obj.edit193:setType("number");
    obj.edit193:setField("GAcertoNin");
    obj.edit193:setName("edit193");

    obj.edit194 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit194:setParent(obj.scrollBox6);
    obj.edit194:setLeft(330);
    obj.edit194:setTop(95);
    obj.edit194:setWidth(85);
    obj.edit194:setHeight(18);
    obj.edit194:setEnabled(false);
    obj.edit194:setVisible(false);
    obj.edit194:setType("number");
    obj.edit194:setField("GAcertoGen");
    obj.edit194:setName("edit194");

    obj.edit195 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit195:setParent(obj.scrollBox6);
    obj.edit195:setLeft(330);
    obj.edit195:setTop(145);
    obj.edit195:setWidth(85);
    obj.edit195:setHeight(18);
    obj.edit195:setEnabled(false);
    obj.edit195:setVisible(false);
    obj.edit195:setType("number");
    obj.edit195:setField("GEsquiva");
    obj.edit195:setName("edit195");

    obj.edit196 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit196:setParent(obj.scrollBox6);
    obj.edit196:setLeft(330);
    obj.edit196:setTop(170);
    obj.edit196:setWidth(85);
    obj.edit196:setHeight(18);
    obj.edit196:setEnabled(false);
    obj.edit196:setVisible(false);
    obj.edit196:setType("number");
    obj.edit196:setField("GBloqueio");
    obj.edit196:setName("edit196");

    obj.edit197 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit197:setParent(obj.scrollBox6);
    obj.edit197:setLeft(330);
    obj.edit197:setTop(220);
    obj.edit197:setWidth(85);
    obj.edit197:setHeight(18);
    obj.edit197:setEnabled(false);
    obj.edit197:setVisible(false);
    obj.edit197:setType("number");
    obj.edit197:setField("GCRTai");
    obj.edit197:setName("edit197");

    obj.edit198 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit198:setParent(obj.scrollBox6);
    obj.edit198:setLeft(330);
    obj.edit198:setTop(245);
    obj.edit198:setWidth(85);
    obj.edit198:setHeight(18);
    obj.edit198:setEnabled(false);
    obj.edit198:setVisible(false);
    obj.edit198:setType("number");
    obj.edit198:setField("GCRNin");
    obj.edit198:setName("edit198");

    obj.edit199 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit199:setParent(obj.scrollBox6);
    obj.edit199:setLeft(330);
    obj.edit199:setTop(270);
    obj.edit199:setWidth(85);
    obj.edit199:setHeight(18);
    obj.edit199:setEnabled(false);
    obj.edit199:setVisible(false);
    obj.edit199:setType("number");
    obj.edit199:setField("GCRGen");
    obj.edit199:setName("edit199");

    obj.edit200 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit200:setParent(obj.scrollBox6);
    obj.edit200:setLeft(330);
    obj.edit200:setTop(320);
    obj.edit200:setWidth(85);
    obj.edit200:setHeight(18);
    obj.edit200:setEnabled(false);
    obj.edit200:setVisible(false);
    obj.edit200:setType("number");
    obj.edit200:setField("GTurno");
    obj.edit200:setName("edit200");

    obj.button29 = GUI.fromHandle(_obj_newObject("button"));
    obj.button29:setParent(obj.scrollBox6);
    obj.button29:setLeft(430);
    obj.button29:setTop(370);
    obj.button29:setWidth(85);
    obj.button29:setHeight(20);
    obj.button29:setFontSize(12);
    obj.button29:setFontColor("#00FFFF");
    obj.button29:setText("Atletismo");
    obj.button29:setName("button29");


						local function RolarTesteAtletismo()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.AtletismoTotal = sheet.AtletismoTotal or 0;                        
							mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.AtletismoTotal, "[§K2]Teste de Atletismo"); 
						end; 	   
					


    obj.button30 = GUI.fromHandle(_obj_newObject("button"));
    obj.button30:setParent(obj.scrollBox6);
    obj.button30:setLeft(430);
    obj.button30:setTop(395);
    obj.button30:setWidth(85);
    obj.button30:setHeight(20);
    obj.button30:setFontSize(12);
    obj.button30:setFontColor("#00FFFF");
    obj.button30:setText("Raciocinio");
    obj.button30:setName("button30");


						local function RolarTesteSabedoria()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.RaciocinioTotal = sheet.RaciocinioTotal or 0;                        
							mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.RaciocinioTotal, "[§K2]Teste de Raciocinio"); 
						end; 	   
					


    obj.button31 = GUI.fromHandle(_obj_newObject("button"));
    obj.button31:setParent(obj.scrollBox6);
    obj.button31:setLeft(430);
    obj.button31:setTop(420);
    obj.button31:setWidth(85);
    obj.button31:setHeight(20);
    obj.button31:setFontSize(12);
    obj.button31:setFontColor("#00FFFF");
    obj.button31:setText("Percepção");
    obj.button31:setName("button31");


						local function RolarTestePercepcao()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.PercepcaoTotal = sheet.PercepcaoTotal or 0;                        
							mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.PercepcaoTotal, "[§K2]Teste de Percepcao"); 
						end; 	   
					


    obj.button32 = GUI.fromHandle(_obj_newObject("button"));
    obj.button32:setParent(obj.scrollBox6);
    obj.button32:setLeft(430);
    obj.button32:setTop(445);
    obj.button32:setWidth(85);
    obj.button32:setHeight(20);
    obj.button32:setFontSize(12);
    obj.button32:setFontColor("#00FFFF");
    obj.button32:setText("Furtividade");
    obj.button32:setName("button32");


						local function RolarTesteAcrobacia()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.FurtividadeTotal = sheet.FurtividadeTotal or 0;                        
							mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.FurtividadeTotal, "[§K2]Teste de Furtividade"); 
						end; 	   
					


    obj.button33 = GUI.fromHandle(_obj_newObject("button"));
    obj.button33:setParent(obj.scrollBox6);
    obj.button33:setLeft(430);
    obj.button33:setTop(470);
    obj.button33:setWidth(85);
    obj.button33:setHeight(20);
    obj.button33:setFontSize(12);
    obj.button33:setFontColor("#00FFFF");
    obj.button33:setText("Vigor");
    obj.button33:setName("button33");


						local function RolarTesteVigor()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.VigorTotal = sheet.VigorTotal or 0;                      
							mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.VigorTotal, "[§K2]Teste de Vigor"); 
						end; 	   
					


    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.scrollBox6);
    obj.dataLink13:setFields({'Graduacao', 'Forca', 'Inteligencia', 'Sabedoria', 'Habilidade', 'Resistencia', 'Atletismo', 'Raciocinio', 'Percepcao', 'Furtividade', 'Vigor'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.scrollBox6);
    obj.dataLink14:setFields({'GAcertoTai', 'GAcertoNin', 'GAcertoGen', 'GEsquiva', 'GBloqueio', 'GCRTai', 'GCRNin', 'GCRGen', 'GTurno',
				'CAT', 'CAN', 'CAG', 'CEsq', 'CBloq', 'CCRT', 'CCRN', 'CCRG', 'DAcertoTai', 'DAcertoNin', 'DAcertoGen', 'DEsquiva', 'DBloqueio', 'DCriticalTai', 'DCriticalNin', 'DCriticalGen'});
    obj.dataLink14:setName("dataLink14");

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Equipamentos");
    obj.tab3:setName("tab3");

    obj.scrollBox7 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox7:setParent(obj.tab3);
    obj.scrollBox7:setAlign("client");
    obj.scrollBox7:setName("scrollBox7");

    obj.image26 = GUI.fromHandle(_obj_newObject("image"));
    obj.image26:setParent(obj.scrollBox7);
    obj.image26:setLeft(1);
    obj.image26:setTop(1);
    obj.image26:setWidth(1000);
    obj.image26:setHeight(700);
    obj.image26:setSRC("/imagens/3.png");
    obj.image26:setName("image26");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.scrollBox7);
    obj.richEdit1:setLeft(22);
    obj.richEdit1:setTop(90);
    obj.richEdit1:setWidth(320);
    obj.richEdit1:setHeight(340);
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "#00000000");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");
    obj.richEdit1:setField("Historia");
    obj.richEdit1:setName("richEdit1");

    obj.button34 = GUI.fromHandle(_obj_newObject("button"));
    obj.button34:setParent(obj.scrollBox7);
    obj.button34:setLeft(430);
    obj.button34:setTop(120);
    obj.button34:setWidth(120);
    obj.button34:setHeight(100);
    obj.button34:setOpacity(0.0);
    obj.button34:setText("");
    obj.button34:setName("button34");

    obj.POPArma = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPArma:setParent(obj.scrollBox7);
    obj.POPArma:setName("POPArma");
    obj.POPArma:setVisible(false);
    obj.POPArma:setLeft(1);
    obj.POPArma:setTop(40);
    obj.POPArma:setWidth(500);
    obj.POPArma:setHeight(550);

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.POPArma);
    obj.label52:setLeft(20);
    obj.label52:setTop(20);
    obj.label52:setFontFamily("Nyala");
    obj.label52:setFontSize(20);
    obj.label52:setText("Dano Tai");
    obj.label52:setName("label52");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.POPArma);
    obj.label53:setLeft(20);
    obj.label53:setTop(60);
    obj.label53:setFontFamily("Nyala");
    obj.label53:setFontSize(20);
    obj.label53:setText("Dano Nin");
    obj.label53:setName("label53");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.POPArma);
    obj.label54:setLeft(20);
    obj.label54:setTop(100);
    obj.label54:setFontFamily("Nyala");
    obj.label54:setFontSize(20);
    obj.label54:setText("Dano Gen");
    obj.label54:setName("label54");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.POPArma);
    obj.label55:setLeft(20);
    obj.label55:setTop(140);
    obj.label55:setFontFamily("Nyala");
    obj.label55:setFontSize(20);
    obj.label55:setText("Dano Armado");
    obj.label55:setName("label55");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.POPArma);
    obj.label56:setLeft(200);
    obj.label56:setTop(20);
    obj.label56:setFontFamily("Nyala");
    obj.label56:setFontSize(20);
    obj.label56:setText("Dano Elemental");
    obj.label56:setName("label56");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.POPArma);
    obj.label57:setLeft(200);
    obj.label57:setTop(60);
    obj.label57:setFontFamily("Nyala");
    obj.label57:setFontSize(20);
    obj.label57:setText("HP");
    obj.label57:setName("label57");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.POPArma);
    obj.label58:setLeft(200);
    obj.label58:setTop(100);
    obj.label58:setFontFamily("Nyala");
    obj.label58:setFontSize(20);
    obj.label58:setText("Chakra");
    obj.label58:setName("label58");

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.POPArma);
    obj.label59:setLeft(20);
    obj.label59:setTop(200);
    obj.label59:setWidth(300);
    obj.label59:setFontFamily("Nyala");
    obj.label59:setFontSize(20);
    obj.label59:setText("Habilidade da Espada");
    obj.label59:setName("label59");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.POPArma);
    obj.label60:setLeft(20);
    obj.label60:setTop(300);
    obj.label60:setFontFamily("Nyala");
    obj.label60:setFontSize(20);
    obj.label60:setText("Shinkai");
    obj.label60:setName("label60");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.POPArma);
    obj.label61:setLeft(20);
    obj.label61:setTop(400);
    obj.label61:setFontFamily("Nyala");
    obj.label61:setFontSize(20);
    obj.label61:setText("Bankai");
    obj.label61:setName("label61");

    obj.edit201 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit201:setParent(obj.POPArma);
    obj.edit201:setLeft(110);
    obj.edit201:setTop(16);
    obj.edit201:setWidth(85);
    obj.edit201:setHeight(25);
    obj.edit201:setType("number");
    obj.edit201:setField("ArmaDT");
    obj.edit201:setName("edit201");

    obj.edit202 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit202:setParent(obj.POPArma);
    obj.edit202:setLeft(110);
    obj.edit202:setTop(56);
    obj.edit202:setWidth(85);
    obj.edit202:setHeight(25);
    obj.edit202:setType("number");
    obj.edit202:setField("ArmaDN");
    obj.edit202:setName("edit202");

    obj.edit203 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit203:setParent(obj.POPArma);
    obj.edit203:setLeft(110);
    obj.edit203:setTop(96);
    obj.edit203:setWidth(85);
    obj.edit203:setHeight(25);
    obj.edit203:setType("number");
    obj.edit203:setField("ArmaDG");
    obj.edit203:setName("edit203");

    obj.edit204 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit204:setParent(obj.POPArma);
    obj.edit204:setLeft(130);
    obj.edit204:setTop(136);
    obj.edit204:setWidth(85);
    obj.edit204:setHeight(25);
    obj.edit204:setType("number");
    obj.edit204:setField("ArmaDA");
    obj.edit204:setName("edit204");

    obj.edit205 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit205:setParent(obj.POPArma);
    obj.edit205:setLeft(360);
    obj.edit205:setTop(16);
    obj.edit205:setWidth(85);
    obj.edit205:setHeight(25);
    obj.edit205:setType("number");
    obj.edit205:setField("ArmaDE");
    obj.edit205:setName("edit205");

    obj.edit206 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit206:setParent(obj.POPArma);
    obj.edit206:setLeft(360);
    obj.edit206:setTop(56);
    obj.edit206:setWidth(85);
    obj.edit206:setHeight(25);
    obj.edit206:setType("number");
    obj.edit206:setField("ArmaHP");
    obj.edit206:setName("edit206");

    obj.edit207 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit207:setParent(obj.POPArma);
    obj.edit207:setLeft(360);
    obj.edit207:setTop(96);
    obj.edit207:setWidth(85);
    obj.edit207:setHeight(25);
    obj.edit207:setType("number");
    obj.edit207:setField("ArmaChakra");
    obj.edit207:setName("edit207");

    obj.textEditor8 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.POPArma);
    obj.textEditor8:setLeft(20);
    obj.textEditor8:setTop(223);
    obj.textEditor8:setWidth(440);
    obj.textEditor8:setHeight(70);
    obj.textEditor8:setField("HDE");
    obj.textEditor8:setName("textEditor8");

    obj.textEditor9 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.POPArma);
    obj.textEditor9:setLeft(20);
    obj.textEditor9:setTop(320);
    obj.textEditor9:setWidth(440);
    obj.textEditor9:setHeight(70);
    obj.textEditor9:setField("Shinkai");
    obj.textEditor9:setName("textEditor9");

    obj.textEditor10 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor10:setParent(obj.POPArma);
    obj.textEditor10:setLeft(20);
    obj.textEditor10:setTop(420);
    obj.textEditor10:setWidth(440);
    obj.textEditor10:setHeight(100);
    obj.textEditor10:setField("Bankai");
    obj.textEditor10:setName("textEditor10");

    obj.button35 = GUI.fromHandle(_obj_newObject("button"));
    obj.button35:setParent(obj.scrollBox7);
    obj.button35:setLeft(610);
    obj.button35:setTop(120);
    obj.button35:setWidth(160);
    obj.button35:setHeight(100);
    obj.button35:setOpacity(0.0);
    obj.button35:setText("");
    obj.button35:setName("button35");

    obj.POPBandana = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPBandana:setParent(obj.scrollBox7);
    obj.POPBandana:setName("POPBandana");
    obj.POPBandana:setVisible(false);
    obj.POPBandana:setLeft(1);
    obj.POPBandana:setTop(40);
    obj.POPBandana:setWidth(300);
    obj.POPBandana:setHeight(300);

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.POPBandana);
    obj.label62:setLeft(20);
    obj.label62:setTop(20);
    obj.label62:setFontFamily("Nyala");
    obj.label62:setFontSize(20);
    obj.label62:setText("HP");
    obj.label62:setName("label62");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.POPBandana);
    obj.label63:setLeft(20);
    obj.label63:setTop(60);
    obj.label63:setFontFamily("Nyala");
    obj.label63:setFontSize(20);
    obj.label63:setText("Chakra");
    obj.label63:setName("label63");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.POPBandana);
    obj.label64:setLeft(20);
    obj.label64:setTop(100);
    obj.label64:setFontFamily("Nyala");
    obj.label64:setFontSize(20);
    obj.label64:setText("Redução");
    obj.label64:setName("label64");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.POPBandana);
    obj.label65:setLeft(20);
    obj.label65:setTop(140);
    obj.label65:setWidth(300);
    obj.label65:setFontFamily("Nyala");
    obj.label65:setFontSize(20);
    obj.label65:setText("Passiva");
    obj.label65:setName("label65");

    obj.edit208 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit208:setParent(obj.POPBandana);
    obj.edit208:setLeft(110);
    obj.edit208:setTop(16);
    obj.edit208:setWidth(85);
    obj.edit208:setHeight(25);
    obj.edit208:setType("number");
    obj.edit208:setField("BandanaHP");
    obj.edit208:setName("edit208");

    obj.edit209 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit209:setParent(obj.POPBandana);
    obj.edit209:setLeft(110);
    obj.edit209:setTop(56);
    obj.edit209:setWidth(85);
    obj.edit209:setHeight(25);
    obj.edit209:setType("number");
    obj.edit209:setField("BandanaChakra");
    obj.edit209:setName("edit209");

    obj.edit210 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit210:setParent(obj.POPBandana);
    obj.edit210:setLeft(110);
    obj.edit210:setTop(96);
    obj.edit210:setWidth(85);
    obj.edit210:setHeight(25);
    obj.edit210:setType("number");
    obj.edit210:setField("BandanaReducao");
    obj.edit210:setName("edit210");

    obj.textEditor11 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor11:setParent(obj.POPBandana);
    obj.textEditor11:setLeft(20);
    obj.textEditor11:setTop(163);
    obj.textEditor11:setWidth(260);
    obj.textEditor11:setHeight(110);
    obj.textEditor11:setField("BandanaPassiva");
    obj.textEditor11:setName("textEditor11");

    obj.button36 = GUI.fromHandle(_obj_newObject("button"));
    obj.button36:setParent(obj.scrollBox7);
    obj.button36:setLeft(430);
    obj.button36:setTop(225);
    obj.button36:setWidth(120);
    obj.button36:setHeight(115);
    obj.button36:setOpacity(0.0);
    obj.button36:setText("");
    obj.button36:setName("button36");

    obj.POPColete = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPColete:setParent(obj.scrollBox7);
    obj.POPColete:setName("POPColete");
    obj.POPColete:setVisible(false);
    obj.POPColete:setLeft(1);
    obj.POPColete:setTop(40);
    obj.POPColete:setWidth(300);
    obj.POPColete:setHeight(300);

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.POPColete);
    obj.label66:setLeft(20);
    obj.label66:setTop(20);
    obj.label66:setFontFamily("Nyala");
    obj.label66:setFontSize(20);
    obj.label66:setText("HP");
    obj.label66:setName("label66");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.POPColete);
    obj.label67:setLeft(20);
    obj.label67:setTop(60);
    obj.label67:setFontFamily("Nyala");
    obj.label67:setFontSize(20);
    obj.label67:setText("Chakra");
    obj.label67:setName("label67");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.POPColete);
    obj.label68:setLeft(20);
    obj.label68:setTop(100);
    obj.label68:setFontFamily("Nyala");
    obj.label68:setFontSize(20);
    obj.label68:setText("Redução");
    obj.label68:setName("label68");

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.POPColete);
    obj.label69:setLeft(20);
    obj.label69:setTop(140);
    obj.label69:setWidth(300);
    obj.label69:setFontFamily("Nyala");
    obj.label69:setFontSize(20);
    obj.label69:setText("Passiva");
    obj.label69:setName("label69");

    obj.edit211 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit211:setParent(obj.POPColete);
    obj.edit211:setLeft(110);
    obj.edit211:setTop(16);
    obj.edit211:setWidth(85);
    obj.edit211:setHeight(25);
    obj.edit211:setType("number");
    obj.edit211:setField("ColeteHP");
    obj.edit211:setName("edit211");

    obj.edit212 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit212:setParent(obj.POPColete);
    obj.edit212:setLeft(110);
    obj.edit212:setTop(56);
    obj.edit212:setWidth(85);
    obj.edit212:setHeight(25);
    obj.edit212:setType("number");
    obj.edit212:setField("ColeteChakra");
    obj.edit212:setName("edit212");

    obj.edit213 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit213:setParent(obj.POPColete);
    obj.edit213:setLeft(110);
    obj.edit213:setTop(96);
    obj.edit213:setWidth(85);
    obj.edit213:setHeight(25);
    obj.edit213:setType("number");
    obj.edit213:setField("ColeteReducao");
    obj.edit213:setName("edit213");

    obj.textEditor12 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor12:setParent(obj.POPColete);
    obj.textEditor12:setLeft(20);
    obj.textEditor12:setTop(163);
    obj.textEditor12:setWidth(260);
    obj.textEditor12:setHeight(110);
    obj.textEditor12:setField("ColetePassiva");
    obj.textEditor12:setName("textEditor12");

    obj.button37 = GUI.fromHandle(_obj_newObject("button"));
    obj.button37:setParent(obj.scrollBox7);
    obj.button37:setLeft(610);
    obj.button37:setTop(232);
    obj.button37:setWidth(160);
    obj.button37:setHeight(100);
    obj.button37:setOpacity(0.0);
    obj.button37:setText("");
    obj.button37:setName("button37");

    obj.POPAcessorio = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPAcessorio:setParent(obj.scrollBox7);
    obj.POPAcessorio:setName("POPAcessorio");
    obj.POPAcessorio:setVisible(false);
    obj.POPAcessorio:setLeft(1);
    obj.POPAcessorio:setTop(40);
    obj.POPAcessorio:setWidth(500);
    obj.POPAcessorio:setHeight(350);

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.POPAcessorio);
    obj.label70:setLeft(20);
    obj.label70:setTop(20);
    obj.label70:setFontFamily("Nyala");
    obj.label70:setFontSize(20);
    obj.label70:setText("Dano Tai");
    obj.label70:setName("label70");

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.POPAcessorio);
    obj.label71:setLeft(20);
    obj.label71:setTop(60);
    obj.label71:setFontFamily("Nyala");
    obj.label71:setFontSize(20);
    obj.label71:setText("Dano Nin");
    obj.label71:setName("label71");

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.POPAcessorio);
    obj.label72:setLeft(20);
    obj.label72:setTop(100);
    obj.label72:setFontFamily("Nyala");
    obj.label72:setFontSize(20);
    obj.label72:setText("Dano Gen");
    obj.label72:setName("label72");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.POPAcessorio);
    obj.label73:setLeft(230);
    obj.label73:setTop(20);
    obj.label73:setFontFamily("Nyala");
    obj.label73:setFontSize(20);
    obj.label73:setText("Dano Elemental");
    obj.label73:setName("label73");

    obj.label74 = GUI.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.POPAcessorio);
    obj.label74:setLeft(230);
    obj.label74:setTop(60);
    obj.label74:setFontFamily("Nyala");
    obj.label74:setFontSize(20);
    obj.label74:setText("HP");
    obj.label74:setName("label74");

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.POPAcessorio);
    obj.label75:setLeft(230);
    obj.label75:setTop(100);
    obj.label75:setFontFamily("Nyala");
    obj.label75:setFontSize(20);
    obj.label75:setText("Chakra");
    obj.label75:setName("label75");

    obj.label76 = GUI.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.POPAcessorio);
    obj.label76:setLeft(20);
    obj.label76:setTop(140);
    obj.label76:setWidth(300);
    obj.label76:setFontFamily("Nyala");
    obj.label76:setFontSize(20);
    obj.label76:setText("Reiatsu");
    obj.label76:setName("label76");

    obj.label77 = GUI.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.POPAcessorio);
    obj.label77:setLeft(230);
    obj.label77:setTop(140);
    obj.label77:setFontFamily("Nyala");
    obj.label77:setFontSize(20);
    obj.label77:setText("Outros");
    obj.label77:setName("label77");

    obj.edit214 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit214:setParent(obj.POPAcessorio);
    obj.edit214:setLeft(110);
    obj.edit214:setTop(16);
    obj.edit214:setWidth(85);
    obj.edit214:setHeight(25);
    obj.edit214:setType("number");
    obj.edit214:setField("AcessorioDT");
    obj.edit214:setName("edit214");

    obj.edit215 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit215:setParent(obj.POPAcessorio);
    obj.edit215:setLeft(110);
    obj.edit215:setTop(56);
    obj.edit215:setWidth(85);
    obj.edit215:setHeight(25);
    obj.edit215:setType("number");
    obj.edit215:setField("AcessorioDN");
    obj.edit215:setName("edit215");

    obj.edit216 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit216:setParent(obj.POPAcessorio);
    obj.edit216:setLeft(110);
    obj.edit216:setTop(96);
    obj.edit216:setWidth(85);
    obj.edit216:setHeight(25);
    obj.edit216:setType("number");
    obj.edit216:setField("AcessorioDG");
    obj.edit216:setName("edit216");

    obj.edit217 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit217:setParent(obj.POPAcessorio);
    obj.edit217:setLeft(360);
    obj.edit217:setTop(16);
    obj.edit217:setWidth(85);
    obj.edit217:setHeight(25);
    obj.edit217:setType("number");
    obj.edit217:setField("AcessorioDE");
    obj.edit217:setName("edit217");

    obj.edit218 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit218:setParent(obj.POPAcessorio);
    obj.edit218:setLeft(360);
    obj.edit218:setTop(56);
    obj.edit218:setWidth(85);
    obj.edit218:setHeight(25);
    obj.edit218:setType("number");
    obj.edit218:setField("AcessorioHP");
    obj.edit218:setName("edit218");

    obj.edit219 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit219:setParent(obj.POPAcessorio);
    obj.edit219:setLeft(360);
    obj.edit219:setTop(96);
    obj.edit219:setWidth(85);
    obj.edit219:setHeight(25);
    obj.edit219:setType("number");
    obj.edit219:setField("AcessorioChakra");
    obj.edit219:setName("edit219");

    obj.edit220 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit220:setParent(obj.POPAcessorio);
    obj.edit220:setLeft(110);
    obj.edit220:setTop(136);
    obj.edit220:setWidth(85);
    obj.edit220:setHeight(25);
    obj.edit220:setType("number");
    obj.edit220:setField("AcessorioReiatsu");
    obj.edit220:setName("edit220");

    obj.edit221 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit221:setParent(obj.POPAcessorio);
    obj.edit221:setLeft(360);
    obj.edit221:setTop(136);
    obj.edit221:setWidth(85);
    obj.edit221:setHeight(25);
    obj.edit221:setType("number");
    obj.edit221:setField("AcessorioOutros");
    obj.edit221:setName("edit221");

    obj.label78 = GUI.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.POPAcessorio);
    obj.label78:setLeft(20);
    obj.label78:setTop(180);
    obj.label78:setWidth(300);
    obj.label78:setFontFamily("Nyala");
    obj.label78:setFontSize(20);
    obj.label78:setText("Habilidade");
    obj.label78:setName("label78");

    obj.textEditor13 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor13:setParent(obj.POPAcessorio);
    obj.textEditor13:setLeft(20);
    obj.textEditor13:setTop(210);
    obj.textEditor13:setWidth(425);
    obj.textEditor13:setHeight(110);
    obj.textEditor13:setField("AcessorioPassiva");
    obj.textEditor13:setName("textEditor13");

    obj.button38 = GUI.fromHandle(_obj_newObject("button"));
    obj.button38:setParent(obj.scrollBox7);
    obj.button38:setLeft(30);
    obj.button38:setTop(540);
    obj.button38:setWidth(120);
    obj.button38:setHeight(115);
    obj.button38:setOpacity(0.1);
    obj.button38:setText("");
    obj.button38:setName("button38");

    obj.POPBAG = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPBAG:setParent(obj.scrollBox7);
    obj.POPBAG:setName("POPBAG");
    obj.POPBAG:setVisible(false);
    obj.POPBAG:setLeft(1);
    obj.POPBAG:setTop(40);
    obj.POPBAG:setWidth(650);
    obj.POPBAG:setHeight(500);

    obj.image27 = GUI.fromHandle(_obj_newObject("image"));
    obj.image27:setParent(obj.POPBAG);
    obj.image27:setLeft(1);
    obj.image27:setTop(1);
    obj.image27:setWidth(650);
    obj.image27:setHeight(500);
    obj.image27:setSRC("/imagens/Loja.png");
    obj.image27:setName("image27");

    obj.label79 = GUI.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.POPBAG);
    obj.label79:setLeft(160);
    obj.label79:setTop(13);
    obj.label79:setHeight(25);
    obj.label79:setWidth(100);
    obj.label79:setFontColor("red");
    obj.label79:setText("Kunai");
    obj.label79:setAutoSize(true);
    obj.label79:setName("label79");

    obj.edit222 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit222:setParent(obj.POPBAG);
    obj.edit222:setLeft(200);
    obj.edit222:setTop(08);
    obj.edit222:setHeight(25);
    obj.edit222:setWidth(30);
    obj.edit222:setType("number");
    obj.edit222:setField("KunaiLimite");
    obj.edit222:setName("edit222");

    obj.label80 = GUI.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.POPBAG);
    obj.label80:setLeft(235);
    obj.label80:setTop(13);
    obj.label80:setHeight(25);
    obj.label80:setWidth(100);
    obj.label80:setFontColor("red");
    obj.label80:setText("Shuriken");
    obj.label80:setAutoSize(true);
    obj.label80:setName("label80");

    obj.edit223 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit223:setParent(obj.POPBAG);
    obj.edit223:setLeft(290);
    obj.edit223:setTop(08);
    obj.edit223:setHeight(25);
    obj.edit223:setWidth(30);
    obj.edit223:setType("number");
    obj.edit223:setField("ShurikenLimite");
    obj.edit223:setName("edit223");

    obj.label81 = GUI.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.POPBAG);
    obj.label81:setLeft(325);
    obj.label81:setTop(13);
    obj.label81:setHeight(25);
    obj.label81:setWidth(100);
    obj.label81:setFontColor("red");
    obj.label81:setText("S.Fuuma");
    obj.label81:setAutoSize(true);
    obj.label81:setName("label81");

    obj.edit224 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit224:setParent(obj.POPBAG);
    obj.edit224:setLeft(380);
    obj.edit224:setTop(08);
    obj.edit224:setHeight(25);
    obj.edit224:setWidth(30);
    obj.edit224:setType("number");
    obj.edit224:setField("SFuumaLimite");
    obj.edit224:setName("edit224");

    obj.label82 = GUI.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.POPBAG);
    obj.label82:setLeft(420);
    obj.label82:setTop(13);
    obj.label82:setHeight(25);
    obj.label82:setWidth(100);
    obj.label82:setFontColor("red");
    obj.label82:setText("K.Gigante");
    obj.label82:setAutoSize(true);
    obj.label82:setName("label82");

    obj.edit225 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit225:setParent(obj.POPBAG);
    obj.edit225:setLeft(480);
    obj.edit225:setTop(08);
    obj.edit225:setHeight(25);
    obj.edit225:setWidth(30);
    obj.edit225:setType("number");
    obj.edit225:setField("KGiganteLimite");
    obj.edit225:setName("edit225");

    obj.label83 = GUI.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.POPBAG);
    obj.label83:setLeft(515);
    obj.label83:setTop(13);
    obj.label83:setHeight(25);
    obj.label83:setWidth(100);
    obj.label83:setFontColor("red");
    obj.label83:setText("P.Bomba");
    obj.label83:setAutoSize(true);
    obj.label83:setName("label83");

    obj.edit226 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit226:setParent(obj.POPBAG);
    obj.edit226:setLeft(570);
    obj.edit226:setTop(08);
    obj.edit226:setHeight(25);
    obj.edit226:setWidth(30);
    obj.edit226:setType("number");
    obj.edit226:setField("PBombaLimite");
    obj.edit226:setName("edit226");

    obj.label84 = GUI.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.POPBAG);
    obj.label84:setLeft(160);
    obj.label84:setTop(38);
    obj.label84:setHeight(25);
    obj.label84:setWidth(100);
    obj.label84:setFontColor("red");
    obj.label84:setText("G.Explosivo");
    obj.label84:setAutoSize(true);
    obj.label84:setName("label84");

    obj.edit227 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit227:setParent(obj.POPBAG);
    obj.edit227:setLeft(230);
    obj.edit227:setTop(35);
    obj.edit227:setHeight(25);
    obj.edit227:setWidth(30);
    obj.edit227:setType("number");
    obj.edit227:setField("GExplosivoLimite");
    obj.edit227:setName("edit227");

    obj.label85 = GUI.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.POPBAG);
    obj.label85:setLeft(265);
    obj.label85:setTop(38);
    obj.label85:setHeight(25);
    obj.label85:setWidth(100);
    obj.label85:setFontColor("red");
    obj.label85:setText("Veneno");
    obj.label85:setAutoSize(true);
    obj.label85:setName("label85");

    obj.edit228 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit228:setParent(obj.POPBAG);
    obj.edit228:setLeft(315);
    obj.edit228:setTop(35);
    obj.edit228:setHeight(25);
    obj.edit228:setWidth(30);
    obj.edit228:setType("number");
    obj.edit228:setField("VenenoLimite");
    obj.edit228:setName("edit228");

    obj.label86 = GUI.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.POPBAG);
    obj.label86:setLeft(350);
    obj.label86:setTop(38);
    obj.label86:setHeight(25);
    obj.label86:setWidth(100);
    obj.label86:setFontColor("red");
    obj.label86:setText("Bandagem");
    obj.label86:setAutoSize(true);
    obj.label86:setName("label86");

    obj.edit229 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit229:setParent(obj.POPBAG);
    obj.edit229:setLeft(415);
    obj.edit229:setTop(35);
    obj.edit229:setHeight(25);
    obj.edit229:setWidth(30);
    obj.edit229:setType("number");
    obj.edit229:setField("BandagemLimite");
    obj.edit229:setName("edit229");

    obj.label87 = GUI.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.POPBAG);
    obj.label87:setLeft(450);
    obj.label87:setTop(38);
    obj.label87:setHeight(25);
    obj.label87:setWidth(100);
    obj.label87:setFontColor("red");
    obj.label87:setText("Bomba Fumaça");
    obj.label87:setAutoSize(true);
    obj.label87:setName("label87");

    obj.edit230 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit230:setParent(obj.POPBAG);
    obj.edit230:setLeft(545);
    obj.edit230:setTop(35);
    obj.edit230:setHeight(25);
    obj.edit230:setWidth(30);
    obj.edit230:setType("number");
    obj.edit230:setField("BombaFumacaLimite");
    obj.edit230:setName("edit230");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.POPBAG);
    obj.layout1:setAlign("top");
    obj.layout1:setHeight(30);
    obj.layout1:setMargins({bottom=4});
    obj.layout1:setName("layout1");

    obj.button39 = GUI.fromHandle(_obj_newObject("button"));
    obj.button39:setParent(obj.layout1);
    obj.button39:setText("Novo Item");
    obj.button39:setWidth(150);
    obj.button39:setAlign("left");
    obj.button39:setName("button39");

    obj.rclListaDosItens4 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens4:setParent(obj.POPBAG);
    obj.rclListaDosItens4:setName("rclListaDosItens4");
    obj.rclListaDosItens4:setField("campoDosItens4");
    obj.rclListaDosItens4:setTemplateForm("frmItemDaLista4");
    obj.rclListaDosItens4:setLeft(5);
    obj.rclListaDosItens4:setTop(71);
    obj.rclListaDosItens4:setHeight(420);
    obj.rclListaDosItens4:setWidth(640);
    obj.rclListaDosItens4:setSelectable(true);

    obj.boxDetalhesDoItem = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxDetalhesDoItem:setParent(obj.POPBAG);
    obj.boxDetalhesDoItem:setName("boxDetalhesDoItem");
    obj.boxDetalhesDoItem:setVisible(false);
    obj.boxDetalhesDoItem:setTop(38);
    obj.boxDetalhesDoItem:setLeft(300);
    obj.boxDetalhesDoItem:setWidth(330);
    obj.boxDetalhesDoItem:setHeight(440);
    obj.boxDetalhesDoItem:setMargins({left=4, right=4});

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.boxDetalhesDoItem);
    obj.rectangle13:setColor("grey");
    obj.rectangle13:setHeight(430);
    obj.rectangle13:setWidth(380);
    obj.rectangle13:setTop(33);
    obj.rectangle13:setLeft(1);
    obj.rectangle13:setName("rectangle13");

    obj.label88 = GUI.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.rectangle13);
    obj.label88:setLeft(10);
    obj.label88:setTop(13);
    obj.label88:setHeight(25);
    obj.label88:setWidth(100);
    obj.label88:setFontColor("red");
    obj.label88:setText("Nome do Item:");
    obj.label88:setAutoSize(true);
    obj.label88:setName("label88");

    obj.edit231 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit231:setParent(obj.rectangle13);
    obj.edit231:setLeft(105);
    obj.edit231:setTop(10);
    obj.edit231:setHeight(25);
    obj.edit231:setWidth(205);
    obj.edit231:setField("NomedoItem");
    obj.edit231:setName("edit231");

    obj.textEditor14 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor14:setParent(obj.rectangle13);
    obj.textEditor14:setLeft(10);
    obj.textEditor14:setTop(40);
    obj.textEditor14:setWidth(300);
    obj.textEditor14:setHeight(310);
    obj.textEditor14:setField("DescriItem");
    obj.textEditor14:setName("textEditor14");

    obj.label89 = GUI.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.rectangle13);
    obj.label89:setLeft(10);
    obj.label89:setTop(360);
    obj.label89:setHeight(25);
    obj.label89:setWidth(100);
    obj.label89:setText("Tipo :");
    obj.label89:setAutoSize(true);
    obj.label89:setName("label89");

    obj.comboBox11 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox11:setParent(obj.rectangle13);
    obj.comboBox11:setLeft(50);
    obj.comboBox11:setTop(360);
    obj.comboBox11:setWidth(140);
    obj.comboBox11:setHeight(18);
    obj.comboBox11:setField("TipoItens");
    obj.comboBox11:setItems({'Kunai', 'Shuriken', 'Shuriken Fuuma', 'Kunai Gigante', 'Marionete', 'Papel Bomba', 'Ginso Explosivo', 'Veneno', 'Bandagem', 'Bomba de Fumaça', 'Selamento', 'Outros'});
    obj.comboBox11:setName("comboBox11");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Personagem");
    obj.tab4:setName("tab4");

    obj.scrollBox8 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox8:setParent(obj.tab4);
    obj.scrollBox8:setAlign("client");
    obj.scrollBox8:setName("scrollBox8");

    obj.image28 = GUI.fromHandle(_obj_newObject("image"));
    obj.image28:setParent(obj.scrollBox8);
    obj.image28:setLeft(1);
    obj.image28:setTop(1);
    obj.image28:setWidth(1190);
    obj.image28:setHeight(680);
    obj.image28:setSRC("/imagens/7.png");
    obj.image28:setName("image28");

    obj.edit232 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit232:setParent(obj.scrollBox8);
    obj.edit232:setLeft(170);
    obj.edit232:setTop(12);
    obj.edit232:setWidth(80);
    obj.edit232:setHeight(25);
    obj.edit232:setHorzTextAlign("center");
    obj.edit232:setType("number");
    obj.edit232:setMax(100);
    obj.edit232:setMin(0);
    obj.edit232:setEnabled(false);
    obj.edit232:setFontSize(18);
    obj.edit232:setField("RepFolha");
    obj.edit232:setName("edit232");

    obj.edit233 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit233:setParent(obj.scrollBox8);
    obj.edit233:setLeft(170);
    obj.edit233:setTop(40);
    obj.edit233:setWidth(80);
    obj.edit233:setHeight(25);
    obj.edit233:setHorzTextAlign("center");
    obj.edit233:setType("number");
    obj.edit233:setMax(100);
    obj.edit233:setMin(0);
    obj.edit233:setEnabled(false);
    obj.edit233:setFontSize(18);
    obj.edit233:setField("RepAreia");
    obj.edit233:setName("edit233");

    obj.edit234 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit234:setParent(obj.scrollBox8);
    obj.edit234:setLeft(170);
    obj.edit234:setTop(68);
    obj.edit234:setWidth(80);
    obj.edit234:setHeight(25);
    obj.edit234:setHorzTextAlign("center");
    obj.edit234:setType("number");
    obj.edit234:setMax(100);
    obj.edit234:setMin(0);
    obj.edit234:setEnabled(false);
    obj.edit234:setFontSize(18);
    obj.edit234:setField("RepNuvem");
    obj.edit234:setName("edit234");

    obj.edit235 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit235:setParent(obj.scrollBox8);
    obj.edit235:setLeft(170);
    obj.edit235:setTop(96);
    obj.edit235:setWidth(80);
    obj.edit235:setHeight(25);
    obj.edit235:setHorzTextAlign("center");
    obj.edit235:setType("number");
    obj.edit235:setMax(100);
    obj.edit235:setMin(0);
    obj.edit235:setEnabled(false);
    obj.edit235:setFontSize(18);
    obj.edit235:setField("RepNevoa");
    obj.edit235:setName("edit235");

    obj.edit236 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit236:setParent(obj.scrollBox8);
    obj.edit236:setLeft(170);
    obj.edit236:setTop(124);
    obj.edit236:setWidth(80);
    obj.edit236:setHeight(25);
    obj.edit236:setHorzTextAlign("center");
    obj.edit236:setType("number");
    obj.edit236:setMax(100);
    obj.edit236:setMin(0);
    obj.edit236:setEnabled(false);
    obj.edit236:setFontSize(18);
    obj.edit236:setField("RepPedra");
    obj.edit236:setName("edit236");

    obj.GanhoAnual = GUI.fromHandle(_obj_newObject("edit"));
    obj.GanhoAnual:setParent(obj.scrollBox8);
    obj.GanhoAnual:setName("GanhoAnual");
    obj.GanhoAnual:setLeft(10);
    obj.GanhoAnual:setTop(213);
    obj.GanhoAnual:setReadOnly(true);
    obj.GanhoAnual:setWidth(140);
    obj.GanhoAnual:setType("number");
    obj.GanhoAnual:setHeight(25);
    obj.GanhoAnual:setFontColor("red");
    obj.GanhoAnual:setEnabled(false);
    obj.GanhoAnual:setHorzTextAlign("center");
    obj.GanhoAnual:setFontSize(18);

    obj.edit237 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit237:setParent(obj.scrollBox8);
    obj.edit237:setLeft(187);
    obj.edit237:setTop(213);
    obj.edit237:setWidth(50);
    obj.edit237:setHeight(25);
    obj.edit237:setHorzTextAlign("center");
    obj.edit237:setType("number");
    obj.edit237:setFontSize(18);
    obj.edit237:setEnabled(true);
    obj.edit237:setField("BonusGanhoAnual");
    obj.edit237:setName("edit237");

    obj.edit238 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit238:setParent(obj.scrollBox8);
    obj.edit238:setLeft(10);
    obj.edit238:setTop(270);
    obj.edit238:setReadOnly(true);
    obj.edit238:setWidth(140);
    obj.edit238:setHeight(25);
    obj.edit238:setHorzTextAlign("center");
    obj.edit238:setFontSize(18);
    obj.edit238:setEnabled(true);
    obj.edit238:setField("BingoBook");
    obj.edit238:setName("edit238");

    obj.comboBox12 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox12:setParent(obj.scrollBox8);
    obj.comboBox12:setLeft(110);
    obj.comboBox12:setTop(300);
    obj.comboBox12:setField("Moradia");
    obj.comboBox12:setItems({'Primaria', 'Barata', 'Media', 'Cara', 'Aluguel'});
    obj.comboBox12:setName("comboBox12");

    obj.edit239 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit239:setParent(obj.scrollBox8);
    obj.edit239:setLeft(280);
    obj.edit239:setTop(298);
    obj.edit239:setWidth(50);
    obj.edit239:setHeight(25);
    obj.edit239:setHorzTextAlign("center");
    obj.edit239:setFontSize(18);
    obj.edit239:setField("MoradiaNpc");
    obj.edit239:setName("edit239");

    obj.edit240 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit240:setParent(obj.scrollBox8);
    obj.edit240:setLeft(10);
    obj.edit240:setTop(380);
    obj.edit240:setWidth(40);
    obj.edit240:setHeight(25);
    obj.edit240:setHorzTextAlign("center");
    obj.edit240:setFontSize(18);
    obj.edit240:setEnabled(true);
    obj.edit240:setField("Bonus1d10");
    obj.edit240:setName("edit240");

    obj.edit241 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit241:setParent(obj.scrollBox8);
    obj.edit241:setLeft(60);
    obj.edit241:setTop(380);
    obj.edit241:setWidth(40);
    obj.edit241:setHeight(25);
    obj.edit241:setHorzTextAlign("center");
    obj.edit241:setFontSize(18);
    obj.edit241:setEnabled(true);
    obj.edit241:setField("Bonus2d10");
    obj.edit241:setName("edit241");

    obj.edit242 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit242:setParent(obj.scrollBox8);
    obj.edit242:setLeft(120);
    obj.edit242:setTop(380);
    obj.edit242:setWidth(40);
    obj.edit242:setHeight(25);
    obj.edit242:setHorzTextAlign("center");
    obj.edit242:setFontSize(18);
    obj.edit242:setEnabled(true);
    obj.edit242:setField("Bonus3d10");
    obj.edit242:setName("edit242");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.scrollBox8);
    obj.rectangle14:setLeft(180);
    obj.rectangle14:setTop(379);
    obj.rectangle14:setWidth(40);
    obj.rectangle14:setHeight(30);
    obj.rectangle14:setColor("black");
    obj.rectangle14:setStrokeColor("red");
    obj.rectangle14:setStrokeSize(3);
    obj.rectangle14:setName("rectangle14");

    obj.edit243 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit243:setParent(obj.scrollBox8);
    obj.edit243:setLeft(180);
    obj.edit243:setTop(380);
    obj.edit243:setWidth(40);
    obj.edit243:setHeight(25);
    obj.edit243:setTransparent(true);
    obj.edit243:setHorzTextAlign("center");
    obj.edit243:setEnabled(true);
    obj.edit243:setFontSize(18);
    obj.edit243:setField("Bonus1d20");
    obj.edit243:setName("edit243");

    obj.image29 = GUI.fromHandle(_obj_newObject("image"));
    obj.image29:setParent(obj.scrollBox8);
    obj.image29:setLeft(23);
    obj.image29:setTop(478);
    obj.image29:setWidth(146);
    obj.image29:setHeight(116);
    obj.image29:setEditable(false);
    obj.image29:setStyle("autoFit");
    lfm_setPropAsString(obj.image29, "animate",  "true");
    obj.image29:setSRC("https://nrpg-generations.weebly.com/uploads/6/9/2/9/69297201/dcfb772c-9d26-4c05-afd8-9914ebf7c06a_orig.gif");
    obj.image29:setName("image29");

    obj.image30 = GUI.fromHandle(_obj_newObject("image"));
    obj.image30:setParent(obj.scrollBox8);
    obj.image30:setLeft(222);
    obj.image30:setTop(478);
    obj.image30:setWidth(146);
    obj.image30:setHeight(116);
    obj.image30:setEditable(false);
    obj.image30:setStyle("autoFit");
    lfm_setPropAsString(obj.image30, "animate",  "true");
    obj.image30:setSRC("https://i.kym-cdn.com/photos/images/original/001/010/923/060.gif");
    obj.image30:setName("image30");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.scrollBox8);
    obj.dataLink15:setFields({'Graduacao', 'BonusGanhoAnual'});
    obj.dataLink15:setName("dataLink15");

    obj.button40 = GUI.fromHandle(_obj_newObject("button"));
    obj.button40:setParent(obj.scrollBox8);
    obj.button40:setLeft(23);
    obj.button40:setTop(478);
    obj.button40:setWidth(146);
    obj.button40:setHeight(116);
    obj.button40:setOpacity(0.1);
    obj.button40:setText("");
    obj.button40:setName("button40");

    obj.POPTreino = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPTreino:setParent(obj.scrollBox8);
    obj.POPTreino:setName("POPTreino");
    obj.POPTreino:setVisible(false);
    obj.POPTreino:setLeft(1);
    obj.POPTreino:setTop(40);
    obj.POPTreino:setWidth(900);
    obj.POPTreino:setHeight(600);

    obj.scrollBox9 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox9:setParent(obj.POPTreino);
    obj.scrollBox9:setAlign("client");
    obj.scrollBox9:setName("scrollBox9");

    obj.image31 = GUI.fromHandle(_obj_newObject("image"));
    obj.image31:setParent(obj.scrollBox9);
    obj.image31:setTop(1);
    obj.image31:setWidth(870);
    obj.image31:setHeight(705);
    obj.image31:setSRC("/imagens/5.png");
    obj.image31:setName("image31");

    obj.button41 = GUI.fromHandle(_obj_newObject("button"));
    obj.button41:setParent(obj.scrollBox9);
    obj.button41:setText("Novo Treinamento");
    obj.button41:setWidth(125);
    obj.button41:setHeight(40);
    obj.button41:setLeft(70);
    obj.button41:setTop(10);
    obj.button41:setName("button41");

    obj.rclListadeTreino = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListadeTreino:setParent(obj.scrollBox9);
    obj.rclListadeTreino:setName("rclListadeTreino");
    obj.rclListadeTreino:setField("Jutsus");
    obj.rclListadeTreino:setTemplateForm("frmTreinosJutsus1");
    obj.rclListadeTreino:setWidth(880);
    obj.rclListadeTreino:setHeight(570);
    obj.rclListadeTreino:setLeft(10);
    obj.rclListadeTreino:setTop(60);
    obj.rclListadeTreino:setSelectable(true);

    obj.dsbListadeTreino = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.dsbListadeTreino:setParent(obj.scrollBox9);
    obj.dsbListadeTreino:setName("dsbListadeTreino");
    obj.dsbListadeTreino:setVisible(false);
    obj.dsbListadeTreino:setWidth(480);
    obj.dsbListadeTreino:setHeight(580);
    obj.dsbListadeTreino:setLeft(400);
    obj.dsbListadeTreino:setTop(60);

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.dsbListadeTreino);
    obj.rectangle15:setColor("black");
    obj.rectangle15:setXradius(10);
    obj.rectangle15:setYradius(10);
    obj.rectangle15:setWidth(460);
    obj.rectangle15:setHeight(560);
    obj.rectangle15:setLeft(1);
    obj.rectangle15:setTop(1);
    obj.rectangle15:setName("rectangle15");

    obj.label90 = GUI.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.rectangle15);
    obj.label90:setWidth(120);
    obj.label90:setHeight(40);
    obj.label90:setLeft(10);
    obj.label90:setTop(10);
    obj.label90:setFontFamily("Nyala");
    obj.label90:setFontSize(20);
    obj.label90:setText("Nome do Jutsu:");
    obj.label90:setName("label90");

    obj.edit244 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit244:setParent(obj.rectangle15);
    obj.edit244:setWidth(310);
    obj.edit244:setHeight(30);
    obj.edit244:setLeft(130);
    obj.edit244:setTop(15);
    obj.edit244:setField("JutsuTreinando");
    obj.edit244:setName("edit244");

    obj.textEditor15 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor15:setParent(obj.rectangle15);
    obj.textEditor15:setLeft(10);
    obj.textEditor15:setTop(60);
    obj.textEditor15:setWidth(430);
    obj.textEditor15:setHeight(280);
    obj.textEditor15:setField("DescriTreinandoJutsu");
    obj.textEditor15:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor15:setName("textEditor15");

    obj.label91 = GUI.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.rectangle15);
    obj.label91:setLeft(140);
    obj.label91:setTop(350);
    obj.label91:setWidth(230);
    obj.label91:setHeight(40);
    obj.label91:setFontFamily("Nyala");
    obj.label91:setFontSize(18);
    obj.label91:setText("Fortificação de jutsu 3D10 e 1d20");
    obj.label91:setName("label91");

    obj.edit245 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit245:setParent(obj.rectangle15);
    obj.edit245:setLeft(140);
    obj.edit245:setTop(385);
    obj.edit245:setWidth(50);
    obj.edit245:setHeight(30);
    obj.edit245:setType("number");
    obj.edit245:setMin(1);
    obj.edit245:setMax(9);
    obj.edit245:setEnabled(false);
    obj.edit245:setHorzTextAlign("center");
    obj.edit245:setField("Treina1d10");
    obj.edit245:setName("edit245");

    obj.edit246 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit246:setParent(obj.rectangle15);
    obj.edit246:setLeft(200);
    obj.edit246:setTop(385);
    obj.edit246:setWidth(50);
    obj.edit246:setHeight(30);
    obj.edit246:setType("number");
    obj.edit246:setMin(1);
    obj.edit246:setMax(9);
    obj.edit246:setEnabled(false);
    obj.edit246:setHorzTextAlign("center");
    obj.edit246:setField("Treina2d10");
    obj.edit246:setName("edit246");

    obj.edit247 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit247:setParent(obj.rectangle15);
    obj.edit247:setLeft(260);
    obj.edit247:setTop(385);
    obj.edit247:setWidth(50);
    obj.edit247:setHeight(30);
    obj.edit247:setType("number");
    obj.edit247:setMin(1);
    obj.edit247:setMax(9);
    obj.edit247:setEnabled(false);
    obj.edit247:setHorzTextAlign("center");
    obj.edit247:setField("Treina3d10");
    obj.edit247:setName("edit247");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.rectangle15);
    obj.rectangle16:setLeft(320);
    obj.rectangle16:setTop(385);
    obj.rectangle16:setWidth(50);
    obj.rectangle16:setHeight(30);
    obj.rectangle16:setColor("black");
    obj.rectangle16:setStrokeColor("red");
    obj.rectangle16:setStrokeSize(3);
    obj.rectangle16:setName("rectangle16");

    obj.edit248 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit248:setParent(obj.rectangle15);
    obj.edit248:setLeft(320);
    obj.edit248:setTop(385);
    obj.edit248:setWidth(50);
    obj.edit248:setHeight(30);
    obj.edit248:setType("number");
    obj.edit248:setMin(1);
    obj.edit248:setMax(18);
    obj.edit248:setEnabled(false);
    obj.edit248:setTransparent(true);
    obj.edit248:setHorzTextAlign("center");
    obj.edit248:setField("Treina1d20");
    obj.edit248:setName("edit248");

    obj.edit249 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit249:setParent(obj.rectangle15);
    obj.edit249:setLeft(140);
    obj.edit249:setTop(420);
    obj.edit249:setWidth(50);
    obj.edit249:setHeight(30);
    obj.edit249:setType("number");
    obj.edit249:setMin(1);
    obj.edit249:setMax(9);
    obj.edit249:setEnabled(true);
    obj.edit249:setVisible(false);
    obj.edit249:setHorzTextAlign("center");
    obj.edit249:setField("Treina1d10Soma");
    obj.edit249:setName("edit249");

    obj.edit250 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit250:setParent(obj.rectangle15);
    obj.edit250:setLeft(200);
    obj.edit250:setTop(420);
    obj.edit250:setWidth(50);
    obj.edit250:setHeight(30);
    obj.edit250:setType("number");
    obj.edit250:setMin(1);
    obj.edit250:setMax(9);
    obj.edit250:setEnabled(true);
    obj.edit250:setVisible(false);
    obj.edit250:setHorzTextAlign("center");
    obj.edit250:setField("Treina2d10Soma");
    obj.edit250:setName("edit250");

    obj.edit251 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit251:setParent(obj.rectangle15);
    obj.edit251:setLeft(260);
    obj.edit251:setTop(420);
    obj.edit251:setWidth(50);
    obj.edit251:setHeight(30);
    obj.edit251:setType("number");
    obj.edit251:setMin(1);
    obj.edit251:setMax(9);
    obj.edit251:setEnabled(true);
    obj.edit251:setVisible(false);
    obj.edit251:setHorzTextAlign("center");
    obj.edit251:setField("Treina3d10Soma");
    obj.edit251:setName("edit251");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.rectangle15);
    obj.rectangle17:setLeft(320);
    obj.rectangle17:setTop(420);
    obj.rectangle17:setWidth(50);
    obj.rectangle17:setHeight(30);
    obj.rectangle17:setColor("black");
    obj.rectangle17:setStrokeColor("red");
    obj.rectangle17:setVisible(false);
    obj.rectangle17:setStrokeSize(3);
    obj.rectangle17:setName("rectangle17");

    obj.edit252 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit252:setParent(obj.rectangle15);
    obj.edit252:setLeft(320);
    obj.edit252:setTop(420);
    obj.edit252:setWidth(50);
    obj.edit252:setHeight(30);
    obj.edit252:setType("number");
    obj.edit252:setMin(1);
    obj.edit252:setMax(18);
    obj.edit252:setEnabled(true);
    obj.edit252:setTransparent(true);
    obj.edit252:setVisible(false);
    obj.edit252:setHorzTextAlign("center");
    obj.edit252:setField("Treina1d20Soma");
    obj.edit252:setName("edit252");

    obj.edit253 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit253:setParent(obj.rectangle15);
    obj.edit253:setLeft(140);
    obj.edit253:setTop(460);
    obj.edit253:setWidth(50);
    obj.edit253:setHeight(30);
    obj.edit253:setType("number");
    obj.edit253:setMin(1);
    obj.edit253:setMax(9);
    obj.edit253:setEnabled(true);
    obj.edit253:setVisible(false);
    obj.edit253:setHorzTextAlign("center");
    obj.edit253:setField("Treina1d10Erro");
    obj.edit253:setName("edit253");

    obj.edit254 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit254:setParent(obj.rectangle15);
    obj.edit254:setLeft(200);
    obj.edit254:setTop(460);
    obj.edit254:setWidth(50);
    obj.edit254:setHeight(30);
    obj.edit254:setType("number");
    obj.edit254:setMin(1);
    obj.edit254:setMax(9);
    obj.edit254:setEnabled(true);
    obj.edit254:setVisible(false);
    obj.edit254:setHorzTextAlign("center");
    obj.edit254:setField("Treina2d10Erro");
    obj.edit254:setName("edit254");

    obj.edit255 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit255:setParent(obj.rectangle15);
    obj.edit255:setLeft(260);
    obj.edit255:setTop(460);
    obj.edit255:setWidth(50);
    obj.edit255:setHeight(30);
    obj.edit255:setType("number");
    obj.edit255:setMin(1);
    obj.edit255:setMax(9);
    obj.edit255:setEnabled(true);
    obj.edit255:setVisible(false);
    obj.edit255:setHorzTextAlign("center");
    obj.edit255:setField("Treina3d10Erro");
    obj.edit255:setName("edit255");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.rectangle15);
    obj.rectangle18:setLeft(320);
    obj.rectangle18:setTop(460);
    obj.rectangle18:setWidth(50);
    obj.rectangle18:setHeight(30);
    obj.rectangle18:setColor("black");
    obj.rectangle18:setStrokeColor("red");
    obj.rectangle18:setVisible(false);
    obj.rectangle18:setStrokeSize(3);
    obj.rectangle18:setName("rectangle18");

    obj.edit256 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit256:setParent(obj.rectangle15);
    obj.edit256:setLeft(320);
    obj.edit256:setTop(460);
    obj.edit256:setWidth(50);
    obj.edit256:setHeight(30);
    obj.edit256:setType("number");
    obj.edit256:setMin(1);
    obj.edit256:setMax(18);
    obj.edit256:setEnabled(true);
    obj.edit256:setVisible(false);
    obj.edit256:setTransparent(true);
    obj.edit256:setHorzTextAlign("center");
    obj.edit256:setField("Treina1d20Erro");
    obj.edit256:setName("edit256");

    obj.btnTreinar = GUI.fromHandle(_obj_newObject("button"));
    obj.btnTreinar:setParent(obj.rectangle15);
    obj.btnTreinar:setName("btnTreinar");
    obj.btnTreinar:setLeft(60);
    obj.btnTreinar:setTop(385);
    obj.btnTreinar:setWidth(70);
    obj.btnTreinar:setHeight(30);
    obj.btnTreinar:setFontFamily("Nyala");
    obj.btnTreinar:setFontSize(18);
    obj.btnTreinar:setText("Treinar");


										local function TreinaJutsu() 
																			
										self.btnTreinar.visible = false;
										local node = self.dsbListadeTreino.node;									
										local mesaDoPersonagem = rrpg.getMesaDe(sheet);	
										
										node.Treina1d10Erro = node.Treina1d10Erro or 0;
										node.Treina2d10Erro = node.Treina2d10Erro or 0;
										node.Treina3d10Erro = node.Treina3d10Erro or 0;
										node.Treina1d20Erro = node.Treina1d20Erro or 0;
										
										node.Treina1d10Soma = node.Treina1d10Soma or 0;
										node.Treina2d10Soma = node.Treina2d10Soma or 0;
										node.Treina3d10Soma = node.Treina3d10Soma or 0;
										node.Treina1d20Soma = node.Treina1d20Soma or 0;	
										
										if node.Treina1d10 < 0 then
											node.Treina1d10 = 1;
										end;
										
										if node.Treina2d10 < 0 then
											node.Treina2d10 = 1;
										end;
										
										if node.Treina3d10 < 0 then
											node.Treina3d10 = 1;
										end;
										
										if node.Treina1d20 < 0 then
											node.Treina1d20 = 5;
										end;
										
										node.Treina1d10 = (tonumber(sheet.Bonus1d10) or 0) + (tonumber(node.Treina1d10Soma) or 0) + (tonumber(node.Treina1d10Erro) or 0);
										node.Treina2d10 = (tonumber(sheet.Bonus2d10) or 0) + (tonumber(node.Treina2d10Soma) or 0) + (tonumber(node.Treina2d10Erro) or 0);
										node.Treina3d10 = (tonumber(sheet.Bonus3d10) or 0) + (tonumber(node.Treina3d10Soma) or 0) + (tonumber(node.Treina3d10Erro) or 0);
										node.Treina1d20 = (tonumber(sheet.Bonus1d20) or 0) + (tonumber(node.Treina1d20Soma) or 0) + (tonumber(node.Treina1d20Erro) or 0);
																												
										if node.Treina1d10 > 9 then
											node.Treina1d10 = 9;
										end;
										
										if node.Treina2d10 > 9 then
											node.Treina2d10 = 9;
										end;
										
										if node.Treina3d10 > 9 then
											node.Treina3d10 = 9;
										end;
										
										if node.Treina1d20 > 18 then
											node.Treina1d20 = 18;
										end;	
										
										mesaDoPersonagem.chat:rolarDados("1d10", "[§K3]Treinamento de Jutsu",
										function (rolado)
										if node.DescriTreinandoJutsu == nil then
											showMessage("Falta Descrição do Jutsu ou não irá funcionar");
											self.btnTreinar.visible = true;
										else 
											mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. node.DescriTreinandoJutsu);										
												if node.Treina1d10 >= rolado.resultado then
													mesaDoPersonagem.chat:enviarMensagem(".. [§K3] Sucesso");
													mesaDoPersonagem.chat:rolarDados("1d10", "[§K3]Segunda Tentativa",
													function (rolado)	
														if node.Treina2d10 >= rolado.resultado then
															mesaDoPersonagem.chat:enviarMensagem(".. [§K3] Sucesso");
															mesaDoPersonagem.chat:rolarDados("1d10", "[§K3]Terceira Tentativa",
															function (rolado)
																if node.Treina3d10 >= rolado.resultado then
																	mesaDoPersonagem.chat:enviarMensagem(".. [§K3] Sucesso");
																	mesaDoPersonagem.chat:rolarDados("1d20", "[§K3]Tentativa de Execução Final",
																	function (rolado)
																		if node.Treina1d20 >= rolado.resultado then
																			mesaDoPersonagem.chat:enviarMensagem(".. [§K3] Aprendeu o Jutsu");										
																			mesaDoPersonagem.chat:enviarMensagem("[§I https://ns-rpg.weebly.com/uploads/2/5/1/4/25140777/644651_orig.gif]");
																			self.btnTreinar.visible = true;	
																		else 
																			mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Ultima");
																			node.Treina1d20Erro =  node.Treina1d20Erro + 1;
																			node.Treina1d20 = (tonumber(sheet.Bonus1d20) or 0) + (tonumber(node.Treina1d20Soma) or 0) + (tonumber(node.Treina1d20Erro) or 0);
																			self.btnTreinar.visible = true;	
																		end;
																	end);	
																else
																	mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Terceira");
																	node.Treina3d10Erro =  node.Treina3d10Erro + 1;
																	node.Treina3d10 = (tonumber(sheet.Bonus3d10) or 0) + (tonumber(node.Treina3d10Soma) or 0) + (tonumber(node.Treina3d10Erro) or 0);
																	self.btnTreinar.visible = true;																
																end;
															end);
														else
															mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Segunda");
															node.Treina2d10Erro =  node.Treina2d10Erro + 1;														
															node.Treina2d10 = (tonumber(sheet.Bonus2d10) or 0) + (tonumber(node.Treina2d10Soma) or 0) + (tonumber(node.Treina2d10Erro) or 0);
															self.btnTreinar.visible = true;														
														end;												
													end)
												else
													mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Primeira");
													node.Treina1d10Erro =  node.Treina1d10Erro + 1;
													node.Treina1d10 = (tonumber(sheet.Bonus1d10) or 0) + (tonumber(node.Treina1d10Soma) or 0) + (tonumber(node.Treina1d10Erro) or 0);
													self.btnTreinar.visible = true;
												end;
											end;
										end);										
									end;	
									


    obj.button42 = GUI.fromHandle(_obj_newObject("button"));
    obj.button42:setParent(obj.scrollBox8);
    obj.button42:setLeft(222);
    obj.button42:setTop(478);
    obj.button42:setWidth(146);
    obj.button42:setHeight(116);
    obj.button42:setOpacity(0.1);
    obj.button42:setText("");
    obj.button42:setName("button42");

    obj.POPAmizade = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPAmizade:setParent(obj.scrollBox8);
    obj.POPAmizade:setName("POPAmizade");
    obj.POPAmizade:setVisible(false);
    obj.POPAmizade:setLeft(1);
    obj.POPAmizade:setTop(40);
    obj.POPAmizade:setWidth(750);
    obj.POPAmizade:setHeight(350);

    obj.scrollBox10 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox10:setParent(obj.POPAmizade);
    obj.scrollBox10:setAlign("client");
    obj.scrollBox10:setName("scrollBox10");

    obj.image32 = GUI.fromHandle(_obj_newObject("image"));
    obj.image32:setParent(obj.scrollBox10);
    obj.image32:setLeft(-5);
    obj.image32:setTop(60);
    obj.image32:setWidth(410);
    obj.image32:setStyle("stretch");
    obj.image32:setHeight(250);
    obj.image32:setSRC("/imagens/imgAmizade.png");
    obj.image32:setName("image32");

    obj.button43 = GUI.fromHandle(_obj_newObject("button"));
    obj.button43:setParent(obj.scrollBox10);
    obj.button43:setText("Nova Amizade");
    obj.button43:setWidth(125);
    obj.button43:setHeight(40);
    obj.button43:setLeft(70);
    obj.button43:setTop(10);
    obj.button43:setName("button43");

    obj.rclNivelAmizade = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclNivelAmizade:setParent(obj.scrollBox10);
    obj.rclNivelAmizade:setName("rclNivelAmizade");
    obj.rclNivelAmizade:setField("Amizades");
    obj.rclNivelAmizade:setTemplateForm("frmNivelAmizade");
    obj.rclNivelAmizade:setWidth(392);
    obj.rclNivelAmizade:setHeight(220);
    obj.rclNivelAmizade:setLeft(10);
    obj.rclNivelAmizade:setTop(80);
    obj.rclNivelAmizade:setSelectable(true);

    obj.dsbNivelAmizade = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.dsbNivelAmizade:setParent(obj.scrollBox10);
    obj.dsbNivelAmizade:setName("dsbNivelAmizade");
    obj.dsbNivelAmizade:setVisible(false);
    obj.dsbNivelAmizade:setWidth(340);
    obj.dsbNivelAmizade:setHeight(220);
    obj.dsbNivelAmizade:setLeft(402);
    obj.dsbNivelAmizade:setTop(80);

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.dsbNivelAmizade);
    obj.rectangle19:setColor("White");
    obj.rectangle19:setXradius(10);
    obj.rectangle19:setYradius(10);
    obj.rectangle19:setWidth(340);
    obj.rectangle19:setHeight(220);
    obj.rectangle19:setLeft(1);
    obj.rectangle19:setTop(1);
    obj.rectangle19:setName("rectangle19");

    obj.image33 = GUI.fromHandle(_obj_newObject("image"));
    obj.image33:setParent(obj.rectangle19);
    obj.image33:setLeft(1);
    obj.image33:setTop(10);
    obj.image33:setWidth(330);
    obj.image33:setHeight(200);
    obj.image33:setSRC("/imagens/Amizade.png");
    obj.image33:setName("image33");

    obj.label92 = GUI.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.rectangle19);
    obj.label92:setLeft(144);
    obj.label92:setTop(69);
    obj.label92:setWidth(52);
    obj.label92:setHeight(20);
    obj.label92:setHorzTextAlign("center");
    obj.label92:setFontFamily("Nyala");
    obj.label92:setFontSize(14);
    obj.label92:setText("Nome");
    obj.label92:setName("label92");

    obj.edit257 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit257:setParent(obj.rectangle19);
    obj.edit257:setLeft(198);
    obj.edit257:setTop(69);
    obj.edit257:setWidth(100);
    obj.edit257:setHeight(20);
    obj.edit257:setHorzTextAlign("center");
    obj.edit257:setFontColor("black");
    obj.edit257:setTransparent(true);
    obj.edit257:setField("NivelAmizade");
    obj.edit257:setName("edit257");

    obj.label93 = GUI.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.rectangle19);
    obj.label93:setLeft(144);
    obj.label93:setTop(89);
    obj.label93:setWidth(52);
    obj.label93:setHeight(20);
    obj.label93:setHorzTextAlign("center");
    obj.label93:setFontFamily("Nyala");
    obj.label93:setFontSize(12);
    obj.label93:setText("Parentesco");
    obj.label93:setName("label93");

    obj.edit258 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit258:setParent(obj.rectangle19);
    obj.edit258:setLeft(198);
    obj.edit258:setTop(89);
    obj.edit258:setWidth(100);
    obj.edit258:setHeight(20);
    obj.edit258:setHorzTextAlign("center");
    obj.edit258:setFontColor("black");
    obj.edit258:setTransparent(true);
    obj.edit258:setField("Parentesco");
    obj.edit258:setName("edit258");

    obj.label94 = GUI.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.rectangle19);
    obj.label94:setLeft(144);
    obj.label94:setTop(109);
    obj.label94:setWidth(52);
    obj.label94:setHeight(20);
    obj.label94:setHorzTextAlign("center");
    obj.label94:setFontFamily("Nyala");
    obj.label94:setFontSize(14);
    obj.label94:setText("Amizade");
    obj.label94:setName("label94");

    obj.edit259 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit259:setParent(obj.rectangle19);
    obj.edit259:setLeft(198);
    obj.edit259:setTop(109);
    obj.edit259:setWidth(100);
    obj.edit259:setHeight(20);
    obj.edit259:setHorzTextAlign("center");
    obj.edit259:setFontColor("black");
    obj.edit259:setType("number");
    obj.edit259:setMax(100);
    obj.edit259:setTransparent(true);
    obj.edit259:setField("NVAmizade");
    obj.edit259:setName("edit259");

    obj.label95 = GUI.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.rectangle19);
    obj.label95:setLeft(144);
    obj.label95:setTop(129);
    obj.label95:setWidth(52);
    obj.label95:setHeight(20);
    obj.label95:setHorzTextAlign("center");
    obj.label95:setFontFamily("Nyala");
    obj.label95:setFontSize(14);
    obj.label95:setText("Extra");
    obj.label95:setName("label95");

    obj.edit260 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit260:setParent(obj.rectangle19);
    obj.edit260:setLeft(198);
    obj.edit260:setTop(129);
    obj.edit260:setWidth(100);
    obj.edit260:setHeight(20);
    obj.edit260:setHorzTextAlign("center");
    obj.edit260:setFontColor("black");
    obj.edit260:setMax(100);
    obj.edit260:setTransparent(true);
    obj.edit260:setField("AmizadeExtra");
    obj.edit260:setName("edit260");

    obj.image34 = GUI.fromHandle(_obj_newObject("image"));
    obj.image34:setParent(obj.rectangle19);
    obj.image34:setLeft(40);
    obj.image34:setTop(57);
    obj.image34:setWidth(89);
    obj.image34:setHeight(114);
    obj.image34:setEditable(true);
    obj.image34:setStyle("autoFit");
    obj.image34:setField("imgAmizade");
    obj.image34:setName("image34");

    obj.tab5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl1);
    obj.tab5:setTitle("Historia");
    obj.tab5:setName("tab5");

    obj.scrollBox11 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox11:setParent(obj.tab5);
    obj.scrollBox11:setAlign("client");
    obj.scrollBox11:setName("scrollBox11");

    obj.image35 = GUI.fromHandle(_obj_newObject("image"));
    obj.image35:setParent(obj.scrollBox11);
    obj.image35:setLeft(1);
    obj.image35:setTop(1);
    obj.image35:setWidth(1000);
    obj.image35:setHeight(700);
    obj.image35:setSRC("/imagens/4.png");
    obj.image35:setName("image35");

    obj.richEdit2 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit2:setParent(obj.scrollBox11);
    obj.richEdit2:setLeft(85);
    obj.richEdit2:setTop(140);
    obj.richEdit2:setWidth(440);
    obj.richEdit2:setHeight(545);
    lfm_setPropAsString(obj.richEdit2, "backgroundColor",  "#00000000");
    lfm_setPropAsString(obj.richEdit2, "defaultFontColor",  "white");
    obj.richEdit2:setField("Kutchyose");
    obj.richEdit2:setName("richEdit2");

    obj._e_event0 = obj:addEventListener("onNodeReady",
        function (_)
            if sheet.Nome == nil then
            			sheet.cla = "Sem clã";
            			sheet.Graduacao = "Academico";
            			sheet.Moradia = "Primaria";
            			sheet.Idade = (tonumber(sheet.Idade) or 0);
            			sheet.Elemento = (tonumber(sheet.Elemento) or 0);
            			sheet.Yen = (tonumber(sheet.Yen) or 0);
            			sheet.Forca = (tonumber(sheet.Forca) or 0);
            			sheet.Inteligencia = (tonumber(sheet.Inteligencia) or 0);
            			sheet.Sabedoria = (tonumber(sheet.Sabedoria) or 0);
            			sheet.Habilidade = (tonumber(sheet.Habilidade) or 0);
            			sheet.Resistencia = (tonumber(sheet.Resistencia) or 0);
            			sheet.TaiTotal = (tonumber(sheet.TaiTotal) or 0);
            			sheet.NinTotal = (tonumber(sheet.NinTotal) or 0);
            			sheet.GenTotal = (tonumber(sheet.GenTotal) or 0);
            			sheet.DanoArmado = (tonumber(sheet.DanoArmado) or 0);
            			sheet.Elemental1 = (tonumber(sheet.Elemental1) or 0);
            			sheet.HPTotal = (tonumber(sheet.HPTotal) or 0);
            			sheet.ChakraTotal = (tonumber(sheet.ChakraTotal) or 0);
            			sheet.ReiatsuTotal = (tonumber(sheet.ReiatsuTotal) or 0);
            			sheet.OutrosTotal = (tonumber(sheet.OutrosTotal) or 0);
            			sheet.DanoJutsu = (tonumber(sheet.DanoJutsu) or 0);
            			sheet.DanoJutsu2 = (tonumber(sheet.DanoJutsu2) or 0);
            			sheet.energiaTotal = (tonumber(sheet.energiaTotal) or 0);
            			sheet.DanoJutsu3 = (tonumber(sheet.DanoJutsu3) or 0);
            			sheet.CustoJutsu = (tonumber(sheet.CustoJutsu) or 0);
            			sheet.CustoJutsu2 = (tonumber(sheet.CustoJutsu2) or 0);
            			sheet.CustoJutsu3 = (tonumber(sheet.CustoJutsu3) or 0);
            			sheet.Tipo = (tonumber(sheet.Tipo) or 0);
            			sheet.Tipo2 = (tonumber(sheet.Tipo2) or 0);
            			sheet.Tipo3 = (tonumber(sheet.Tipo3) or 0);
            			sheet.Intensidade = (tonumber(sheet.Intensidade) or 0);
            			sheet.Intensidade2 = (tonumber(sheet.Intensidade2) or 0);
            			sheet.Intensidade3 = (tonumber(sheet.Intensidade3) or 0);
            			sheet.LevelJutsu = (tonumber(sheet.LevelJutsu) or 0);
            			sheet.LevelJutsu2 = (tonumber(sheet.LevelJutsu2) or 0);
            			sheet.LevelJutsu3 = (tonumber(sheet.LevelJutsu3) or 0);
            			sheet.DanoKunai = (tonumber(sheet.DanoKunai) or 0);
            			sheet.DanoShuriken = (tonumber(sheet.DanoShuriken) or 0);
            			sheet.DanoShurikenFuuma = (tonumber(sheet.DanoShurikenFuuma) or 0);
            			sheet.DanoKunaiGigante = (tonumber(sheet.DanoKunaiGigante) or 0);
            			sheet.Marionete = (tonumber(sheet.Marionete) or 0);
            			sheet.KunaiLimite = (tonumber(sheet.KunaiLimite) or 0);
            			sheet.ShurikenLimite = (tonumber(sheet.ShurikenLimite) or 0);
            			sheet.SFuumaLimite = (tonumber(sheet.SFuumaLimite) or 0);
            			sheet.KGiganteLimite = (tonumber(sheet.KGiganteLimite) or 0);
            			sheet.PB = (tonumber(sheet.PB) or 0);
            			sheet.GinsoExplosivo = (tonumber(sheet.GinsoExplosivo) or 0);
            			sheet.Veneno = (tonumber(sheet.Veneno) or 0);
            			sheet.Bandagem = (tonumber(sheet.Bandagem) or 0);
            			sheet.BF = (tonumber(sheet.BF) or 0);
            			sheet.PBombaLimite = (tonumber(sheet.PBombaLimite) or 0);
            			sheet.GExplosivoLimite = (tonumber(sheet.GExplosivoLimite) or 0);
            			sheet.VenenoLimite = (tonumber(sheet.VenenoLimite) or 0);
            			sheet.BandagemLimite = (tonumber(sheet.BandagemLimite) or 0);
            			sheet.BombaFumacaLimite = (tonumber(sheet.BombaFumacaLimite) or 0);
            			sheet.DTaijutsu = (tonumber(sheet.DTaijutsu) or 0);
            			sheet.DNinjutsu = (tonumber(sheet.DNinjutsu) or 0);
            			sheet.DGenjutsu = (tonumber(sheet.DGenjutsu) or 0);
            			sheet.DDA = (tonumber(sheet.DDA) or 0);
            			sheet.DDE = (tonumber(sheet.DDE) or 0);
            			sheet.DHP = (tonumber(sheet.DHP) or 0);
            			sheet.DChakra = (tonumber(sheet.DChakra) or 0);
            			sheet.DReiatsu = (tonumber(sheet.DReiatsu) or 0);
            			sheet.DOutro = (tonumber(sheet.DOutro) or 0);
            			sheet.DAcertoTai = (tonumber(sheet.DAcertoTai) or 0);
            			sheet.DAcertoNin = (tonumber(sheet.DAcertoNin) or 0);
            			sheet.DAcertoGen = (tonumber(sheet.DAcertoGen) or 0);
            			sheet.DBloqueio = (tonumber(sheet.DBloqueio) or 0);
            			sheet.DEsquiva = (tonumber(sheet.DEsquiva) or 0);
            			sheet.DCriticalTai = (tonumber(sheet.DCriticalTai) or 0);
            			sheet.DCriticalNin = (tonumber(sheet.DCriticalNin) or 0);
            			sheet.DCriticalGen = (tonumber(sheet.DCriticalGen) or 0);
            			sheet.ChakraBiju = (tonumber(sheet.ChakraBiju) or 0);
            			sheet.ChakraBranco = (tonumber(sheet.ChakraBranco) or 0);
            			sheet.ChakraPreto = (tonumber(sheet.ChakraPreto) or 0);
            			sheet.Hadou = (tonumber(sheet.Hadou) or 0);
            			sheet.HadouNegro = (tonumber(sheet.HadouNegro) or 0);
            			sheet.ChakraNatural = (tonumber(sheet.ChakraNatural) or 0);
            			sheet.ChakraRoxo = (tonumber(sheet.ChakraRoxo) or 0);
            			sheet.IntensidadeP1 = (tonumber(sheet.IntensidadeP1) or 0);
            			sheet.CustoPerga1 = (tonumber(sheet.CustoPerga1) or 0);
            			sheet.TipoPergaminho1 = (tonumber(sheet.TipoPergaminho1) or 0);
            			sheet.IntensidadeP2 = (tonumber(sheet.IntensidadeP2) or 0);
            			sheet.CustoPerga2 = (tonumber(sheet.CustoPerga2) or 0);
            			sheet.TipoPergaminho2 = (tonumber(sheet.TipoPergaminho2) or 0);
            			sheet.IntensidadeP3 = (tonumber(sheet.IntensidadeP3) or 0);
            			sheet.CustoPerga3 = (tonumber(sheet.CustoPerga3) or 0);
            			sheet.TipoPergaminho3 = (tonumber(sheet.TipoPergaminho3) or 0);
            			sheet.AcertoTaiTotal = (tonumber(sheet.AcertoTaiTotal) or 0);
            			sheet.AcertoNinTotal = (tonumber(sheet.AcertoNinTotal) or 0);
            			sheet.AcertoGenTotal = (tonumber(sheet.AcertoGenTotal) or 0);
            			sheet.EsquivaTotal = (tonumber(sheet.EsquivaTotal) or 0);
            			sheet.BloqueioTotal = (tonumber(sheet.BloqueioTotal) or 0);
            			sheet.CRTaiTotal = (tonumber(sheet.CRTaiTotal) or 0);
            			sheet.CRNinTotal = (tonumber(sheet.CRNinTotal) or 0);
            			sheet.CRGenTotal = (tonumber(sheet.CRGenTotal) or 0);
            			sheet.TurnoTotal = (tonumber(sheet.TurnoTotal) or 0);
            			sheet.DShurikenTotal = (tonumber(sheet.DShurikenTotal) or 0);
            			sheet.DKunaiTotal = (tonumber(sheet.DKunaiTotal) or 0);
            			sheet.DPBTotal = (tonumber(sheet.DPBTotal) or 0);
            			sheet.DEETotal = (tonumber(sheet.DEETotal) or 0);
            			sheet.DVenenoTotal = (tonumber(sheet.DVenenoTotal) or 0);
            			sheet.GAcertoTai = (tonumber(sheet.GAcertoTai) or 0);
            			sheet.GAcertoNin = (tonumber(sheet.GAcertoNin) or 0);
            			sheet.GAcertoGen = (tonumber(sheet.GAcertoGen) or 0);
            			sheet.GEsquiva = (tonumber(sheet.GEsquiva) or 0);
            			sheet.GBloqueio = (tonumber(sheet.GBloqueio) or 0);
            			sheet.GCRTai = (tonumber(sheet.GCRTai) or 0);
            			sheet.GCRNin = (tonumber(sheet.GCRNin) or 0);
            			sheet.GCRGen = (tonumber(sheet.GCRGen) or 0);
            			sheet.GTurno = (tonumber(sheet.GTurno) or 0);
            			sheet.CTai = (tonumber(sheet.CTai) or 0);
            			sheet.CNin = (tonumber(sheet.CNin) or 0);	
            			sheet.CGen = (tonumber(sheet.CGen) or 0);
            			sheet.CDA = (tonumber(sheet.CDA) or 0);
            			sheet.CDE = (tonumber(sheet.CDE) or 0);
            			sheet.CHP = (tonumber(sheet.CHP) or 0);
            			sheet.CChakra = (tonumber(sheet.CChakra) or 0);
            			sheet.Taijutsu = (tonumber(sheet.Taijutsu) or 0);
            			sheet.Ninjutsu = (tonumber(sheet.Ninjutsu) or 0);
            			sheet.Genjutsu = (tonumber(sheet.Genjutsu) or 0);
            			sheet.DanoArmado = (tonumber(sheet.DanoArmado) or 0);
            			sheet.Elemental1 = (tonumber(sheet.Elemental1) or 0);
            			sheet.GHP = (tonumber(sheet.GHP) or 0);
            			sheet.GChakra = (tonumber(sheet.GChakra) or 0);
            			sheet.CAT = (tonumber(sheet.CAT) or 0);
            			sheet.CAN = (tonumber(sheet.CAN) or 0);
            			sheet.CAG = (tonumber(sheet.CAG) or 0);
            			sheet.CEsq = (tonumber(sheet.CEsq) or 0);
            			sheet.CBloq = (tonumber(sheet.CBloq) or 0);
            			sheet.CCRT = (tonumber(sheet.CCRT) or 0);
            			sheet.CCRN = (tonumber(sheet.CCRN) or 0);
            			sheet.CCRG = (tonumber(sheet.CCRG) or 0);
            			sheet.ExpTotal = 0;
            			sheet.Exp = 0;
            			sheet.Level = 1;
            			sheet.HP = (tonumber(sheet.HP) or 0);
            			sheet.Chakra = (tonumber(sheet.Chakra) or 0);
            			sheet.Reiatsu = (tonumber(sheet.Reiatsu) or 0);
            			sheet.Outros = (tonumber(sheet.Outros) or 0);
            			sheet.ArmaDT = (tonumber(sheet.ArmaDT) or 0);
            			sheet.ArmaDN = (tonumber(sheet.ArmaDN) or 0);
            			sheet.ArmaDG = (tonumber(sheet.ArmaDG) or 0);
            			sheet.ArmaDA = (tonumber(sheet.ArmaDA) or 0);
            			sheet.ArmaDE = (tonumber(sheet.ArmaDE) or 0);
            			sheet.ArmaHP = (tonumber(sheet.ArmaHP) or 0);
            			sheet.ArmaChakra = (tonumber(sheet.ArmaChakra) or 0);
            			sheet.BandanaHP = (tonumber(sheet.BandanaHP) or 0);
            			sheet.BandanaChakra = (tonumber(sheet.BandanaChakra) or 0);
            			sheet.BandanaReducao = (tonumber(sheet.BandanaReducao) or 0);
            			sheet.ColeteHP = (tonumber(sheet.ColeteHP) or 0);
            			sheet.ColeteChakra = (tonumber(sheet.ColeteChakra) or 0);
            			sheet.ColeteReducao = (tonumber(sheet.ColeteReducao) or 0);
            			sheet.AcessorioDT = (tonumber(sheet.AcessorioDT) or 0);
            			sheet.AcessorioDN = (tonumber(sheet.AcessorioDN) or 0);
            			sheet.AcessorioDG = (tonumber(sheet.AcessorioDG) or 0);
            			sheet.AcessorioDE = (tonumber(sheet.AcessorioDE) or 0);
            			sheet.AcessorioReiatsu = (tonumber(sheet.AcessorioReiatsu) or 0);
            			sheet.AcessorioHP = (tonumber(sheet.AcessorioHP) or 0);
            			sheet.AcessorioChakra = (tonumber(sheet.AcessorioChakra) or 0);
            			sheet.AcessorioOutros = (tonumber(sheet.AcessorioOutros) or 0);
            			sheet.SAtletismo = (tonumber(sheet.SAtletismo) or 0);
            			sheet.SRaciocinio = (tonumber(sheet.SRaciocinio) or 0);
            			sheet.SPercepcao = (tonumber(sheet.SPercepcao) or 0);
            			sheet.SFurtividade = (tonumber(sheet.SFurtividade) or 0);
            			sheet.SVigor = (tonumber(sheet.SVigor) or 0);			
            			sheet.Bonus1d10 = (tonumber(sheet.Bonus1d10) or 0);
            			sheet.Bonus1d20 = (tonumber(sheet.Bonus1d20) or 0);
            			sheet.Bonus2d10 = (tonumber(sheet.Bonus2d10) or 0);
            			sheet.Bonus3d10 = (tonumber(sheet.Bonus3d10) or 0);
            			sheet.GanhoAnual = (tonumber(sheet.GanhoAnual) or 0);
            			sheet.FormulaFinal = (tonumber(sheet.FormulaFinal) or 0);
            			sheet.BonusGanhoAnual = (tonumber(sheet.BonusGanhoAnual) or 0);
            			sheet.BonusGanhoAnualGraduacao = (tonumber(sheet.BonusGanhoAnualGraduacao) or 0);
            			sheet.MoradiaNpc = (tonumber(sheet.MoradiaNpc) or 0);			
            			sheet.RepFolha = (tonumber(sheet.RepFolha) or 0);
            			sheet.RepAreia = (tonumber(sheet.RepAreia) or 0);
            			sheet.RepNuvem = (tonumber(sheet.RepNuvem) or 0);
            			sheet.RepNevoa = (tonumber(sheet.RepNevoa) or 0);
            			sheet.RepPedra = (tonumber(sheet.RepPedra) or 0);
            			sheet.BingoBook = (tonumber(sheet.BingoBook) or 0);				
            			sheet.GHP = 100;
            			sheet.Nome = "Escolha o Nome";
            			sheet.Sequenci1 = true;
            			self.btnTreinar.visible = true;
            			showMessage("Escolha seu nome, clã e idade");
            		end;
        end, obj);

    obj._e_event1 = obj.button1:addEventListener("onClick",
        function (_)
            local mesaDoPersonagem = rrpg.getMesaDe(sheet);        
            						sheet.AcertoTaiTotal = tonumber(sheet.AcertoTaiTotal or 0);                        
            						mesaDoPersonagem.chat:rolarDados("1d100 ","[§K3]Tentativa de ataque fisico",
            							function (rolado)
            								if sheet.AcertoTaiTotal >= rolado.resultado then
            									if sheet.BatendoCom == 'Taijutsu' then
            										mesaDoPersonagem.chat:enviarMensagem("[§K3]Acertou o alvo com Taijutsu Causando [§K4]" .. sheet.TaiTotal);
            									else
            										mesaDoPersonagem.chat:enviarMensagem("[§K3]Acertou o alvo com sua Arma Causando [§K4]" .. sheet.DATotal);
            									end;
            								else
            									mesaDoPersonagem.chat:enviarMensagem("[§K4]O Oponente esquivou de seu ataque");
            								end;
            							local mesa = Firecast.getMesaDe(sheet); 
            							sheet.energiaTotal = mesa.meuJogador:getBarValue(4);
            							sheet.energiaTotal = tonumber(sheet.energiaTotal + 10);
            							mesa.meuJogador:requestSetBarValue(4, sheet.energiaTotal, nil);							
            						end);
        end, obj);

    obj._e_event2 = obj.button2:addEventListener("onClick",
        function (_)
            local mesaDoPersonagem = rrpg.getMesaDe(sheet);        
            						sheet.EsquivaTotal = tonumber(sheet.EsquivaTotal or 0);                        
            						mesaDoPersonagem.chat:rolarDados("1d100 ","[§K3]Tentativa de Esquiva",
            							function (rolado)
            								if sheet.EsquivaTotal >= rolado.resultado then
            									mesaDoPersonagem.chat:enviarMensagem("[§K3]Esquivou do ataque do oponente");
            								else
            									mesaDoPersonagem.chat:enviarMensagem("[§K4]O Oponente Acertou");
            								end;
            							local mesa = Firecast.getMesaDe(sheet); 
            							sheet.energiaTotal = mesa.meuJogador:getBarValue(4);
            							sheet.energiaTotal = tonumber(sheet.energiaTotal + 10);
            							mesa.meuJogador:requestSetBarValue(4, sheet.energiaTotal, nil);											
            						end);
        end, obj);

    obj._e_event3 = obj.button3:addEventListener("onClick",
        function (_)
            self.POPJutsu:show();
        end, obj);

    obj._e_event4 = obj.button4:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
            						-- Vamos inserir um novo item no nosso recordList                              
            						self.rclListaDosItens1:append();
        end, obj);

    obj._e_event5 = obj.rclListaDosItens1:addEventListener("onSelect",
        function (_)
            --[[
            						Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox 
            						(e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            						--]]                      
            						local node = self.rclListaDosItens1.selectedNode; 
            						self.ListaJutsus.node = node;                       
            						-- a caixa de detalhe só ficará visível se houver item selecionado
            						self.ListaJutsus.visible = (node ~= nil);
        end, obj);

    obj._e_event6 = obj.button5:addEventListener("onClick",
        function (_)
            local node = self.ListaJutsus.node;									
            									local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            									
            									if node.Tipo == nil then
            										showMessage("Escolha o tipo do seu jutsu e preencha com as informações");
            									else 	
            										sheet.AcertoNinTotal = tonumber(sheet.AcertoNinTotal) or 0;
            										
            										if node.DanoJutsu ~= nil then
            											node.DNVerdadeiro = tonumber(node.DanoJutsu)* 2^tonumber(node.LevelJutsu1 - 1); 
            										else
            											node.LevelJutsu1 = 1;
            										end;
            										
            										if node.Tipo == 'Tai' then
            											node.Intensidade = (tonumber(node.DNVerdadeiro) or 0) + (tonumber(sheet.TaiTotal) or 0);	
            										end;	
            										
            										if node.Tipo == 'Nin' then
            											node.Intensidade = (tonumber(node.DNVerdadeiro) or 0) + (tonumber(sheet.NinTotal) or 0);	
            										end;
            										
            										if node.Tipo == 'Gen' then
            											node.Intensidade = (tonumber(node.DNVerdadeiro) or 0) + (tonumber(sheet.GenTotal) or 0);	
            										end;
            										
            										if node.Tipo == 'Elemental' then
            											node.Intensidade = (tonumber(node.DNVerdadeiro) or 0) + (tonumber(sheet.EleTotal) or 0);	
            										end;
            										
            										if node.Tipo == 'DanoArmado' then
            											node.Intensidade = (tonumber(node.DNVerdadeiro) or 0) + (tonumber(sheet.DanoArmado) or 0);	
            										end;
            										
            										if node.Tipo == 'M/Tai' then
            											node.Intensidade = (tonumber(node.DNVerdadeiro) or 0) + (tonumber(sheet.TaiTotal / 2) or 0);	
            										end;
            										
            										if node.Tipo == 'M/Nin' then
            											node.Intensidade = (tonumber(node.DNVerdadeiro) or 0) + (tonumber(sheet.NinTotal / 2) or 0);	
            										end;
            										
            										if node.Tipo == 'M/Gen' then
            											node.Intensidade = (tonumber(node.DNVerdadeiro) or 0) + (tonumber(sheet.GenTotal / 2) or 0);	
            										end;
            										
            										if node.Tipo == 'M/Elemental' then
            											node.Intensidade = (tonumber(node.DNVerdadeiro) or 0) + (tonumber(sheet.EleTotal / 2) or 0);	
            										end;
            										
            										if node.Tipo == 'M/DA' then
            											node.Intensidade = (tonumber(node.DNVerdadeiro) or 0) + (tonumber(sheet.DanoArmado / 2) or 0);	
            										end;
            										
            										if node.Tipo == 'Selamento' then
            											node.Intensidade = 0;	
            										end;
            										
            										if node.Tipo == 'Outros' then
            											node.Intensidade = 0;
            										end;
            																			
            										mesaDoPersonagem.chat:rolarDados("1d100", "[§K3]Tentativa de executar Jutsu",
            										function (rolado)	
            											if sheet.AcertoNinTotal >= rolado.resultado then
            												mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. node.DescriJutsu);
            													
            												if node.Tipo == 'Tai'then
            													mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade .. "[§K3] »");
            												end;
            												
            												if node.Tipo == 'Nin'then
            													mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade .. "[§K3] »");
            												end;
            												
            												if node.Tipo == 'Gen'then
            													mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade .. "[§K3] »");
            												end;
            												
            												if node.Tipo == 'Elemental'then
            													mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade .. "[§K3] »");
            												end;
            												
            												if node.Tipo == 'DanoArmado'then
            													mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade .. "[§K3] »");
            												end;
            												
            												if node.Tipo == 'M/Tai'then
            													mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade .. "[§K3] »");
            												end;
            												
            												if node.Tipo == 'M/Nin'then
            													mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade .. "[§K3] »");
            												end;
            												
            												if node.Tipo == 'M/Gen'then
            													mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade .. "[§K3] »");
            												end;
            												
            												if node.Tipo == 'M/Elemental'then
            													mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade .. "[§K3] »");
            												end;
            												
            												if node.Tipo == 'M/DA'then
            													mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade .. "[§K3] »");
            												end;
            												
            												local mesa = Firecast.getMesaDe(sheet);
            												local ChakraPlayer = mesa.meuJogador:getBarValue(2);
            												node.ChakraPlayer = mesa.meuJogador:getBarValue(2);
            												node.ChakraPlayer = (tonumber(node.ChakraPlayer) or 0) - (tonumber(node.CustoJutsu) or 0);
            												mesa.meuJogador:requestSetBarValue(2, node.ChakraPlayer);
            											else
            												mesaDoPersonagem.chat:enviarMensagem("[§K4,0]TURURU, O Naruto pode ser duro as vezes [§I https://i0.wp.com/www.fatosdesconhecidos.com.br/wp-content/uploads/2018/11/Naruto_after_Jiraiyas_death.png?resize=600,450]");
            											end;
            										end);
            									end;
        end, obj);

    obj._e_event7 = obj.btnUparJutsu:addEventListener("onClick",
        function (_)
            UparJutsu()
        end, obj);

    obj._e_event8 = obj.button6:addEventListener("onClick",
        function (_)
            self.POPFavorito:show();
        end, obj);

    obj._e_event9 = obj.button7:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
            							-- Vamos inserir um novo item no nosso recordList                              
            							self.rclListaDosItens2:append();
        end, obj);

    obj._e_event10 = obj.rclListaDosItens2:addEventListener("onSelect",
        function (_)
            --[[
            							Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox (e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            						  --]]                      
            						  local node = self.rclListaDosItens2.selectedNode; 
            								 self.ListaJutsus2.node = node;                       
            						  -- a caixa de detalhe só ficará visível se houver item selecionado
            								  self.ListaJutsus2.visible = (node ~= nil);
        end, obj);

    obj._e_event11 = obj.button8:addEventListener("onClick",
        function (_)
            local node = self.ListaJutsus2.node;									
            									local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            									if node.Tipo2 == nil then
            										showMessage("Escolha o tipo do seu jutsu e preencha com as informações");
            									else 	
            										sheet.AcertoNinTotal = tonumber(sheet.AcertoNinTotal) or 0;
            										
            										if node.DanoJutsu2 ~= nil then
            											node.DNVerdadeiro2 = tonumber(node.DanoJutsu2)* 2^tonumber(node.LevelJutsu2 - 1); 
            										else
            											node.LevelJutsu2 = 1;
            										end;
            										
            										if node.Tipo2 == 'Tai' then
            											node.Intensidade2 = (tonumber(node.DNVerdadeiro2) or 0) + (tonumber(sheet.TaiTotal) or 0);	
            										end;	
            										
            										if node.Tipo2 == 'Nin' then
            											node.Intensidade2 = (tonumber(node.DNVerdadeiro2) or 0) + (tonumber(sheet.NinTotal) or 0);	
            										end;
            										
            										if node.Tipo2 == 'Gen' then
            											node.Intensidade2 = (tonumber(node.DNVerdadeiro2) or 0) + (tonumber(sheet.GenTotal) or 0);	
            										end;
            										
            										if node.Tipo2 == 'Elemental' then
            											node.Intensidade2 = (tonumber(node.DNVerdadeiro2) or 0) + (tonumber(sheet.EleTotal) or 0);	
            										end;
            										
            										if node.Tipo2 == 'DanoArmado' then
            											node.Intensidade2 = (tonumber(node.DNVerdadeiro2) or 0) + (tonumber(sheet.DanoArmado) or 0);	
            										end;
            										
            										if node.Tipo2 == 'M/Tai' then
            											node.Intensidade2 = (tonumber(node.DNVerdadeiro2) or 0) + (tonumber(sheet.TaiTotal / 2) or 0);	
            										end;
            										
            										if node.Tipo2 == 'M/Nin' then
            											node.Intensidade2 = (tonumber(node.DNVerdadeiro2) or 0) + (tonumber(sheet.NinTotal / 2) or 0);	
            										end;
            										
            										if node.Tipo2 == 'M/Gen' then
            											node.Intensidade2 = (tonumber(node.DNVerdadeiro2) or 0) + (tonumber(sheet.GenTotal / 2) or 0);	
            										end;
            										
            										if node.Tipo2 == 'M/Elemental' then
            											node.Intensidade2 = (tonumber(node.DNVerdadeiro2) or 0) + (tonumber(sheet.EleTotal / 2) or 0);	
            										end;
            										
            										if node.Tipo2 == 'M/DA' then
            											node.Intensidade2 = (tonumber(node.DNVerdadeiro2) or 0) + (tonumber(sheet.DanoArmado / 2) or 0);	
            										end;
            										
            										if node.Tipo2 == 'Selamento' then
            											node.Intensidade2 = 0;	
            										end;
            										
            										if node.Tipo2 == 'Outros' then
            											node.Intensidade2 = 0;
            										end;
            										
            										mesaDoPersonagem.chat:rolarDados("1d100", "[§K3]Tentativa de executar Jutsu",
            											function (rolado)	
            												if sheet.AcertoNinTotal >= rolado.resultado then
            													mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. node.DescriJutsu2);
            													
            													if node.Tipo2 == 'Tai'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade2 .. "[§K3,0] »");
            													end;
            													
            													if node.Tipo2 == 'Nin'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade2 .. "[§K3,0] »");
            													end;
            													
            													if node.Tipo2 == 'Gen'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade2 .. "[§K3,0] »");
            													end;
            													
            													if node.Tipo2 == 'Elemental'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade2 .. "[§K3,0] »");
            													end;
            													
            													if node.Tipo2 == 'DanoArmado'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade2 .. "[§K3] »");
            													end;
            													
            													if node.Tipo2 == 'M/Tai'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade2 .. "[§K3] »");
            													end;
            													
            													if node.Tipo2 == 'M/Nin'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade2 .. "[§K3] »");
            													end;
            													
            													if node.Tipo2 == 'M/Gen'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade2 .. "[§K3] »");
            													end;
            													
            													if node.Tipo2 == 'M/Elemental'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade2 .. "[§K3] »");
            													end;
            													
            													if node.Tipo2 == 'M/DA'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade2 .. "[§K3] »");
            													end;
            													
            													local mesa = Firecast.getMesaDe(sheet);
            													local ChakraPlayer2 = mesa.meuJogador:getBarValue(2);
            													node.ChakraPlayer2 = mesa.meuJogador:getBarValue(2);
            													node.ChakraPlayer2 = (tonumber(node.ChakraPlayer2) or 0) - (tonumber(node.CustoJutsu2) or 0);
            													mesa.meuJogador:requestSetBarValue(2, node.ChakraPlayer2);
            												else
            													mesaDoPersonagem.chat:enviarMensagem("[§K4,0]TURURU, O Naruto pode ser duro as vezes [§I https://i0.wp.com/www.fatosdesconhecidos.com.br/wp-content/uploads/2018/11/Naruto_after_Jiraiyas_death.png?resize=600,450]");
            												end;
            										end);
            									end;
        end, obj);

    obj._e_event12 = obj.btnUparJutsu2:addEventListener("onClick",
        function (_)
            UparJutsu2()
        end, obj);

    obj._e_event13 = obj.button9:addEventListener("onClick",
        function (_)
            self.POPKekegenkai:show();
        end, obj);

    obj._e_event14 = obj.button10:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
            						-- Vamos inserir um novo item no nosso recordList                              
            						self.rclListaDosItens3:append();
        end, obj);

    obj._e_event15 = obj.rclListaDosItens3:addEventListener("onSelect",
        function (_)
            --[[
            						Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox (e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            						--]]                      
            						local node = self.rclListaDosItens3.selectedNode; 
            						self.ListaJutsus3.node = node;                       
            						-- a caixa de detalhe só ficará visível se houver item selecionado
            						self.ListaJutsus3.visible = (node ~= nil);
        end, obj);

    obj._e_event16 = obj.button11:addEventListener("onClick",
        function (_)
            local node = self.ListaJutsus3.node;									
            									local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            									if node.Tipo3 == nil then
            										showMessage("Escolha o tipo do seu jutsu e preencha com as informações");
            									else 	
            										sheet.AcertoNinTotal = tonumber(sheet.AcertoNinTotal) or 0;
            										
            										if node.DanoJutsu3 ~= nil then
            											node.DNVerdadeiro3 = tonumber(node.DanoJutsu3)* 2^tonumber(node.LevelJutsu3 - 1); 
            										else
            											node.LevelJutsu3 = 1;
            										end;											
            										
            										if node.Tipo3 == 'Tai' then
            											node.Intensidade3 = (tonumber(node.DNVerdadeiro3) or 0) + (tonumber(sheet.TaiTotal) or 0);	
            										end;	
            										
            										if node.Tipo3 == 'Nin' then
            											node.Intensidade3 = (tonumber(node.DNVerdadeiro3) or 0) + (tonumber(sheet.NinTotal) or 0);	
            										end;
            										
            										if node.Tipo3 == 'Gen' then
            											node.Intensidade3 = (tonumber(node.DNVerdadeiro3) or 0) + (tonumber(sheet.GenTotal) or 0);	
            										end;
            										
            										if node.Tipo3 == 'Elemental' then
            											node.Intensidade3 = (tonumber(node.DNVerdadeiro3) or 0) + (tonumber(sheet.EleTotal) or 0);	
            										end;
            										
            										if node.Tipo3 == 'DanoArmado' then
            											node.Intensidade3 = (tonumber(node.DNVerdadeiro3) or 0) + (tonumber(sheet.DanoArmado) or 0);	
            										end;
            										
            										if node.Tipo3 == 'M/Tai' then
            											node.Intensidade3 = (tonumber(node.DNVerdadeiro3) or 0) + (tonumber(sheet.TaiTotal / 2) or 0);	
            										end;
            										
            										if node.Tipo3 == 'M/Nin' then
            											node.Intensidade3 = (tonumber(node.DNVerdadeiro3) or 0) + (tonumber(sheet.NinTotal / 2) or 0);	
            										end;
            										
            										if node.Tipo3 == 'M/Gen' then
            											node.Intensidade3 = (tonumber(node.DNVerdadeiro3) or 0) + (tonumber(sheet.GenTotal / 2) or 0);	
            										end;
            										
            										if node.Tipo3 == 'M/Elemental' then
            											node.Intensidade3 = (tonumber(node.DNVerdadeiro3) or 0) + (tonumber(sheet.EleTotal / 2) or 0);	
            										end;
            										
            										if node.Tipo3 == 'M/DA' then
            											node.Intensidade3 = (tonumber(node.DNVerdadeiro3) or 0) + (tonumber(sheet.DanoArmado / 2) or 0);	
            										end;
            										
            										if node.Tipo3 == 'Selamento' then
            											node.Intensidade3 = 0;	
            										end;
            										
            										if node.Tipo3 == 'Outros' then
            											node.Intensidade3 = 0;
            										end;
            										
            										mesaDoPersonagem.chat:rolarDados("1d100", "[§K3]Tentativa de executar Jutsu",
            											function (rolado)	
            												if sheet.AcertoNinTotal >= rolado.resultado then
            													mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. node.DescriJutsu3);
            													
            													if node.Tipo3 == 'Tai'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade3 .. "[§K3,0] »");
            													end;
            													
            													if node.Tipo3 == 'Nin'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade3 .. "[§K3,0] »");
            													end;
            													
            													if node.Tipo3 == 'Gen'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade3 .. "[§K3,0] »");
            													end;
            													
            													if node.Tipo3 == 'Elemental'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade3 .. "[§K3,0] »");
            													end;
            													
            													if node.Tipo3 == 'DanoArmado'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade3 .. "[§K3] »");
            													end;
            													
            													if node.Tipo3 == 'M/Tai'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade3 .. "[§K3] »");
            													end;
            													
            													if node.Tipo3 == 'M/Nin'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade3 .. "[§K3] »");
            													end;
            													
            													if node.Tipo3 == 'M/Gen'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade3 .. "[§K3] »");
            													end;
            													
            													if node.Tipo3 == 'M/Elemental'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade3 .. "[§K3] »");
            													end;
            													
            													if node.Tipo3 == 'M/DA'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade3 .. "[§K3] »");
            													end;
            																										
            													local mesa = Firecast.getMesaDe(sheet);
            													local ChakraPlayer3 = mesa.meuJogador:getBarValue(2);
            													node.ChakraPlayer3 = mesa.meuJogador:getBarValue(2);
            													node.ChakraPlayer3 = (tonumber(node.ChakraPlayer3) or 0) - (tonumber(node.CustoJutsu3) or 0);
            													mesa.meuJogador:requestSetBarValue(2, node.ChakraPlayer3);
            												else
            													mesaDoPersonagem.chat:enviarMensagem("[§K4,0]TURURU, O Naruto pode ser duro as vezes [§I https://i0.wp.com/www.fatosdesconhecidos.com.br/wp-content/uploads/2018/11/Naruto_after_Jiraiyas_death.png?resize=600,450]");
            												end;
            										end);
            									end;
        end, obj);

    obj._e_event17 = obj.btnUparJutsu3:addEventListener("onClick",
        function (_)
            UparJutsu3()
        end, obj);

    obj._e_event18 = obj.button12:addEventListener("onClick",
        function (_)
            sheet.Level = (tonumber(sheet.Level) or 0) - 1;
            				if 0 > sheet.Level then
            					sheet.Level = 0;
            				end;
            				
            				if sheet.Graduacao == 'Academico' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 100;
            				end;
            				
            				if sheet.Graduacao == 'Genin' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 200;
            				end;
            				
            				if sheet.Graduacao == 'Chunin' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 1000;		
            				end;
            				
            				if sheet.Graduacao == 'Jounin' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 5000;
            				end;
            				
            				if sheet.Graduacao == 'Anbu' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 10000;
            				end;
            			   
            				if sheet.Graduacao == 'AnbuNucleo' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 15000;
            				end;
            				
            				if sheet.Graduacao == 'Organização' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 20000;
            				end;				
            								
            				if sheet.Graduacao == 'GDE' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 30000;
            				end;				
            								
            				if sheet.Graduacao == 'Concelheiro' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 40000;
            				end;				
            								
            				if sheet.Graduacao == 'Kage' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 50000;
            				end;
        end, obj);

    obj._e_event19 = obj.button13:addEventListener("onClick",
        function (_)
            sheet.Level = (tonumber(sheet.Level) or 0) + 1;
            				
            				if sheet.Graduacao == 'Academico' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 100;
            				end;
            				
            				if sheet.Graduacao == 'Genin' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 200;
            				end;
            				
            				if sheet.Graduacao == 'Chunin' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 1000;			
            				end;
            				
            				if sheet.Graduacao == 'Jounin' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 5000;
            				end;
            				
            				if sheet.Graduacao == 'Anbu' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 10000;
            				end;
            			   
            				if sheet.Graduacao == 'AnbuNucleo' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 15000;
            				end;
            				
            				if sheet.Graduacao == 'Organização' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 20000;
            				end;				
            								
            				if sheet.Graduacao == 'GDE' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 30000;
            				end;				
            								
            				if sheet.Graduacao == 'Concelheiro' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 40000;
            				end;				
            								
            				if sheet.Graduacao == 'Kage' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 50000;
            				end;
        end, obj);

    obj._e_event20 = obj.button14:addEventListener("onClick",
        function (_)
            local mesa = Firecast.getMesaDe(sheet); 
            				local HPTotal = (tonumber(sheet.HPTotal) or 0);
            				mesa.meuJogador:requestSetBarValue(1, nil, HPTotal);
        end, obj);

    obj._e_event21 = obj.button15:addEventListener("onClick",
        function (_)
            local mesa = Firecast.getMesaDe(sheet); 
            				local ChakraTotal = (tonumber(sheet.ChakraTotal) or 0);
            				mesa.meuJogador:requestSetBarValue(2, nil, ChakraTotal);
        end, obj);

    obj._e_event22 = obj.button16:addEventListener("onClick",
        function (_)
            local mesa = Firecast.getMesaDe(sheet); 
            				local ReiatsuTotal = (tonumber(sheet.ReiatsuTotal) or 0);
            				mesa.meuJogador:requestSetBarValue(3, nil, ReiatsuTotal);
        end, obj);

    obj._e_event23 = obj.button17:addEventListener("onClick",
        function (_)
            self.PopTransformation:show();
        end, obj);

    obj._e_event24 = obj.ControlaTrans:addEventListener("onChange",
        function (_)
            if self.ControlaTrans.checked then
            					self.transformation.visible = false;
            					self.transformationDisable.visible = true;
            				else
            					self.transformation.visible = true;
            					self.transformationDisable.visible = false;
            				end;
        end, obj);

    obj._e_event25 = obj.button18:addEventListener("onClick",
        function (_)
            self.POPCALCULO:show();
        end, obj);

    obj._e_event26 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.Sequenci1 == true then
            					sheet.ExpTotal = (tonumber(sheet.Level) or 0) * 100;
            									
            					if sheet.Exp > sheet.ExpTotal then
            						sheet.Exp = (tonumber(sheet.Exp) or 0) - (tonumber(sheet.ExpTotal) or 0);
            						sheet.Level = (tonumber(sheet.Level) or 0) + 1;
            					end;	
            												
            					if sheet.Graduacao == 'Academico' then
            						sheet.GHP =  (tonumber(sheet.GHP) or 0) + 100;
            					end;
            					
            					if sheet.Graduacao == 'Genin' then
            						sheet.GHP =  (tonumber(sheet.GHP) or 0) + 200;
            					end;
            					
            					if sheet.Graduacao == 'Chunin' then
            						sheet.GHP =  (tonumber(sheet.GHP) or 0) + 1000;		
            					end;
            					
            					if sheet.Graduacao == 'Jounin' then
            						sheet.GHP =  (tonumber(sheet.GHP) or 0) + 5000;
            					end;
            					
            					if sheet.Graduacao == 'Anbu' then
            						sheet.GHP =  (tonumber(sheet.GHP) or 0) + 10000;
            					end;
            				   
            					if sheet.Graduacao == 'AnbuNucleo' then
            						sheet.GHP =  (tonumber(sheet.GHP) or 0) + 15000;
            					end;
            					
            					if sheet.Graduacao == 'Organização' then
            						sheet.GHP =  (tonumber(sheet.GHP) or 0) + 20000;
            					end;				
            									
            					if sheet.Graduacao == 'GDE' then
            						sheet.GHP =  (tonumber(sheet.GHP) or 0) + 30000;
            					end;				
            									
            					if sheet.Graduacao == 'Concelheiro' then
            						sheet.GHP =  (tonumber(sheet.GHP) or 0) + 40000;
            					end;				
            									
            					if sheet.Graduacao == 'Kage' then
            						sheet.GHP =  (tonumber(sheet.GHP) or 0) + 50000;
            					end;
            				end;
        end, obj);

    obj._e_event27 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.CTai = 0;
            				sheet.CNin = 0;
            				sheet.CGen = 0;
            				sheet.CDA = 0;
            				sheet.CDE = 0;
            				sheet.CHP = 0;
            				sheet.CChakra = 0;
            				sheet.CAT = 0;
            				sheet.CAN = 0;
            				sheet.CAG = 0;
            				sheet.CEsq = 0;
            				sheet.CBloq = 0;
            				sheet.CCRT = 0;
            				sheet.CCRN = 0;
            				sheet.CCRG = 0	;
        end, obj);

    obj._e_event28 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.Cla == 'Sem clã' then
            				end;
            				
            				if sheet.Cla == 'Aburame' then
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * -0.10;
            					sheet.CNin = (tonumber(sheet.Ninjutsu) or 0) * 0.15;
            				end;
            				
            				if sheet.Cla == 'Akimichi' then
            					sheet.CTai = (tonumber(sheet.Taijutsu) or 0) * 0.20;
            					sheet.CHP = (tonumber(sheet.HP) or 0) * 0.20;
            				end;			
            				
            				if sheet.Cla == 'Fuma' then
            					sheet.CCRN = 5;
            					sheet.CAN = 5;
            				end;
            				
            				if sheet.Cla == 'Hyuga' then
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.20;
            					sheet.CTai = (tonumber(sheet.Taijutsu) or 0) * 0.10;
            				end;
            				
            				if sheet.Cla == 'Inuzuka' then
            				end;
            				
            				if sheet.Cla == 'Jyuin' then
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.40;
            					sheet.CHP = (tonumber(sheet.HP) or 0) * 0.10;
            				end;
            				
            				if sheet.Cla == 'Kaguya' then
            					sheet.CHP = (tonumber(sheet.HP) or 0) * 0.10;
            					sheet.CBloq = 10;
            				end;
            				
            				if sheet.Cla == 'Kami' then
            					sheet.CNin = (tonumber(sheet.Ninjutsu) or 0) * 0.10;
            				end;
            
            				if sheet.Cla == 'Kamizurui' then
            					sheet.CAN = 5;
            					sheet.CCRN = 5;
            					sheet.CEsq = 3;
            				end;
            				
            				if sheet.Cla == 'Nara' then
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.20;
            					sheet.CNin = (tonumber(sheet.Ninjutsu) or 0) * 0.10;
            				end;
            				
            				if sheet.Cla == 'Uchiha' then
            					sheet.CGen = (tonumber(sheet.Genjutsu) or 0) * 0.10;
            				end;
            				
            				if sheet.Cla == 'Uzumaki' then
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 1;
            				end;
            				
            				if sheet.Cla == 'Yamanaka' then
            					sheet.CAT = 5;
            					sheet.CAN = 5;
            					sheet.CAG = 5; 
            				end;
            
            				if sheet.Cla == 'Rinnegan' then
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.30;
            					sheet.CHP = (tonumber(sheet.HP) or 0) * 0.15;
            				end;
            				
            				if sheet.Cla == '----------' then
            					showMessage("ESCOLHE UM CLÃ FILHA DA PUTA");
            				end;
            				
            				if sheet.Cla == 'Fire' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            				end;
            				
            				if sheet.Cla == 'Kibaku' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            				end;
            				
            				if sheet.Cla == 'Kori' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.10;
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.20;
            				end;
            				
            				if sheet.Cla == 'Mashido' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            				end;
            				
            				if sheet.Cla == 'Nomade' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            				end;
            			
            				if sheet.Cla == 'Orega' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            				end;
            				
            				if sheet.Cla == 'Ray' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            				end;
            			
            				if sheet.Cla == 'Sabaku' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.10;
            					sheet.CDA = (tonumber(sheet.DanoArmado) or 0) * 0.10;
            				end;
            				
            				if sheet.Cla == 'Senju' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            					sheet.CHP = (tonumber(sheet.HP) or 0) * 0.20;
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.30;
            				end;
            				
            				if sheet.Cla == 'Temuri' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.30;
            				end;
            				
            				if sheet.Cla == 'Xaulan' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.30;
            				end;								
            				------------------------------------------------------				
            				if sheet.Cla == 'Gote' then
            					sheet.CGen = (tonumber(sheet.Genjutsu) or 0) * 0.20;
            				end;
            				
            				if sheet.Cla == 'Hanbun' then
            					sheet.CTai = (tonumber(sheet.Taijutsu) or 0) * 0.50;
            					sheet.CNin = (tonumber(sheet.Ninjutsu) or 0) * 0.50;
            					sheet.CGen = (tonumber(sheet.Genjutsu) or 0) * 0.50;
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.50;
            					sheet.CDA = (tonumber(sheet.DanoArmado) or 0) * 0.50;
            					sheet.CHP = (tonumber(sheet.HP) or 0) * 0.50;
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.50;
            				end;
            				
            				if sheet.Cla == 'Kazumi' then
            					sheet.CNin = (tonumber(sheet.Ninjutsu) or 0) * 0.10;
            					sheet.CGen = (tonumber(sheet.Genjutsu) or 0) * 0.10;
            					sheet.CAG = 5;
            				end;
            
            				if sheet.Cla == 'Kouga' then
            				end;
            				
            				if sheet.Cla == 'Miroku' then
            				end;
            				
            				if sheet.Cla == 'Mitsu' then
            					sheet.CNin = (tonumber(sheet.Ninjutsu) or 0) * 0.10;
            				end;
            				
            				if sheet.Cla == 'Nakamura' then
            				end;
            				
            				if sheet.Cla == 'Natsume' then
            					sheet.CAT = 5;
            					sheet.CCRT = 5;
            					sheet.CBloq = 5;
            					sheet.CEsq = 3;
            				end;
            				
            				if sheet.Cla == 'Neko' then
            				end;
            				
            				if sheet.Cla == 'Neon' then
            					sheet.CNin = (tonumber(sheet.Ninjutsu) or 0) * 0.10;
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.30;
            					sheet.CAN = 5;
            					sheet.CCRN = 5;
            				end;
            				
            				if sheet.Cla == 'Shinkara' then
            					sheet.CHP = (tonumber(sheet.HP) or 0) * 0.10;
            				end;
            				
            				if sheet.Cla == '' then
            					sheet.CHP = (tonumber(sheet.HP) or 0) * 0.10;
            				end;
        end, obj);

    obj._e_event29 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.TipoOutro == 'ChakraBiju' then
            						sheet.Outros = (tonumber(sheet.ChakraBiju) or 0);
            						sheet.OutrosTotal = sheet.Outros;
            					end;
            					
            					if sheet.TipoOutro == 'ChakraBranco' then
            						sheet.Outros = (tonumber(sheet.ChakraBranco) or 0);
            						sheet.OutrosTotal = sheet.Outros;
            					end;
            					
            					if sheet.TipoOutro == 'ChakraPreto' then
            						sheet.Outros = (tonumber(sheet.ChakraPreto) or 0);
            						sheet.OutrosTotal = sheet.Outros;
            					end;
            					
            					if sheet.TipoOutro == 'Hadou' then
            						sheet.Outros = (tonumber(sheet.Hadou) or 0);
            						sheet.OutrosTotal = sheet.Outros;
            					end;
            					
            					if sheet.TipoOutro == 'HadouNegro' then
            						sheet.Outros = (tonumber(sheet.HadouNegro) or 0);
            						sheet.OutrosTotal = sheet.Outros;
            					end;
            				   
            					if sheet.TipoOutro == 'ChakraNatural' then
            						sheet.Outros = (tonumber(sheet.ChakraNatural) or 0);
            						sheet.OutrosTotal = sheet.Outros;
            					end;
            					
            					if sheet.TipoOutro == 'ChakraRoxo' then
            						sheet.Outros = (tonumber(sheet.ChakraRoxo) or 0);
            						sheet.OutrosTotal = sheet.Outros;
            					end;
        end, obj);

    obj._e_event30 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.ChakraNatural = (tonumber(sheet.ChakraTotal / 2) or 0);
        end, obj);

    obj._e_event31 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.Graduacao == 'Academico' then
            						sheet.GTurno = 1;
            					end;
            					
            					if sheet.Graduacao == 'Genin' then
            						sheet.GAcertoTai = 2;
            						sheet.GAcertoNin = 2;
            						sheet.GAcertoGen = 2;
            						sheet.GEsquiva = 2;
            						sheet.GBloqueio = 3;
            					end;
            					
            					if sheet.Graduacao == 'Chunin' then
            						sheet.GAcertoTai = 4;
            						sheet.GAcertoNin = 4;
            						sheet.GAcertoGen = 4;
            						sheet.GEsquiva = 4;
            						sheet.GBloqueio = 6;
            					end;
            					
            					if sheet.Graduacao == 'Jounin' then
            						sheet.GAcertoTai = 6;
            						sheet.GAcertoNin = 6;
            						sheet.GAcertoGen = 6;
            						sheet.GEsquiva = 6;
            						sheet.GBloqueio = 9;
            						sheet.GTurno = 2;
            						sheet.GCRTai = 3;
            						sheet.GCRNin = 3;
            						sheet.GCRGen = 3;
            					end;
            					
            					if sheet.Graduacao == 'Anbu' then
            						sheet.GAcertoTai = 8;
            						sheet.GAcertoNin = 8;
            						sheet.GAcertoGen = 8;
            						sheet.GEsquiva = 8;
            						sheet.GBloqueio = 12;
            					end;
            				   
            					if sheet.Graduacao == 'AnbuNucleo' then
            						sheet.GAcertoTai = 10;
            						sheet.GAcertoNin = 10;
            						sheet.GAcertoGen = 10;
            						sheet.GEsquiva = 10;
            						sheet.GBloqueio = 15;
            						sheet.GCRTai = 6;
            						sheet.GCRNin = 6;
            						sheet.GCRGen = 6;
            					end;
            					
            					if sheet.Graduacao == 'Organização' then
            						sheet.GAcertoTai = 12;
            						sheet.GAcertoNin = 12;
            						sheet.GAcertoGen = 12;
            						sheet.GEsquiva = 12;
            						sheet.GBloqueio = 18;
            					end;					
            									
            					if sheet.Graduacao == 'GDE' then
            						sheet.GAcertoTai = 14;
            						sheet.GAcertoNin = 14;
            						sheet.GAcertoGen = 14;
            						sheet.GEsquiva = 14;
            						sheet.GBloqueio = 21;
            						sheet.GCRTai = 9;
            						sheet.GCRNin = 9;
            						sheet.GCRGen = 9;
            					end;					
            									
            					if sheet.Graduacao == 'Concelheiro' then
            						sheet.GAcertoTai = 16;
            						sheet.GAcertoNin = 16;
            						sheet.GAcertoGen = 16;
            						sheet.GEsquiva = 16;
            						sheet.GBloqueio = 24;
            					end;					
            									
            					if sheet.Graduacao == 'Kage' then
            						sheet.GAcertoTai = 18;
            						sheet.GAcertoNin = 18;
            						sheet.GAcertoGen = 18;
            						sheet.GEsquiva = 20;
            						sheet.GBloqueio = 30;
            						sheet.GTurno = 3;
            						sheet.GCRTai = 14;
            						sheet.GCRNin = 14;
            						sheet.GCRGen = 14;
            					end;
        end, obj);

    obj._e_event32 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.Taijutsu = (tonumber(sheet.Forca) or 0) * 2;
            				sheet.Ninjutsu = (tonumber(sheet.Inteligencia) or 0) * 2;
            				sheet.Genjutsu = (tonumber(sheet.Sabedoria) or 0) * 2;
            				sheet.Elemental1 = (tonumber(sheet.Sabedoria) or 0) + (tonumber(sheet.Inteligencia) or 0);
            				sheet.DanoArmado = (tonumber(sheet.Forca) or 0) + (tonumber(sheet.Habilidade) or 0);
        end, obj);

    obj._e_event33 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TaiTotal = (tonumber(sheet.ArmaDT) or 0) + (tonumber(sheet.AcessorioDT) or 0) + (tonumber(sheet.DTaijutsu) or 0) + (tonumber(sheet.CTai) or 0) + (tonumber(sheet.Taijutsu) or 0);
            				sheet.NinTotal = (tonumber(sheet.ArmaDN) or 0) + (tonumber(sheet.AcessorioDN) or 0) + (tonumber(sheet.DNinjutsu) or 0) + (tonumber(sheet.CNin) or 0) + (tonumber(sheet.Ninjutsu) or 0);
            				sheet.GenTotal = (tonumber(sheet.ArmaDG) or 0) + (tonumber(sheet.AcessorioDG) or 0) + (tonumber(sheet.DGenjutsu) or 0) + (tonumber(sheet.CGen) or 0) + (tonumber(sheet.Genjutsu) or 0);
            				sheet.EleTotal = (tonumber(sheet.ArmaDE) or 0) + (tonumber(sheet.AcessorioDE) or 0) + (tonumber(sheet.DDE) or 0) + (tonumber(sheet.CDE) or 0) + (tonumber(sheet.Elemental1) or 0);
            				sheet.DATotal = (tonumber(sheet.ArmaDA) or 0) + (tonumber(sheet.DDA) or 0) + (tonumber(sheet.CDA) or 0) + (tonumber(sheet.DanoArmado) or 0);
            				sheet.TaiTotal = math.ceil(sheet.TaiTotal);
            				sheet.NinTotal = math.ceil(sheet.NinTotal);
            				sheet.GenTotal = math.ceil(sheet.GenTotal);
            				sheet.EleTotal = math.ceil(sheet.EleTotal);
            				sheet.DATotal = math.ceil(sheet.DATotal);
        end, obj);

    obj._e_event34 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.GHP = (tonumber(sheet.GHP) or 0);
            				sheet.HP = math.floor(tonumber(sheet.Resistencia) or 0) * 10 + (tonumber(sheet.GHP) or 0);
            				sheet.HPTotal = math.floor(tonumber(sheet.HP) or 0) + (tonumber(sheet.CHP) or 0) + (tonumber(sheet.DHP) or 0) + (tonumber(sheet.AcessorioHP) or 0)
             				+ (tonumber(sheet.ColeteHP) or 0) + (tonumber(sheet.BandanaHP) or 0) + (tonumber(sheet.ArmaHP) or 0);
        end, obj);

    obj._e_event35 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.Idade2 = (tonumber(sheet.Idade) or 0);		
            				if sheet.Idade2 > 40 then
            					sheet.Idade2 = 40;
            				end;
            				sheet.Chakra = (tonumber(sheet.Idade2) or 0) * 25  + (tonumber(sheet.Level) or 0);
            				sheet.ChakraTotal = math.floor(tonumber(sheet.Chakra) or 0) + (tonumber(sheet.ArmaChakra) or 0) + (tonumber(sheet.BandanaChakra) or 0) + 
            				(tonumber(sheet.ColeteChakra) or 0) + (tonumber(sheet.AcessorioChakra) or 0) + (tonumber(sheet.DChakra) or 0) + (tonumber(sheet.GChakra) or 0) + (tonumber(sheet.CChakra) or 0);
        end, obj);

    obj._e_event36 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.Reiatsu = (tonumber(sheet.TaiTotal) or 0) + (tonumber(sheet.NinTotal) or 0) + (tonumber(sheet.GenTotal) or 0) + 
            				(tonumber(sheet.DATotal) or 0) + (tonumber(sheet.EleTotal) or 0) + ( 10000 * (tonumber(sheet.Level) or 0));
            				sheet.ReiatsuTotal = (tonumber(sheet.Reiatsu) or 0) * 10 + (tonumber(sheet.DReiatsu) or 0);
        end, obj);

    obj._e_event37 = obj.button19:addEventListener("onClick",
        function (_)
            self.POPKunai:show();
        end, obj);

    obj._e_event38 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.DanoKunai = (tonumber(sheet.Habilidade) or 0);
            					sheet.DanoShuriken = (tonumber(sheet.Habilidade) or 0) * 0.50;
            					sheet.DanoShurikenFuuma = (tonumber(sheet.Habilidade) or 0) * 3;
            					sheet.DanoKunaiGigante = (tonumber(sheet.Habilidade) or 0) * 2;
            					sheet.Senbon = (tonumber(sheet.Habilidade) or 0) * 0.40;
            					
            					sheet.PB = (tonumber(sheet.Inteligencia) or 0);
            					sheet.GinsoExplosivo = (tonumber(sheet.Inteligencia) or 0) * 2;	
            					sheet.Veneno = (tonumber(sheet.Sabedoria) or 0);
            					sheet.Bandagem = (tonumber(sheet.Sabedoria) or 0) /2 + (tonumber(sheet.Inteligencia) or 0) /2 + (tonumber(sheet.Forca) or 0) /2;
        end, obj);

    obj._e_event39 = obj.button20:addEventListener("onClick",
        function (_)
            self.POPPB:show();
        end, obj);

    obj._e_event40 = obj.button21:addEventListener("onClick",
        function (_)
            self.POPDiverso:show();
        end, obj);

    obj._e_event41 = obj.button22:addEventListener("onClick",
        function (_)
            self.POPPergaminho1:show();
        end, obj);

    obj._e_event42 = obj.button23:addEventListener("onClick",
        function (_)
            Pergaminho1()
        end, obj);

    obj._e_event43 = obj.button24:addEventListener("onClick",
        function (_)
            self.POPPergaminho2:show();
        end, obj);

    obj._e_event44 = obj.button25:addEventListener("onClick",
        function (_)
            Pergaminho2()
        end, obj);

    obj._e_event45 = obj.button26:addEventListener("onClick",
        function (_)
            self.POPPergaminho3:show();
        end, obj);

    obj._e_event46 = obj.button27:addEventListener("onClick",
        function (_)
            Pergaminho3()
        end, obj);

    obj._e_event47 = obj.button28:addEventListener("onClick",
        function (_)
            self.EstilodeCombate:show();
        end, obj);

    obj._e_event48 = obj.button29:addEventListener("onClick",
        function (_)
            RolarTesteAtletismo()
        end, obj);

    obj._e_event49 = obj.button30:addEventListener("onClick",
        function (_)
            RolarTesteSabedoria()
        end, obj);

    obj._e_event50 = obj.button31:addEventListener("onClick",
        function (_)
            RolarTestePercepcao()
        end, obj);

    obj._e_event51 = obj.button32:addEventListener("onClick",
        function (_)
            RolarTesteAcrobacia()
        end, obj);

    obj._e_event52 = obj.button33:addEventListener("onClick",
        function (_)
            RolarTesteVigor()
        end, obj);

    obj._e_event53 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.Sequenci1 == true then	
            							if sheet.Atletismo == nil then
            								sheet.Atletismo = 0;
            							end;					
            							if sheet.Raciocinio == nil then
            								sheet.Raciocinio = 0;
            							end;						
            							if sheet.Percepcao == nil then
            								sheet.Percepcao = 0;
            							end;						
            							if sheet.Furtividade == nil then
            								sheet.Furtividade = 0;
            							end;						
            							if sheet.Vigor == nil then
            								sheet.Vigor = 0;
            							end;		
            								
            							if sheet.SAtletismo == nil then
            								sheet.SAtletismo = 0;
            							end;	
            							if sheet.SRaciocinio == nil then
            								sheet.SRaciocinio = 0;
            							end;	
            							if sheet.SPercepcao == nil then
            								sheet.SPercepcao = 0;
            							end;						
            							if sheet.SFurtividade == nil then
            								sheet.SFurtividade = 0;
            							end;	
            							if sheet.SVigor == nil then
            								sheet.SVigor = 0;
            							end;
            												
            							if sheet.GAtletismo == nil then
            								sheet.GAtletismo = 0;
            							end;	
            							if sheet.GRaciocinio == nil then
            								sheet.GRaciocinio = 0;
            							end;	
            							if sheet.GPercepcao == nil then
            								sheet.GPercepcao = 0;
            							end;						
            							if sheet.GFurtividade == nil then
            								sheet.GFurtividade = 0;
            							end;	
            							if sheet.GVigor == nil then
            								sheet.GVigor = 0;
            							end;
            							
            							if sheet.AtletismoTotal == nil then
            								sheet.AtletismoTotal = 0;
            							end;	
            							if sheet.RaciocinioTotal == nil then
            								sheet.RaciocinioTotal = 0;
            							end;	
            							if sheet.PercepcaoTotal == nil then
            								sheet.PercepcaoTotal = 0;
            							end;						
            							if sheet.FurtividadeTotal == nil then
            								sheet.FurtividadeTotal = 0;
            							end;	
            							if sheet.VigorTotal == nil then
            								sheet.VigorTotal = 0;
            							end;
            							
            							if sheet.Graduacao =='Genin' then
            								sheet.GAtletismo = 1;
            								sheet.GRaciocinio = 1;
            								sheet.GPercepcao = 1;
            								sheet.GFurtividade = 1;
            								sheet.GVigor = 1;
            							end;
            							
            							if sheet.Graduacao =='Jounin' then
            								sheet.GAtletismo = 2;
            								sheet.GRaciocinio = 2;
            								sheet.GPercepcao = 2;
            								sheet.GFurtividade = 2;
            								sheet.GVigor = 2;
            							end;
            							
            							if sheet.Graduacao =='Anbu Nucleo' then
            								sheet.GAtletismo = 3;
            								sheet.GRaciocinio = 3;
            								sheet.GPercepcao = 3;
            								sheet.GFurtividade = 3;
            								sheet.GVigor = 3;
            							end;
            							
            							if sheet.Graduacao =='GDE' then
            								sheet.GAtletismo = 4;
            								sheet.GRaciocinio = 4;
            								sheet.GPercepcao = 4;
            								sheet.GFurtividade = 4;
            								sheet.GVigor = 4;
            							end;
            							
            							if sheet.Graduacao =='Kage' then
            								sheet.GAtletismo = 6;
            								sheet.GRaciocinio = 6;
            								sheet.GPercepcao = 6;
            								sheet.GFurtividade = 6;
            								sheet.GVigor = 6;
            							end;
            							
            							if sheet.Forca >= 100000000 then
            								sheet.SAtletismo = 5;
            							elseif sheet.Forca >= 10000000 then
            								sheet.SAtletismo = 4;
            							elseif sheet.Forca >= 1000000 then
            								sheet.SAtletismo = 3;
            							elseif sheet.Forca >= 100000 then
            								sheet.SAtletismo = 2;
            							elseif sheet.Forca >= 10000 then
            								sheet.SAtletismo = 1;	
            							else
            								sheet.SVigor = 0;
            							end;	
            							
            							if sheet.Inteligencia >= 100000000 then
            								sheet.SRaciocinio = 5;
            							elseif sheet.Sabedoria >= 100000000 then
            								sheet.SRaciocinio = 5;	
            							elseif sheet.Inteligencia >= 10000000 then
            								sheet.SRaciocinio = 4;
            							elseif sheet.Sabedoria >= 10000000 then
            								sheet.SRaciocinio = 4;	
            							elseif sheet.Inteligencia >= 1000000 then
            								sheet.SRaciocinio = 3;
            							elseif sheet.Sabedoria >= 1000000 then
            								sheet.SRaciocinio = 3;	
            							elseif sheet.Inteligencia >= 100000 then
            								sheet.SRaciocinio = 2;
            							elseif sheet.Sabedoria >= 100000 then
            								sheet.SRaciocinio = 2;
            							elseif sheet.Sabedoria >= 10000 then
            								sheet.SRaciocinio = 1;	
            							elseif sheet.Inteligencia >= 10000 then
            								sheet.SRaciocinio = 1;	
            							else
            								sheet.SRaciocinio = 0;
            							end; 
            							
            							if sheet.Habilidade >= 500000000 then
            								sheet.SPercepcao = 5;
            								sheet.SFurtividade = 5;
            							elseif sheet.Habilidade >= 50000000 then
            								sheet.SPercepcao = 4;
            								sheet.SFurtividade = 4;
            							elseif sheet.Habilidade >= 5000000 then
            								sheet.SPercepcao = 3;
            								sheet.SFurtividade = 3;
            							elseif sheet.Habilidade >= 500000 then
            								sheet.SPercepcao = 2;
            								sheet.SFurtividade = 2;
            							elseif sheet.Habilidade >= 50000 then
            								sheet.SPercepcao = 1;	
            								sheet.SFurtividade = 1;
            							else 
            								sheet.SPercepcao = 0;
            								sheet.SFurtividade = 0;
            							end; 
            							
            							if sheet.Resistencia >= 100000000 then
            								sheet.SVigor = 5;
            							elseif sheet.Resistencia >= 10000000 then
            								sheet.SVigor = 4;
            							elseif sheet.Resistencia >= 1000000 then
            								sheet.SVigor = 3;
            							elseif sheet.Resistencia >= 100000 then
            								sheet.SVigor = 2;
            							elseif sheet.Resistencia >= 10000 then
            								sheet.SVigor = 1;	
            							else
            								sheet.SVigor = 0;
            							end;	
            
            							sheet.AtletismoTotal = tonumber(sheet.SAtletismo) + tonumber(sheet.GAtletismo) + tonumber(sheet.Atletismo);
            							sheet.RaciocinioTotal = tonumber(sheet.SRaciocinio) + tonumber(sheet.GRaciocinio) + tonumber(sheet.Raciocinio);
            							sheet.PercepcaoTotal = tonumber(sheet.SPercepcao) + tonumber(sheet.GPercepcao) + tonumber(sheet.Percepcao);
            							sheet.FurtividadeTotal = tonumber(sheet.SFurtividade) + tonumber(sheet.GFurtividade) + tonumber(sheet.Furtividade);
            							sheet.VigorTotal = tonumber(sheet.SVigor) + tonumber(sheet.GVigor) + tonumber(sheet.Vigor);
            						end;
        end, obj);

    obj._e_event54 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.AcertoTaiTotal = (tonumber(sheet.GAcertoTai) or 0) + (tonumber(sheet.CAT) or 0) + (tonumber(sheet.DAcertoTai) or 0) + 60;
            						sheet.AcertoNinTotal = (tonumber(sheet.GAcertoNin) or 0) + (tonumber(sheet.CAN) or 0) + (tonumber(sheet.DAcertoNin) or 0) + 60;	
            						sheet.AcertoGenTotal = (tonumber(sheet.GAcertoGen) or 0) + (tonumber(sheet.CAG) or 0) + (tonumber(sheet.DAcertoGen) or 0) + 60;
            						sheet.EsquivaTotal = (tonumber(sheet.GEsquiva) or 0) + (tonumber(sheet.CEsq) or 0) + (tonumber(sheet.DEsquiva) or 0) + 20;
            						sheet.BloqueioTotal = (tonumber(sheet.GBloqueio) or 0) + (tonumber(sheet.CBloq) or 0) + (tonumber(sheet.DBloqueio) or 0) + 30;
            						sheet.CRTaiTotal = (tonumber(sheet.GCRTai) or 0) + (tonumber(sheet.CCRT) or 0) + (tonumber(sheet.DCriticalTai) or 0) + 1;
            						sheet.CRNinTotal = (tonumber(sheet.GCRNin) or 0) + (tonumber(sheet.CCRN) or 0) + (tonumber(sheet.DCriticalNin) or 0) + 1;
            						sheet.CRGenTotal = (tonumber(sheet.GCRGen) or 0) + (tonumber(sheet.CCRG) or 0) + (tonumber(sheet.DCriticalGen) or 0) + 1;
            						sheet.TurnoTotal = (tonumber(sheet.GTurno) or 0) + 1;
            						
            						if sheet.AcertoTaiTotal > 90 then
            							sheet.AcertoTaiTotal = 90;
            						end;
            						
            						if sheet.AcertoNinTotal > 90 then
            							sheet.AcertoNinTotal = 90;
            						end;
            						
            						if sheet.AcertoGenTotal > 90 then
            							sheet.AcertoGenTotal = 90;
            						end;
        end, obj);

    obj._e_event55 = obj.button34:addEventListener("onClick",
        function (_)
            self.POPArma:show();
        end, obj);

    obj._e_event56 = obj.button35:addEventListener("onClick",
        function (_)
            self.POPBandana:show();
        end, obj);

    obj._e_event57 = obj.button36:addEventListener("onClick",
        function (_)
            self.POPColete:show();
        end, obj);

    obj._e_event58 = obj.button37:addEventListener("onClick",
        function (_)
            self.POPAcessorio:show();
        end, obj);

    obj._e_event59 = obj.button38:addEventListener("onClick",
        function (_)
            self.POPBAG:show();
        end, obj);

    obj._e_event60 = obj.button39:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
            								-- Vamos inserir um novo item no nosso recordList                              
            								self.rclListaDosItens4:append();
        end, obj);

    obj._e_event61 = obj.rclListaDosItens4:addEventListener("onSelect",
        function (_)
            --[[
            							Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox 
            							(e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            							--]]                      
            							local node = self.rclListaDosItens4.selectedNode; 
            							self.boxDetalhesDoItem.node = node;                       
            							-- a caixa de detalhe só ficará visível se houver item selecionado
            							self.boxDetalhesDoItem.visible = (node ~= nil);
        end, obj);

    obj._e_event62 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local BonusGanhoAnualGraduacao = nil
            						
            						if sheet.Graduacao == 'Jounin' then
            							sheet.BonusGanhoAnualGraduacao = 2000;
            						end;
            						
            						if sheet.Graduacao == 'Anbu' then
            							sheet.BonusGanhoAnualGraduacao = 3000;
            						end;
            						
            						if sheet.Graduacao == 'AnbuNucleo' then
            							sheet.BonusGanhoAnualGraduacao = 4000;
            						end;
            						
            						if sheet.Graduacao == 'Organização' then
            							sheet.BonusGanhoAnualGraduacao = 6000;
            						end;
            						
            						if sheet.Graduacao == 'GDE' then
            							sheet.BonusGanhoAnualGraduacao = 8000;
            						end;						
            						
            						if sheet.Graduacao == 'Concelheiro' then
            							sheet.BonusGanhoAnualGraduacao = 10000;
            						end;
            						
            						if sheet.Graduacao == 'Kage' then
            							sheet.BonusGanhoAnualGraduacao = 150000;
            						end;
            						
            						if sheet.BonusGanhoAnualGraduacao == nil then
            							sheet.BonusGanhoAnualGraduacao = 0;
            						end;
            						
            						if sheet.BonusGanhoAnual == nil then
            							sheet.BonusGanhoAnual = 0;
            						end;
            						
            						if sheet.porcentagemanual == nil then
            							sheet.porcentagemanual = 0;
            						end;			
            						
            						sheet.porcentagemanual = (tonumber(sheet.BonusGanhoAnual) /100);
            						
            						sheet.FormulaFinal = tonumber(sheet.BonusGanhoAnualGraduacao) * sheet.porcentagemanual;
            						
            						self.GanhoAnual.text = tonumber(sheet.BonusGanhoAnualGraduacao or 0) + tonumber(sheet.FormulaFinal or 0);
        end, obj);

    obj._e_event63 = obj.button40:addEventListener("onClick",
        function (_)
            self.POPTreino:show();
        end, obj);

    obj._e_event64 = obj.button41:addEventListener("onClick",
        function (_)
            self.rclListadeTreino:append();
        end, obj);

    obj._e_event65 = obj.rclListadeTreino:addEventListener("onSelect",
        function (_)
            --[[
            								Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox 
            								(e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            								--]]                      
            								local node = self.rclListadeTreino.selectedNode; 
            								self.dsbListadeTreino.node = node;                       
            								-- a caixa de detalhe só ficará visível se houver item selecionado
            								self.dsbListadeTreino.visible = (node ~= nil);
        end, obj);

    obj._e_event66 = obj.btnTreinar:addEventListener("onClick",
        function (_)
            TreinaJutsu()
        end, obj);

    obj._e_event67 = obj.button42:addEventListener("onClick",
        function (_)
            self.POPAmizade:show();
        end, obj);

    obj._e_event68 = obj.button43:addEventListener("onClick",
        function (_)
            self.rclNivelAmizade:append();
        end, obj);

    obj._e_event69 = obj.rclNivelAmizade:addEventListener("onSelect",
        function (_)
            --[[
            								Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox 
            								(e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            								--]]                      
            								local node = self.rclNivelAmizade.selectedNode; 
            								self.dsbNivelAmizade.node = node;                       
            								-- a caixa de detalhe só ficará visível se houver item selecionado
            								self.dsbNivelAmizade.visible = (node ~= nil);
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event69);
        __o_rrpgObjs.removeEventListenerById(self._e_event68);
        __o_rrpgObjs.removeEventListenerById(self._e_event67);
        __o_rrpgObjs.removeEventListenerById(self._e_event66);
        __o_rrpgObjs.removeEventListenerById(self._e_event65);
        __o_rrpgObjs.removeEventListenerById(self._e_event64);
        __o_rrpgObjs.removeEventListenerById(self._e_event63);
        __o_rrpgObjs.removeEventListenerById(self._e_event62);
        __o_rrpgObjs.removeEventListenerById(self._e_event61);
        __o_rrpgObjs.removeEventListenerById(self._e_event60);
        __o_rrpgObjs.removeEventListenerById(self._e_event59);
        __o_rrpgObjs.removeEventListenerById(self._e_event58);
        __o_rrpgObjs.removeEventListenerById(self._e_event57);
        __o_rrpgObjs.removeEventListenerById(self._e_event56);
        __o_rrpgObjs.removeEventListenerById(self._e_event55);
        __o_rrpgObjs.removeEventListenerById(self._e_event54);
        __o_rrpgObjs.removeEventListenerById(self._e_event53);
        __o_rrpgObjs.removeEventListenerById(self._e_event52);
        __o_rrpgObjs.removeEventListenerById(self._e_event51);
        __o_rrpgObjs.removeEventListenerById(self._e_event50);
        __o_rrpgObjs.removeEventListenerById(self._e_event49);
        __o_rrpgObjs.removeEventListenerById(self._e_event48);
        __o_rrpgObjs.removeEventListenerById(self._e_event47);
        __o_rrpgObjs.removeEventListenerById(self._e_event46);
        __o_rrpgObjs.removeEventListenerById(self._e_event45);
        __o_rrpgObjs.removeEventListenerById(self._e_event44);
        __o_rrpgObjs.removeEventListenerById(self._e_event43);
        __o_rrpgObjs.removeEventListenerById(self._e_event42);
        __o_rrpgObjs.removeEventListenerById(self._e_event41);
        __o_rrpgObjs.removeEventListenerById(self._e_event40);
        __o_rrpgObjs.removeEventListenerById(self._e_event39);
        __o_rrpgObjs.removeEventListenerById(self._e_event38);
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.edit213 ~= nil then self.edit213:destroy(); self.edit213 = nil; end;
        if self.edit150 ~= nil then self.edit150:destroy(); self.edit150 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.edit233 ~= nil then self.edit233:destroy(); self.edit233 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.edit226 ~= nil then self.edit226:destroy(); self.edit226 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.edit172 ~= nil then self.edit172:destroy(); self.edit172 = nil; end;
        if self.edit195 ~= nil then self.edit195:destroy(); self.edit195 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.POPCALCULO ~= nil then self.POPCALCULO:destroy(); self.POPCALCULO = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.edit76 ~= nil then self.edit76:destroy(); self.edit76 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.edit236 ~= nil then self.edit236:destroy(); self.edit236 = nil; end;
        if self.edit82 ~= nil then self.edit82:destroy(); self.edit82 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.button35 ~= nil then self.button35:destroy(); self.button35 = nil; end;
        if self.transformation ~= nil then self.transformation:destroy(); self.transformation = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.POPFavorito ~= nil then self.POPFavorito:destroy(); self.POPFavorito = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.POPPB ~= nil then self.POPPB:destroy(); self.POPPB = nil; end;
        if self.POPArma ~= nil then self.POPArma:destroy(); self.POPArma = nil; end;
        if self.button40 ~= nil then self.button40:destroy(); self.button40 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.edit183 ~= nil then self.edit183:destroy(); self.edit183 = nil; end;
        if self.btnTreinar ~= nil then self.btnTreinar:destroy(); self.btnTreinar = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.POPDiverso ~= nil then self.POPDiverso:destroy(); self.POPDiverso = nil; end;
        if self.scrollBox9 ~= nil then self.scrollBox9:destroy(); self.scrollBox9 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.comboBox10 ~= nil then self.comboBox10:destroy(); self.comboBox10 = nil; end;
        if self.edit156 ~= nil then self.edit156:destroy(); self.edit156 = nil; end;
        if self.edit245 ~= nil then self.edit245:destroy(); self.edit245 = nil; end;
        if self.textEditor15 ~= nil then self.textEditor15:destroy(); self.textEditor15 = nil; end;
        if self.button37 ~= nil then self.button37:destroy(); self.button37 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.image11 ~= nil then self.image11:destroy(); self.image11 = nil; end;
        if self.button36 ~= nil then self.button36:destroy(); self.button36 = nil; end;
        if self.dsbNivelAmizade ~= nil then self.dsbNivelAmizade:destroy(); self.dsbNivelAmizade = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.edit255 ~= nil then self.edit255:destroy(); self.edit255 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.button21 ~= nil then self.button21:destroy(); self.button21 = nil; end;
        if self.edit228 ~= nil then self.edit228:destroy(); self.edit228 = nil; end;
        if self.rclListadeTreino ~= nil then self.rclListadeTreino:destroy(); self.rclListadeTreino = nil; end;
        if self.edit115 ~= nil then self.edit115:destroy(); self.edit115 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.edit205 ~= nil then self.edit205:destroy(); self.edit205 = nil; end;
        if self.button26 ~= nil then self.button26:destroy(); self.button26 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.edit116 ~= nil then self.edit116:destroy(); self.edit116 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.edit77 ~= nil then self.edit77:destroy(); self.edit77 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.edit159 ~= nil then self.edit159:destroy(); self.edit159 = nil; end;
        if self.edit196 ~= nil then self.edit196:destroy(); self.edit196 = nil; end;
        if self.edit214 ~= nil then self.edit214:destroy(); self.edit214 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.ControlaTrans ~= nil then self.ControlaTrans:destroy(); self.ControlaTrans = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.edit220 ~= nil then self.edit220:destroy(); self.edit220 = nil; end;
        if self.comboBox11 ~= nil then self.comboBox11:destroy(); self.comboBox11 = nil; end;
        if self.edit260 ~= nil then self.edit260:destroy(); self.edit260 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.edit235 ~= nil then self.edit235:destroy(); self.edit235 = nil; end;
        if self.POPBandana ~= nil then self.POPBandana:destroy(); self.POPBandana = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.edit129 ~= nil then self.edit129:destroy(); self.edit129 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.edit142 ~= nil then self.edit142:destroy(); self.edit142 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.EstilodeCombate ~= nil then self.EstilodeCombate:destroy(); self.EstilodeCombate = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.edit251 ~= nil then self.edit251:destroy(); self.edit251 = nil; end;
        if self.rclListaDosItens1 ~= nil then self.rclListaDosItens1:destroy(); self.rclListaDosItens1 = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.image10 ~= nil then self.image10:destroy(); self.image10 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.edit99 ~= nil then self.edit99:destroy(); self.edit99 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.edit182 ~= nil then self.edit182:destroy(); self.edit182 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.button43 ~= nil then self.button43:destroy(); self.button43 = nil; end;
        if self.edit176 ~= nil then self.edit176:destroy(); self.edit176 = nil; end;
        if self.edit221 ~= nil then self.edit221:destroy(); self.edit221 = nil; end;
        if self.edit258 ~= nil then self.edit258:destroy(); self.edit258 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit124 ~= nil then self.edit124:destroy(); self.edit124 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit157 ~= nil then self.edit157:destroy(); self.edit157 = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.edit83 ~= nil then self.edit83:destroy(); self.edit83 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.button33 ~= nil then self.button33:destroy(); self.button33 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.edit223 ~= nil then self.edit223:destroy(); self.edit223 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.edit161 ~= nil then self.edit161:destroy(); self.edit161 = nil; end;
        if self.edit241 ~= nil then self.edit241:destroy(); self.edit241 = nil; end;
        if self.richEdit2 ~= nil then self.richEdit2:destroy(); self.richEdit2 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.edit74 ~= nil then self.edit74:destroy(); self.edit74 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.PopTransformation ~= nil then self.PopTransformation:destroy(); self.PopTransformation = nil; end;
        if self.POPKunai ~= nil then self.POPKunai:destroy(); self.POPKunai = nil; end;
        if self.edit134 ~= nil then self.edit134:destroy(); self.edit134 = nil; end;
        if self.edit247 ~= nil then self.edit247:destroy(); self.edit247 = nil; end;
        if self.image34 ~= nil then self.image34:destroy(); self.image34 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.image32 ~= nil then self.image32:destroy(); self.image32 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.edit121 ~= nil then self.edit121:destroy(); self.edit121 = nil; end;
        if self.POPAmizade ~= nil then self.POPAmizade:destroy(); self.POPAmizade = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.button28 ~= nil then self.button28:destroy(); self.button28 = nil; end;
        if self.edit163 ~= nil then self.edit163:destroy(); self.edit163 = nil; end;
        if self.edit199 ~= nil then self.edit199:destroy(); self.edit199 = nil; end;
        if self.scrollBox7 ~= nil then self.scrollBox7:destroy(); self.scrollBox7 = nil; end;
        if self.scrollBox11 ~= nil then self.scrollBox11:destroy(); self.scrollBox11 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.edit92 ~= nil then self.edit92:destroy(); self.edit92 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.button39 ~= nil then self.button39:destroy(); self.button39 = nil; end;
        if self.comboBox6 ~= nil then self.comboBox6:destroy(); self.comboBox6 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.edit100 ~= nil then self.edit100:destroy(); self.edit100 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.edit84 ~= nil then self.edit84:destroy(); self.edit84 = nil; end;
        if self.image25 ~= nil then self.image25:destroy(); self.image25 = nil; end;
        if self.button30 ~= nil then self.button30:destroy(); self.button30 = nil; end;
        if self.edit224 ~= nil then self.edit224:destroy(); self.edit224 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.edit249 ~= nil then self.edit249:destroy(); self.edit249 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit198 ~= nil then self.edit198:destroy(); self.edit198 = nil; end;
        if self.edit252 ~= nil then self.edit252:destroy(); self.edit252 = nil; end;
        if self.rclNivelAmizade ~= nil then self.rclNivelAmizade:destroy(); self.rclNivelAmizade = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit128 ~= nil then self.edit128:destroy(); self.edit128 = nil; end;
        if self.textEditor11 ~= nil then self.textEditor11:destroy(); self.textEditor11 = nil; end;
        if self.edit200 ~= nil then self.edit200:destroy(); self.edit200 = nil; end;
        if self.image35 ~= nil then self.image35:destroy(); self.image35 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.edit187 ~= nil then self.edit187:destroy(); self.edit187 = nil; end;
        if self.edit103 ~= nil then self.edit103:destroy(); self.edit103 = nil; end;
        if self.image12 ~= nil then self.image12:destroy(); self.image12 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.edit127 ~= nil then self.edit127:destroy(); self.edit127 = nil; end;
        if self.edit218 ~= nil then self.edit218:destroy(); self.edit218 = nil; end;
        if self.edit165 ~= nil then self.edit165:destroy(); self.edit165 = nil; end;
        if self.edit208 ~= nil then self.edit208:destroy(); self.edit208 = nil; end;
        if self.ListaJutsus2 ~= nil then self.ListaJutsus2:destroy(); self.ListaJutsus2 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.button32 ~= nil then self.button32:destroy(); self.button32 = nil; end;
        if self.edit145 ~= nil then self.edit145:destroy(); self.edit145 = nil; end;
        if self.edit181 ~= nil then self.edit181:destroy(); self.edit181 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.edit96 ~= nil then self.edit96:destroy(); self.edit96 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.comboBox7 ~= nil then self.comboBox7:destroy(); self.comboBox7 = nil; end;
        if self.button27 ~= nil then self.button27:destroy(); self.button27 = nil; end;
        if self.edit109 ~= nil then self.edit109:destroy(); self.edit109 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.button24 ~= nil then self.button24:destroy(); self.button24 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.edit174 ~= nil then self.edit174:destroy(); self.edit174 = nil; end;
        if self.edit250 ~= nil then self.edit250:destroy(); self.edit250 = nil; end;
        if self.edit152 ~= nil then self.edit152:destroy(); self.edit152 = nil; end;
        if self.edit133 ~= nil then self.edit133:destroy(); self.edit133 = nil; end;
        if self.image26 ~= nil then self.image26:destroy(); self.image26 = nil; end;
        if self.edit93 ~= nil then self.edit93:destroy(); self.edit93 = nil; end;
        if self.edit126 ~= nil then self.edit126:destroy(); self.edit126 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit225 ~= nil then self.edit225:destroy(); self.edit225 = nil; end;
        if self.btnUparJutsu ~= nil then self.btnUparJutsu:destroy(); self.btnUparJutsu = nil; end;
        if self.edit81 ~= nil then self.edit81:destroy(); self.edit81 = nil; end;
        if self.edit177 ~= nil then self.edit177:destroy(); self.edit177 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.btnUparJutsu3 ~= nil then self.btnUparJutsu3:destroy(); self.btnUparJutsu3 = nil; end;
        if self.edit166 ~= nil then self.edit166:destroy(); self.edit166 = nil; end;
        if self.scrollBox10 ~= nil then self.scrollBox10:destroy(); self.scrollBox10 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.edit184 ~= nil then self.edit184:destroy(); self.edit184 = nil; end;
        if self.POPKekegenkai ~= nil then self.POPKekegenkai:destroy(); self.POPKekegenkai = nil; end;
        if self.textEditor10 ~= nil then self.textEditor10:destroy(); self.textEditor10 = nil; end;
        if self.POPBAG ~= nil then self.POPBAG:destroy(); self.POPBAG = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.edit170 ~= nil then self.edit170:destroy(); self.edit170 = nil; end;
        if self.button41 ~= nil then self.button41:destroy(); self.button41 = nil; end;
        if self.edit155 ~= nil then self.edit155:destroy(); self.edit155 = nil; end;
        if self.edit162 ~= nil then self.edit162:destroy(); self.edit162 = nil; end;
        if self.edit194 ~= nil then self.edit194:destroy(); self.edit194 = nil; end;
        if self.GanhoAnual ~= nil then self.GanhoAnual:destroy(); self.GanhoAnual = nil; end;
        if self.edit87 ~= nil then self.edit87:destroy(); self.edit87 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.edit113 ~= nil then self.edit113:destroy(); self.edit113 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.edit211 ~= nil then self.edit211:destroy(); self.edit211 = nil; end;
        if self.rclListaDosItens3 ~= nil then self.rclListaDosItens3:destroy(); self.rclListaDosItens3 = nil; end;
        if self.edit240 ~= nil then self.edit240:destroy(); self.edit240 = nil; end;
        if self.edit138 ~= nil then self.edit138:destroy(); self.edit138 = nil; end;
        if self.button31 ~= nil then self.button31:destroy(); self.button31 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.button18 ~= nil then self.button18:destroy(); self.button18 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.edit209 ~= nil then self.edit209:destroy(); self.edit209 = nil; end;
        if self.image15 ~= nil then self.image15:destroy(); self.image15 = nil; end;
        if self.edit118 ~= nil then self.edit118:destroy(); self.edit118 = nil; end;
        if self.edit154 ~= nil then self.edit154:destroy(); self.edit154 = nil; end;
        if self.edit254 ~= nil then self.edit254:destroy(); self.edit254 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.edit135 ~= nil then self.edit135:destroy(); self.edit135 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.edit191 ~= nil then self.edit191:destroy(); self.edit191 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.edit102 ~= nil then self.edit102:destroy(); self.edit102 = nil; end;
        if self.image13 ~= nil then self.image13:destroy(); self.image13 = nil; end;
        if self.transformationDisable ~= nil then self.transformationDisable:destroy(); self.transformationDisable = nil; end;
        if self.edit178 ~= nil then self.edit178:destroy(); self.edit178 = nil; end;
        if self.edit117 ~= nil then self.edit117:destroy(); self.edit117 = nil; end;
        if self.edit215 ~= nil then self.edit215:destroy(); self.edit215 = nil; end;
        if self.edit216 ~= nil then self.edit216:destroy(); self.edit216 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.edit73 ~= nil then self.edit73:destroy(); self.edit73 = nil; end;
        if self.edit222 ~= nil then self.edit222:destroy(); self.edit222 = nil; end;
        if self.edit98 ~= nil then self.edit98:destroy(); self.edit98 = nil; end;
        if self.image30 ~= nil then self.image30:destroy(); self.image30 = nil; end;
        if self.POPPergaminho2 ~= nil then self.POPPergaminho2:destroy(); self.POPPergaminho2 = nil; end;
        if self.edit185 ~= nil then self.edit185:destroy(); self.edit185 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.edit111 ~= nil then self.edit111:destroy(); self.edit111 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.edit71 ~= nil then self.edit71:destroy(); self.edit71 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.image20 ~= nil then self.image20:destroy(); self.image20 = nil; end;
        if self.edit85 ~= nil then self.edit85:destroy(); self.edit85 = nil; end;
        if self.edit201 ~= nil then self.edit201:destroy(); self.edit201 = nil; end;
        if self.edit243 ~= nil then self.edit243:destroy(); self.edit243 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.edit192 ~= nil then self.edit192:destroy(); self.edit192 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.edit153 ~= nil then self.edit153:destroy(); self.edit153 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.button20 ~= nil then self.button20:destroy(); self.button20 = nil; end;
        if self.edit131 ~= nil then self.edit131:destroy(); self.edit131 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.button38 ~= nil then self.button38:destroy(); self.button38 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.edit169 ~= nil then self.edit169:destroy(); self.edit169 = nil; end;
        if self.edit246 ~= nil then self.edit246:destroy(); self.edit246 = nil; end;
        if self.edit149 ~= nil then self.edit149:destroy(); self.edit149 = nil; end;
        if self.edit244 ~= nil then self.edit244:destroy(); self.edit244 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.comboBox3 ~= nil then self.comboBox3:destroy(); self.comboBox3 = nil; end;
        if self.edit160 ~= nil then self.edit160:destroy(); self.edit160 = nil; end;
        if self.edit120 ~= nil then self.edit120:destroy(); self.edit120 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit112 ~= nil then self.edit112:destroy(); self.edit112 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.edit114 ~= nil then self.edit114:destroy(); self.edit114 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit204 ~= nil then self.edit204:destroy(); self.edit204 = nil; end;
        if self.edit210 ~= nil then self.edit210:destroy(); self.edit210 = nil; end;
        if self.comboBox12 ~= nil then self.comboBox12:destroy(); self.comboBox12 = nil; end;
        if self.POPJutsu ~= nil then self.POPJutsu:destroy(); self.POPJutsu = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.edit72 ~= nil then self.edit72:destroy(); self.edit72 = nil; end;
        if self.edit179 ~= nil then self.edit179:destroy(); self.edit179 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.edit158 ~= nil then self.edit158:destroy(); self.edit158 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit106 ~= nil then self.edit106:destroy(); self.edit106 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit125 ~= nil then self.edit125:destroy(); self.edit125 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.button29 ~= nil then self.button29:destroy(); self.button29 = nil; end;
        if self.image29 ~= nil then self.image29:destroy(); self.image29 = nil; end;
        if self.edit79 ~= nil then self.edit79:destroy(); self.edit79 = nil; end;
        if self.edit256 ~= nil then self.edit256:destroy(); self.edit256 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.image27 ~= nil then self.image27:destroy(); self.image27 = nil; end;
        if self.edit175 ~= nil then self.edit175:destroy(); self.edit175 = nil; end;
        if self.edit101 ~= nil then self.edit101:destroy(); self.edit101 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.image28 ~= nil then self.image28:destroy(); self.image28 = nil; end;
        if self.edit242 ~= nil then self.edit242:destroy(); self.edit242 = nil; end;
        if self.edit231 ~= nil then self.edit231:destroy(); self.edit231 = nil; end;
        if self.edit164 ~= nil then self.edit164:destroy(); self.edit164 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.POPPergaminho1 ~= nil then self.POPPergaminho1:destroy(); self.POPPergaminho1 = nil; end;
        if self.dsbListadeTreino ~= nil then self.dsbListadeTreino:destroy(); self.dsbListadeTreino = nil; end;
        if self.edit253 ~= nil then self.edit253:destroy(); self.edit253 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.rclListaDosItens2 ~= nil then self.rclListaDosItens2:destroy(); self.rclListaDosItens2 = nil; end;
        if self.edit139 ~= nil then self.edit139:destroy(); self.edit139 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.POPColete ~= nil then self.POPColete:destroy(); self.POPColete = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.edit122 ~= nil then self.edit122:destroy(); self.edit122 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.edit110 ~= nil then self.edit110:destroy(); self.edit110 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.textEditor12 ~= nil then self.textEditor12:destroy(); self.textEditor12 = nil; end;
        if self.edit86 ~= nil then self.edit86:destroy(); self.edit86 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.edit123 ~= nil then self.edit123:destroy(); self.edit123 = nil; end;
        if self.edit143 ~= nil then self.edit143:destroy(); self.edit143 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.image22 ~= nil then self.image22:destroy(); self.image22 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.edit105 ~= nil then self.edit105:destroy(); self.edit105 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.edit206 ~= nil then self.edit206:destroy(); self.edit206 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.edit239 ~= nil then self.edit239:destroy(); self.edit239 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.edit137 ~= nil then self.edit137:destroy(); self.edit137 = nil; end;
        if self.edit146 ~= nil then self.edit146:destroy(); self.edit146 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.ListaJutsus3 ~= nil then self.ListaJutsus3:destroy(); self.ListaJutsus3 = nil; end;
        if self.edit230 ~= nil then self.edit230:destroy(); self.edit230 = nil; end;
        if self.edit90 ~= nil then self.edit90:destroy(); self.edit90 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.edit238 ~= nil then self.edit238:destroy(); self.edit238 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.boxDetalhesDoItem ~= nil then self.boxDetalhesDoItem:destroy(); self.boxDetalhesDoItem = nil; end;
        if self.POPAcessorio ~= nil then self.POPAcessorio:destroy(); self.POPAcessorio = nil; end;
        if self.edit140 ~= nil then self.edit140:destroy(); self.edit140 = nil; end;
        if self.image18 ~= nil then self.image18:destroy(); self.image18 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit189 ~= nil then self.edit189:destroy(); self.edit189 = nil; end;
        if self.edit94 ~= nil then self.edit94:destroy(); self.edit94 = nil; end;
        if self.edit167 ~= nil then self.edit167:destroy(); self.edit167 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.image19 ~= nil then self.image19:destroy(); self.image19 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.edit229 ~= nil then self.edit229:destroy(); self.edit229 = nil; end;
        if self.textEditor13 ~= nil then self.textEditor13:destroy(); self.textEditor13 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.scrollBox8 ~= nil then self.scrollBox8:destroy(); self.scrollBox8 = nil; end;
        if self.edit104 ~= nil then self.edit104:destroy(); self.edit104 = nil; end;
        if self.edit207 ~= nil then self.edit207:destroy(); self.edit207 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit108 ~= nil then self.edit108:destroy(); self.edit108 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit80 ~= nil then self.edit80:destroy(); self.edit80 = nil; end;
        if self.edit95 ~= nil then self.edit95:destroy(); self.edit95 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.edit171 ~= nil then self.edit171:destroy(); self.edit171 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.image14 ~= nil then self.image14:destroy(); self.image14 = nil; end;
        if self.comboBox4 ~= nil then self.comboBox4:destroy(); self.comboBox4 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.edit186 ~= nil then self.edit186:destroy(); self.edit186 = nil; end;
        if self.edit97 ~= nil then self.edit97:destroy(); self.edit97 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.rclListaDosItens4 ~= nil then self.rclListaDosItens4:destroy(); self.rclListaDosItens4 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.edit147 ~= nil then self.edit147:destroy(); self.edit147 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.image33 ~= nil then self.image33:destroy(); self.image33 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.edit88 ~= nil then self.edit88:destroy(); self.edit88 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.edit89 ~= nil then self.edit89:destroy(); self.edit89 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.button34 ~= nil then self.button34:destroy(); self.button34 = nil; end;
        if self.POPPergaminho3 ~= nil then self.POPPergaminho3:destroy(); self.POPPergaminho3 = nil; end;
        if self.POPTreino ~= nil then self.POPTreino:destroy(); self.POPTreino = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.image24 ~= nil then self.image24:destroy(); self.image24 = nil; end;
        if self.edit148 ~= nil then self.edit148:destroy(); self.edit148 = nil; end;
        if self.button22 ~= nil then self.button22:destroy(); self.button22 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.edit180 ~= nil then self.edit180:destroy(); self.edit180 = nil; end;
        if self.edit232 ~= nil then self.edit232:destroy(); self.edit232 = nil; end;
        if self.image16 ~= nil then self.image16:destroy(); self.image16 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.edit107 ~= nil then self.edit107:destroy(); self.edit107 = nil; end;
        if self.edit217 ~= nil then self.edit217:destroy(); self.edit217 = nil; end;
        if self.edit234 ~= nil then self.edit234:destroy(); self.edit234 = nil; end;
        if self.edit237 ~= nil then self.edit237:destroy(); self.edit237 = nil; end;
        if self.button42 ~= nil then self.button42:destroy(); self.button42 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.edit197 ~= nil then self.edit197:destroy(); self.edit197 = nil; end;
        if self.edit141 ~= nil then self.edit141:destroy(); self.edit141 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.comboBox5 ~= nil then self.comboBox5:destroy(); self.comboBox5 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.btnUparJutsu2 ~= nil then self.btnUparJutsu2:destroy(); self.btnUparJutsu2 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit75 ~= nil then self.edit75:destroy(); self.edit75 = nil; end;
        if self.edit193 ~= nil then self.edit193:destroy(); self.edit193 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.edit130 ~= nil then self.edit130:destroy(); self.edit130 = nil; end;
        if self.button23 ~= nil then self.button23:destroy(); self.button23 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.edit144 ~= nil then self.edit144:destroy(); self.edit144 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.comboBox9 ~= nil then self.comboBox9:destroy(); self.comboBox9 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.image17 ~= nil then self.image17:destroy(); self.image17 = nil; end;
        if self.edit151 ~= nil then self.edit151:destroy(); self.edit151 = nil; end;
        if self.edit203 ~= nil then self.edit203:destroy(); self.edit203 = nil; end;
        if self.edit132 ~= nil then self.edit132:destroy(); self.edit132 = nil; end;
        if self.edit188 ~= nil then self.edit188:destroy(); self.edit188 = nil; end;
        if self.comboBox8 ~= nil then self.comboBox8:destroy(); self.comboBox8 = nil; end;
        if self.edit219 ~= nil then self.edit219:destroy(); self.edit219 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.edit119 ~= nil then self.edit119:destroy(); self.edit119 = nil; end;
        if self.button17 ~= nil then self.button17:destroy(); self.button17 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.button25 ~= nil then self.button25:destroy(); self.button25 = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.edit168 ~= nil then self.edit168:destroy(); self.edit168 = nil; end;
        if self.edit190 ~= nil then self.edit190:destroy(); self.edit190 = nil; end;
        if self.textEditor14 ~= nil then self.textEditor14:destroy(); self.textEditor14 = nil; end;
        if self.edit257 ~= nil then self.edit257:destroy(); self.edit257 = nil; end;
        if self.edit259 ~= nil then self.edit259:destroy(); self.edit259 = nil; end;
        if self.edit78 ~= nil then self.edit78:destroy(); self.edit78 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.edit202 ~= nil then self.edit202:destroy(); self.edit202 = nil; end;
        if self.edit91 ~= nil then self.edit91:destroy(); self.edit91 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.edit248 ~= nil then self.edit248:destroy(); self.edit248 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.image23 ~= nil then self.image23:destroy(); self.image23 = nil; end;
        if self.image31 ~= nil then self.image31:destroy(); self.image31 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.ListaJutsus ~= nil then self.ListaJutsus:destroy(); self.ListaJutsus = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.button19 ~= nil then self.button19:destroy(); self.button19 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.edit136 ~= nil then self.edit136:destroy(); self.edit136 = nil; end;
        if self.edit212 ~= nil then self.edit212:destroy(); self.edit212 = nil; end;
        if self.edit173 ~= nil then self.edit173:destroy(); self.edit173 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.edit227 ~= nil then self.edit227:destroy(); self.edit227 = nil; end;
        if self.image21 ~= nil then self.image21:destroy(); self.image21 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmsekai()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmsekai();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmsekai = {
    newEditor = newfrmsekai, 
    new = newfrmsekai, 
    name = "frmsekai", 
    dataType = "com.Sekai", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Sekai 2", 
    description=""};

frmsekai = _frmsekai;
Firecast.registrarForm(_frmsekai);
Firecast.registrarDataType(_frmsekai);

return _frmsekai;
