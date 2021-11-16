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


	function PreparaDifuculdadeTreinoRankE()
		node = self.ListaJutsus.node;
		
		if	self.ListaJutsus.visible == true then
			node = self.rclListadeJutsus1.selectedNode;             								
		end;	
							
		if node.RankPorTreino == 'E' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 5 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 15 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 6 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 16 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 7 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 17 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 8 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 8 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 8 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 18 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 9 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 9 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 9 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 19 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino();
		ImpoeLimitenoTreino();
	end;			
	



	function PreparaDifuculdadeTreinoRankD()							
		node = self.ListaJutsus.node;
		
		if	self.ListaJutsus.visible == true then
			node = self.rclListadeJutsus1.selectedNode;             								
		end;	
					
		if node.RankPorTreino == 'D' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 5 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 15 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 6 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 16 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 7 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 17 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 8 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 8 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 8 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 18 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;	

		VerificaIntermediariosParaTreino();
		ImpoeLimitenoTreino();
	end;			
	



	function PreparaDifuculdadeTreinoRankC()							
		node = self.ListaJutsus.node;
		
		if	self.ListaJutsus.visible == true then
			node = self.rclListadeJutsus1.selectedNode;             								
		end;	
							
		if node.RankPorTreino == 'C' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 5 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 15 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 6 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 16 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 7 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 17 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino();
		ImpoeLimitenoTreino();
	end;	
	



	function PreparaDifuculdadeTreinoRankB()							
		node = self.ListaJutsus.node;
		
		if	self.ListaJutsus.visible == true then
			node = self.rclListadeJutsus1.selectedNode;             								
		end;	
							
		if node.RankPorTreino == 'B' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 5 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 15 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 6 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 16 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino();
		ImpoeLimitenoTreino();
	end;	
	



	function PreparaDifuculdadeTreinoRankA()							
		node = self.ListaJutsus.node;
		
		if	self.ListaJutsus.visible == true then
			node = self.rclListadeJutsus1.selectedNode;             								
		end;	
							
		if node.RankPorTreino == 'A' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 5 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 15 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino();
		ImpoeLimitenoTreino();
	end;	
	



	function PreparaDifuculdadeTreinoRankS()							
		node = self.ListaJutsus.node;
		
		if	self.ListaJutsus.visible == true then
			node = self.rclListadeJutsus1.selectedNode;             								
		end;	
							
		if node.RankPorTreino == 'S' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino();
		ImpoeLimitenoTreino();
	end;	
	



	function PreparaDifuculdadeTreinoRankSS()							
		node = self.ListaJutsus.node;
		
		if	self.ListaJutsus.visible == true then
			node = self.rclListadeJutsus1.selectedNode;             								
		end;	
							
		if node.RankPorTreino == 'SS' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino();
		ImpoeLimitenoTreino();
	end;	
	



	function PreparaDifuculdadeTreinoRankX()							
		node = self.ListaJutsus.node;
		
		if	self.ListaJutsus.visible == true then
			node = self.rclListadeJutsus1.selectedNode;             								
		end;	
							
		if node.RankPorTreino == 'X' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino();
		ImpoeLimitenoTreino();
	end;	
	



	function PreparaDifuculdadeTreinoRankXPLUS()							
		node = self.ListaJutsus.node;		
		
		if node.RankPorTreino == 'X+' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1) or 0);
			end;
		end;
		
		VerificaIntermediariosParaTreino();
		ImpoeLimitenoTreino();
	end;	
	



	function VerificaIntermediariosParaTreino()							
		node = self.ListaJutsus.node;
		
		if	self.ListaJutsus.visible == true then
			node = self.rclListadeJutsus1.selectedNode;             								
		end;
		
		if node.Dificuldade1d10DoJutsu1 ~= nil then
			if node.Dificuldade1d10DoJutsu1 <= 0 then			
				node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0);
			end;
		end;
		
		if node.Dificuldade2d10DoJutsu1 ~= nil then	
			if node.Dificuldade2d10DoJutsu1 <= 0 then		
				node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0);
			end;
		end;
		
		if node.Dificuldade3d10DoJutsu1 ~= nil then
			if node.Dificuldade3D10DoJutsu1 <= 0 then		
				node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0);
			end;
		end;
		
		if node.Dificuldade1d20DoJutsu1 ~= nil then	
			if node.Dificuldade1d20DoJutsu1 <= 0 then		
				node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0);
			end;
		end;					
	end;			
	



	function ImpoeLimitenoTreino()							
		node = self.ListaJutsus.node;
		
		if node.Dificuldade1d10DoJutsu1 ~= nil then
			if node.Dificuldade1d10DoJutsu1 >= 9 then			
				node.Dificuldade1d10DoJutsu1 = 9;
			end;
		end;
		
		if node.Dificuldade2d10DoJutsu1 ~= nil then	
			if node.Dificuldade2d10DoJutsu1 >= 9 then		
				node.Dificuldade2d10DoJutsu1 = 9;
			end;
		end;
		
		if node.Dificuldade3d10DoJutsu1 ~= nil then
			if node.Dificuldade3D10DoJutsu1 >= 9 then		
				node.Dificuldade3D10DoJutsu1 = 9;;
			end;
		end;
		
		if node.Dificuldade1d20DoJutsu1 ~= nil then	
			if node.Dificuldade1d20DoJutsu1 >= 20 then		
				node.Dificuldade1d20DoJutsu1 = 19;
			end;
		end;			
	end;			
	



	function MonstraProPlayerADificuldadeTreino()							
		node = self.ListaJutsus.node;		
		node.Upa1d10 = tonumber(node.Dificuldade1d10DoJutsu1);
		node.Upa2d10 = tonumber(node.Dificuldade2d10DoJutsu1);
		node.Upa3d10 = tonumber(node.Dificuldade3d10DoJutsu1);
		node.Upa1d20 = tonumber(node.Dificuldade1d20DoJutsu1);											
	end;				
	



	function TreinarLevelJutsu()							
		node = self.rclListadeJutsus1.selectedNode;
		self.btnUparJutsu1.visible = false;							
		local mesaDoPersonagem = rrpg.getMesaDe(sheet);	
		
		if node.RankPorTreino == 'X+' then
			node.Upa1d10 = tonumber(node.Dificuldade1d10DoJutsu1);
			node.Upa2d10 = tonumber(node.Dificuldade2d10DoJutsu1);
			node.Upa3d10 = tonumber(node.Dificuldade3d10DoJutsu1);
			node.Upa1d20 = tonumber(node.Dificuldade1d20DoJutsu1);
		else		
			node.Upa1d10 = tonumber(node.Dificuldade1d10DoJutsu1) + (tonumber(sheet.Bonus1d10) or 0);
			node.Upa2d10 = tonumber(node.Dificuldade2d10DoJutsu1) + (tonumber(sheet.Bonus2d10) or 0);
			node.Upa3d10 = tonumber(node.Dificuldade3d10DoJutsu1) + (tonumber(sheet.Bonus3d10) or 0);
			node.Upa1d20 = tonumber(node.Dificuldade1d20DoJutsu1) + (tonumber(sheet.Bonus1d20) or 0);
		end;
		
		if sheet.TreinoON == true then	
			mesaDoPersonagem.chat:rolarDados("1d10", "[§K3]Fortificamento de Jutsu",
			function (rolado)
			if node.DescriJutsu == nil then
				showMessage("Falta Descrição do Jutsu ou não irá funcionar");
				self.btnUparJutsu1.visible = true;
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
												node.Dificuldade1d10DoJutsu1Estudo = 0;
												node.Dificuldade2d10DoJutsu1Estudo = 0;
												node.Dificuldade3d10DoJutsu1Estudo = 0;
												node.Dificuldade1d20DoJutsu1Estudo = 0;																			
												node.LevelJutsu1 = tonumber(node.LevelJutsu1 or 0) + 1;
												RecebeXPPorJutsu();
												self.btnUparJutsu1.visible = true;	
											else 
												mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Ultima");
												node.Dificuldade1d20DoJutsu1Estudo = (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) + 1;
												self.btnUparJutsu1.visible = true;	
											end;
										end);	
									else
										mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Terceira");
										node.Dificuldade3d10DoJutsu1Estudo = (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) + 1;
										self.btnUparJutsu1.visible = true;																
									end;
								end);
							else
								mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Segunda");
								node.Dificuldade2d10DoJutsu1Estudo = (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) + 1;
								self.btnUparJutsu1.visible = true;														
							end;												
						end)
					else
						mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Primeira");
						node.Dificuldade1d10DoJutsu1Estudo = (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) + 1;
						self.btnUparJutsu1.visible = true;
					end;
				end;
			end);
		else
			showMessage("TREINO NÃO HABILITADO PROVAVELMENTE O MESTRE ESTA OFFLINE");
			self.btnUparJutsu1.visible = true;
		end;
	end;				
	



	
	function RecebeXPPorJutsu() 					
		node = self.rclListadeJutsus1.selectedNode;
													
		if node.RankPorTreino == "E" then
			sheet.ExpPTreino = 200;
		elseif	node.RankPorTreino == "D" then
			sheet.ExpPTreino = 400;
		elseif	node.RankPorTreino == "C" then
			sheet.ExpPTreino = 600;
		elseif	node.RankPorTreino == "B" then
			sheet.ExpPTreino = 800;
		elseif	node.RankPorTreino == "A" then
			sheet.ExpPTreino = 1000;
		elseif	node.RankPorTreino == "S" then
			sheet.ExpPTreino = 1500;
		elseif	node.RankPorTreino == "SS" then
			sheet.ExpPTreino = 2000;
		elseif	node.RankPorTreino == "X" then
			sheet.ExpPTreino = 2500;
		elseif	node.RankPorTreino == "X+" then
			sheet.ExpPTreino = 3000;
		end;
	end;

	function FazCalculoTipoLista1Intensidade1() 
		node = self.ListaJutsus.node;	 
		
		if	self.ListaJutsus.visible == true then
			node = self.rclListadeJutsus1.selectedNode; 
			node.Lista1Intensidade1 = 0;	
			
			if node.TipoLista1Jutsu1 == 'Tai' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.TaiTotal) or 0);	
			end;	
			
			if node.TipoLista1Jutsu1 == 'Nin' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.NinTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Gen' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.GenTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Elemental' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.EleTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'DanoArmado' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoArmado) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'M/Tai' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.TaiTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'M/Nin' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.NinTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'M/Gen' then	
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.GenTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'M/Elemental' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.EleTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'M/DA' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoArmado / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Selamento' then
				node.Lista1Intensidade1 = 0;	
			end;
			
			if node.TipoLista1Jutsu1 == 'Outros' then
				node.Lista1Intensidade1 = 0;
			end;
			
			if node.TipoLista1Jutsu1 == 'Nulo' then
				node.Lista1Intensidade1 = 0;	
			end;
			
			if node.TipoLista1Jutsu1 == 'Kunai' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoKunai) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Shuriken' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoShuriken) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Shuriken Fuuma' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoShurikenFuuma) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Kunai Gigante' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoKunaiGigante) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Senbon' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.Senbon) or 0);
			end;
			
			if node.TipoLista1Jutsu1 == 'Papel Bomba' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.PB) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Ginso Explosivo' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.GinsoExplosivo) or 0);
			end;
			
			if node.TipoLista1Jutsu1 == 'Veneno' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.Veneno) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Bandagem' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.Bandagem) or 0);
			end;				
		end;	
	end;

	function FazCalculoTipoLista1Intensidade2() 
		node = self.ListaJutsus.node;	 
		
		if	self.ListaJutsus.visible == true then
			node = self.rclListadeJutsus1.selectedNode;

			node.Lista1Intensidade2 = 0;	

			if node.TipoLista1Jutsu2 == 'Nulo' then
				node.Lista1Intensidade2 = 0;	
			end;

			if node.TipoLista1Jutsu2 == 'Tai' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.TaiTotal) or 0);	
			end;	
			
			if node.TipoLista1Jutsu2 == 'Nin' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.NinTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Gen' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.GenTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Elemental' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.EleTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'DanoArmado' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoArmado) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'M/Tai' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.TaiTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'M/Nin' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.NinTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'M/Gen' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.GenTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'M/Elemental' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.EleTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'M/DA' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoArmado / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Selamento' then
				node.Lista1Intensidade2 = 0;	
			end;
			
			if node.TipoLista1Jutsu2 == 'Outros' then
				node.Lista1Intensidade2 = 0;
			end;
			
			if node.TipoLista1Jutsu2 == 'Kunai' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoKunai) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Shuriken' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoShuriken) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Shuriken Fuuma' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoShurikenFuuma) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Kunai Gigante' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoKunaiGigante) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Senbon' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.Senbon) or 0);
			end;
			
			if node.TipoLista1Jutsu2 == 'Papel Bomba' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.PB) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Ginso Explosivo' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.GinsoExplosivo) or 0);
			end;
			
			if node.TipoLista1Jutsu2 == 'Veneno' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.Veneno) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Bandagem' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.Bandagem) or 0);
			end;		
		end;	
	end;

	function FazCalculoTipoLista1Intensidade3() 
		node = self.ListaJutsus.node;	 
		
		if	self.ListaJutsus.visible == true then
			node = self.rclListadeJutsus1.selectedNode;
			node.Lista1Intensidade3 = 0;

			if node.TipoLista1Jutsu3 == 'Nulo' then
				node.Lista1Intensidade3 = 0;	
			end;

			if node.TipoLista1Jutsu3 == 'Tai' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.TaiTotal) or 0);	
			end;	
			
			if node.TipoLista1Jutsu3 == 'Nin' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.NinTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Gen' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.GenTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Elemental' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.EleTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'DanoArmado' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoArmado) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'M/Tai' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.TaiTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'M/Nin' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.NinTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'M/Gen' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.GenTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'M/Elemental' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.EleTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'M/DA' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoArmado / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Selamento' then
				node.Lista1Intensidade3 = 0;	
			end;
			
			if node.TipoLista1Jutsu3 == 'Outros' then
				node.Lista1Intensidade3 = 0;
			end;
			
			if node.TipoLista1Jutsu3 == 'Kunai' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoKunai) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Shuriken' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoShuriken) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Shuriken Fuuma' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoShurikenFuuma) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Kunai Gigante' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoKunaiGigante) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Senbon' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.Senbon) or 0);
			end;
			
			if node.TipoLista1Jutsu3 == 'Papel Bomba' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.PB) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Ginso Explosivo' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.GinsoExplosivo) or 0);
			end;
			
			if node.TipoLista1Jutsu3 == 'Veneno' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.Veneno) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Bandagem' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.Bandagem) or 0);
			end;		
		end;		
	end;

	function FazCalculoTipoListaIntensidadeTotal1() 	
		node = self.ListaJutsus.node;	 
		
		if	self.ListaJutsus.visible == true then
			node = self.rclListadeJutsus1.selectedNode;             
			node.Lista1IntensidadeTotal = (tonumber(node.DNVerdadeiro) or 0) + (tonumber(node.Lista1Intensidade1) or 0) + (tonumber(node.Lista1Intensidade2) or 0) + (tonumber(node.Lista1Intensidade3) or 0);										
		end;		
	end;

	function FazCalculodoCustoReal1() 
		node = self.ListaJutsus.node;	 
		
		if	self.ListaJutsus.visible == true then
			node = self.rclListadeJutsus1.selectedNode;
			
			if node.LevelJutsu1 == nil then
				node.LevelJutsu1 = 1;
			end;
			
			node.AdicionalCusto = ((tonumber(node.LevelJutsu1 * 2) or 0) - 2);
			node.CustoJutsuReal = tonumber(node.CustoJutsu or 0) + tonumber(node.AdicionalCusto or 0) or 0;							
		end;		
	end;

	function FazCalculodoCustoEnergia1() 
		node = self.ListaJutsus.node;	 
		
		if	self.ListaJutsus.visible == true then
			node = self.rclListadeJutsus1.selectedNode; 
			node.CustoEnergia = math.floor(tonumber(node.CustoEnergia) or 0);						
		end;		
	end;




	function PreparaDifuculdadeTreinoRankE2()							
		local node = self.ListaJutsus2.node;
					
		if node.RankPorTreino == 'E' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 5 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 15 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 6 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 16 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 7 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 17 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 8 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 8 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 8 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 18 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 9 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 9 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 9 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 19 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino2();
		ImpoeLimitenoTreino2();
	end;			
	



	function PreparaDifuculdadeTreinoRankD2()							
		local node = self.ListaJutsus2.node;
					
		if node.RankPorTreino == 'D' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 5 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 15 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 6 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 16 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 7 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 17 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 8 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 8 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 8 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 18 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;	

		VerificaIntermediariosParaTreino2();
		ImpoeLimitenoTreino2();
	end;			
	



	function PreparaDifuculdadeTreinoRankC2()							
		local node = self.ListaJutsus2.node;
							
		if node.RankPorTreino == 'C' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 5 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 15 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 6 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 16 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 7 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 17 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino2();
		ImpoeLimitenoTreino2();
	end;	
	



	function PreparaDifuculdadeTreinoRankB2()							
		local node = self.ListaJutsus2.node;
							
		if node.RankPorTreino == 'B' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 5 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 15 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 6 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 16 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino2();
		ImpoeLimitenoTreino2();
	end;	
	



	function PreparaDifuculdadeTreinoRankA2()							
		local node = self.ListaJutsus2.node;
							
		if node.RankPorTreino == 'A' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 5 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 15 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino2();
		ImpoeLimitenoTreino2();
	end;	
	



	function PreparaDifuculdadeTreinoRankS2()							
		local node = self.ListaJutsus2.node;
							
		if node.RankPorTreino == 'S' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino2();
		ImpoeLimitenoTreino2();
	end;	
	



	function PreparaDifuculdadeTreinoRankSS2()							
		local node = self.ListaJutsus2.node;
							
		if node.RankPorTreino == 'SS' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino2();
		ImpoeLimitenoTreino2();
	end;	
	



	function PreparaDifuculdadeTreinoRankX2()							
		local node = self.ListaJutsus2.node;
							
		if node.RankPorTreino == 'X' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino2();
		ImpoeLimitenoTreino2();
	end;	
	



	function PreparaDifuculdadeTreinoRankXPLUS2()							
		local node = self.ListaJutsus2.node;			
		
		if node.RankPorTreino == 'X+' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino2();
		ImpoeLimitenoTreino2();
	end;	
	



	function VerificaIntermediariosParaTreino2()							
		local node = self.ListaJutsus2.node;
		
		if node.Dificuldade1d10DoJutsu1 ~= nil then
			if node.Dificuldade1d10DoJutsu1 <= 0 then			
				node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0);
			end;
		end;
		
		if node.Dificuldade2d10DoJutsu1 ~= nil then	
			if node.Dificuldade2d10DoJutsu1 <= 0 then		
				node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0);
			end;
		end;
		
		if node.Dificuldade3d10DoJutsu1 ~= nil then
			if node.Dificuldade3D10DoJutsu1 <= 0 then		
				node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0);
			end;
		end;
		
		if node.Dificuldade1d20DoJutsu1 ~= nil then	
			if node.Dificuldade1d20DoJutsu1 <= 0 then		
				node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0);
			end;
		end;
	end;			
	



	function ImpoeLimitenoTreino2()							
		local node = self.ListaJutsus2.node;
		
		if node.Dificuldade1d10DoJutsu1 ~= nil then
			if node.Dificuldade1d10DoJutsu1 >= 9 then			
				node.Dificuldade1d10DoJutsu1 = 9;
			end;
		end;
		
		if node.Dificuldade2d10DoJutsu1 ~= nil then	
			if node.Dificuldade2d10DoJutsu1 >= 9 then		
				node.Dificuldade2d10DoJutsu1 = 9;
			end;
		end;
		
		if node.Dificuldade3d10DoJutsu1 ~= nil then
			if node.Dificuldade3D10DoJutsu1 >= 9 then		
				node.Dificuldade3D10DoJutsu1 = 9;;
			end;
		end;
		
		if node.Dificuldade1d20DoJutsu1 ~= nil then	
			if node.Dificuldade1d20DoJutsu1 >= 20 then		
				node.Dificuldade1d20DoJutsu1 = 19;
			end;
		end;			
	end;			
	



	function MonstraProPlayerADificuldadeTreino2()							
		local node = self.ListaJutsus2.node;						
		node.Upa1d10 = tonumber(node.Dificuldade1d10DoJutsu1);
		node.Upa2d10 = tonumber(node.Dificuldade2d10DoJutsu1);
		node.Upa3d10 = tonumber(node.Dificuldade3d10DoJutsu1);
		node.Upa1d20 = tonumber(node.Dificuldade1d20DoJutsu1);														
	end;				
	



	function TreinarLevelJutsu2()							
		local node = self.ListaJutsus2.node;			
		self.btnUparJutsu2.visible = false;							
		local mesaDoPersonagem = rrpg.getMesaDe(sheet);				
		
		if node.RankPorTreino == 'X+' then
			node.Upa1d10 = tonumber(node.Dificuldade1d10DoJutsu1);
			node.Upa2d10 = tonumber(node.Dificuldade2d10DoJutsu1);
			node.Upa3d10 = tonumber(node.Dificuldade3d10DoJutsu1);
			node.Upa1d20 = tonumber(node.Dificuldade1d20DoJutsu1);
		else		
			node.Upa1d10 = tonumber(node.Dificuldade1d10DoJutsu1) + (tonumber(sheet.Bonus1d10) or 0);
			node.Upa2d10 = tonumber(node.Dificuldade2d10DoJutsu1) + (tonumber(sheet.Bonus2d10) or 0);
			node.Upa3d10 = tonumber(node.Dificuldade3d10DoJutsu1) + (tonumber(sheet.Bonus3d10) or 0);
			node.Upa1d20 = tonumber(node.Dificuldade1d20DoJutsu1) + (tonumber(sheet.Bonus1d20) or 0);
		end;
				
		if sheet.TreinoON == true then	
			mesaDoPersonagem.chat:rolarDados("1d10", "[§K3]Fortificamento de Jutsu",
			function (rolado)
			if node.DescriJutsu == nil then
				showMessage("Falta Descrição do Jutsu ou não irá funcionar");
				self.btnUparJutsu2.visible = true;
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
												node.Dificuldade1d10DoJutsu1Estudo = 0;
												node.Dificuldade2d10DoJutsu1Estudo = 0;
												node.Dificuldade3d10DoJutsu1Estudo = 0;
												node.Dificuldade1d20DoJutsu1Estudo = 0;																			
												node.LevelJutsu1 = tonumber(node.LevelJutsu1 or 0) + 1;
												RecebeXPPorJutsu2();
												self.btnUparJutsu2.visible = true;	
											else 
												mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Ultima");
												node.Dificuldade1d20DoJutsu1Estudo = (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) + 1;
												self.btnUparJutsu2.visible = true;	
											end;
										end);	
									else
										mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Terceira");
										node.Dificuldade3d10DoJutsu1Estudo = (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) + 1;
										self.btnUparJutsu2.visible = true;																
									end;
								end);
							else
								mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Segunda");
								node.Dificuldade2d10DoJutsu1Estudo = (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) + 1;
								self.btnUparJutsu2.visible = true;														
							end;												
						end)
					else
						mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Primeira");
						node.Dificuldade1d10DoJutsu1Estudo = (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) + 1;
						self.btnUparJutsu2.visible = true;
					end;
				end;
			end);
		else
			showMessage("TREINO NÃO HABILITADO PROVAVELMENTE O MESTRE ESTA OFFLINE");
			self.btnUparJutsu2.visible = true;
		end;
	end;				
	



		
	function RecebeXPPorJutsu2() 					
		local node = self.ListaJutsus2.node;
													
		if node.RankPorTreino == "E" then
			sheet.ExpPTreino = 200;
		elseif	node.RankPorTreino == "D" then
			sheet.ExpPTreino = 400;
		elseif	node.RankPorTreino == "C" then
			sheet.ExpPTreino = 600;
		elseif	node.RankPorTreino == "B" then
			sheet.ExpPTreino = 800;
		elseif	node.RankPorTreino == "A" then
			sheet.ExpPTreino = 1000;
		elseif	node.RankPorTreino == "S" then
			sheet.ExpPTreino = 1500;
		elseif	node.RankPorTreino == "SS" then
			sheet.ExpPTreino = 2000;
		elseif	node.RankPorTreino == "X" then
			sheet.ExpPTreino = 2500;
		elseif	node.RankPorTreino == "X+" then
			sheet.ExpPTreino = 3000;
		end;
	end;
	
	function FazCalculoTipoLista2Intensidade1() 
		local node = self.ListaJutsus2.node;		
		
		if	self.ListaJutsus2.visible == true then
			local node = self.ListaJutsus2.node;	 
			node.Lista1Intensidade1 = 0;	
			
			if node.TipoLista1Jutsu1 == 'Tai' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.TaiTotal) or 0);	
			end;	
			
			if node.TipoLista1Jutsu1 == 'Nin' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.NinTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Gen' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.GenTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Elemental' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.EleTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'DanoArmado' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoArmado) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'M/Tai' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.TaiTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'M/Nin' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.NinTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'M/Gen' then	
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.GenTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'M/Elemental' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.EleTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'M/DA' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoArmado / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Selamento' then
				node.Lista1Intensidade1 = 0;	
			end;
			
			if node.TipoLista1Jutsu1 == 'Outros' then
				node.Lista1Intensidade1 = 0;
			end;
			
			if node.TipoLista1Jutsu1 == 'Nulo' then
				node.Lista1Intensidade1 = 0;	
			end;
			
			if node.TipoLista1Jutsu1 == 'Kunai' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoKunai) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Shuriken' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoShuriken) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Shuriken Fuuma' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoShurikenFuuma) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Kunai Gigante' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoKunaiGigante) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Senbon' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.Senbon) or 0);
			end;
			
			if node.TipoLista1Jutsu1 == 'Papel Bomba' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.PB) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Ginso Explosivo' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.GinsoExplosivo) or 0);
			end;
			
			if node.TipoLista1Jutsu1 == 'Veneno' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.Veneno) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Bandagem' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.Bandagem) or 0);
			end;		
		end;	
	end;

	function FazCalculoTipoLista2Intensidade2() 
		local node = self.ListaJutsus2.node;	
		
		if	self.ListaJutsus2.visible == true then
			local node = self.ListaJutsus2.node;	
			node.Lista1Intensidade2 = 0;	

			if node.TipoLista1Jutsu2 == 'Nulo' then
				node.Lista1Intensidade2 = 0;	
			end;

			if node.TipoLista1Jutsu2 == 'Tai' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.TaiTotal) or 0);	
			end;	
			
			if node.TipoLista1Jutsu2 == 'Nin' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.NinTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Gen' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.GenTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Elemental' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.EleTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'DanoArmado' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoArmado) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'M/Tai' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.TaiTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'M/Nin' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.NinTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'M/Gen' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.GenTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'M/Elemental' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.EleTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'M/DA' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoArmado / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Selamento' then
				node.Lista1Intensidade2 = 0;	
			end;
			
			if node.TipoLista1Jutsu2 == 'Outros' then
				node.Lista1Intensidade2 = 0;
			end;
			
			if node.TipoLista1Jutsu2 == 'Kunai' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoKunai) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Shuriken' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoShuriken) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Shuriken Fuuma' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoShurikenFuuma) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Kunai Gigante' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoKunaiGigante) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Senbon' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.Senbon) or 0);
			end;
			
			if node.TipoLista1Jutsu2 == 'Papel Bomba' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.PB) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Ginso Explosivo' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.GinsoExplosivo) or 0);
			end;
			
			if node.TipoLista1Jutsu2 == 'Veneno' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.Veneno) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Bandagem' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.Bandagem) or 0);
			end;		
		end;	
	end;

	function FazCalculoTipoLista2Intensidade3() 
		local node = self.ListaJutsus2.node;	
		
		if	self.ListaJutsus2.visible == true then
			local node = self.ListaJutsus2.node;	

			node.Lista1Intensidade3 = 0;

			if node.TipoLista1Jutsu3 == 'Nulo' then
				node.Lista1Intensidade3 = 0;	
			end;

			if node.TipoLista1Jutsu3 == 'Tai' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.TaiTotal) or 0);	
			end;	
			
			if node.TipoLista1Jutsu3 == 'Nin' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.NinTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Gen' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.GenTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Elemental' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.EleTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'DanoArmado' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoArmado) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'M/Tai' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.TaiTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'M/Nin' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.NinTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'M/Gen' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.GenTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'M/Elemental' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.EleTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'M/DA' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoArmado / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Selamento' then
				node.Lista1Intensidade3 = 0;	
			end;
			
			if node.TipoLista1Jutsu3 == 'Outros' then
				node.Lista1Intensidade3 = 0;
			end;
			
			if node.TipoLista1Jutsu3 == 'Kunai' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoKunai) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Shuriken' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoShuriken) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Shuriken Fuuma' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoShurikenFuuma) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Kunai Gigante' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoKunaiGigante) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Senbon' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.Senbon) or 0);
			end;
			
			if node.TipoLista1Jutsu3 == 'Papel Bomba' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.PB) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Ginso Explosivo' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.GinsoExplosivo) or 0);
			end;
			
			if node.TipoLista1Jutsu3 == 'Veneno' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.Veneno) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Bandagem' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.Bandagem) or 0);
			end;		
		end;		
	end;

	function FazCalculoTipoListaIntensidadeTotal2() 
		local node = self.ListaJutsus2.node;	
		
		if	self.ListaJutsus2.visible == true then
			local node = self.ListaJutsus2.node;	                   
			node.Lista1IntensidadeTotal = (tonumber(node.DNVerdadeiro) or 0) + (tonumber(node.Lista1Intensidade1) or 0) + (tonumber(node.Lista1Intensidade2) or 0) + (tonumber(node.Lista1Intensidade3) or 0);										
		end;		
	end;

	function FazCalculodoCustoReal2() 
		local node = self.ListaJutsus2.node;	
		
		if	self.ListaJutsus2.visible == true then
			local node = self.ListaJutsus2.node;	
			
			if node.LevelJutsu1 == nil then
				node.LevelJutsu1 = 1;
			end;
			
			node.AdicionalCusto = ((tonumber(node.LevelJutsu1 * 2) or 0) - 2);
			node.CustoJutsuReal = tonumber(node.CustoJutsu or 0) + tonumber(node.AdicionalCusto or 0) or 0;							
		end;		
	end;

	function FazCalculodoCustoEnergia2() 
		local node = self.ListaJutsus2.node;
		
		if	self.ListaJutsus2.visible == true then
			local node = self.ListaJutsus2.node;  
			node.CustoEnergia = math.floor(tonumber(node.CustoEnergia) or 0);						
		end;		
	end;




	function PreparaDifuculdadeTreinoRankE3()									
		local node = self.ListaJutsus3.node;		
					
		if node.RankPorTreino == 'E' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 5 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 15 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 6 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 16 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 7 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 17 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 8 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 8 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 8 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 18 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 9 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 9 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 9 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 19 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino3();
		ImpoeLimitenoTreino3();
	end;			
	



	function PreparaDifuculdadeTreinoRankD3()							
		local node = self.ListaJutsus3.node;
					
		if node.RankPorTreino == 'D' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 5 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 15 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 6 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 16 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 7 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 17 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 8 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 8 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 8 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 18 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;	

		VerificaIntermediariosParaTreino3();
		ImpoeLimitenoTreino3();
	end;			
	



	function PreparaDifuculdadeTreinoRankC3()							
		local node = self.ListaJutsus3.node;
							
		if node.RankPorTreino == 'C' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 5 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 15 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 6 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 16 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 7 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 7 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 17 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino3();
		ImpoeLimitenoTreino3();
	end;	
	



	function PreparaDifuculdadeTreinoRankB3()							
		local node = self.ListaJutsus3.node;
							
		if node.RankPorTreino == 'B' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 5 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 15 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 6 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 6 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 16 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino3();
		ImpoeLimitenoTreino3();
	end;	
	



	function PreparaDifuculdadeTreinoRankA3()							
		local node = self.ListaJutsus3.node;
							
		if node.RankPorTreino == 'A' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 5 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 5 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 15 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino3();
		ImpoeLimitenoTreino3();
	end;	
	



	function PreparaDifuculdadeTreinoRankS3()							
		local node = self.ListaJutsus3.node;
							
		if node.RankPorTreino == 'S' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 4 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 4 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 14 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino3();
		ImpoeLimitenoTreino3();
	end;	
	



	function PreparaDifuculdadeTreinoRankSS3()							
		local node = self.ListaJutsus3.node;
							
		if node.RankPorTreino == 'SS' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 11 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 3 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 3 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 13 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino3();
		ImpoeLimitenoTreino3();
	end;	
	



	function PreparaDifuculdadeTreinoRankX3()							
		local node = self.ListaJutsus3.node;
							
		if node.RankPorTreino == 'X' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 2 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 2 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 12 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino3();
		ImpoeLimitenoTreino3();
	end;	
	



	function PreparaDifuculdadeTreinoRankXPLUS3()							
		local node = self.ListaJutsus3.node;			
		
		if node.RankPorTreino == 'X+' then
			if sheet.GraduacaoTreino == 'Academico' then					
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'GDE' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Concelheiro' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
			
			if sheet.GraduacaoTreino == 'Kage' then
				node.Dificuldade1d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade2d10DoJutsu1 = 1 + (((tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade3D10DoJutsu1 = 1 + (((tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
				node.Dificuldade1d20DoJutsu1 = 1 + (((tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) - tonumber(node.LevelJutsu1) + 1)) or 0;
			end;
		end;
		
		VerificaIntermediariosParaTreino3();
		ImpoeLimitenoTreino3();
	end;	
	



	function VerificaIntermediariosParaTreino3()							
		local node = self.ListaJutsus3.node;
		
		if node.Dificuldade1d10DoJutsu1 ~= nil then
			if node.Dificuldade1d10DoJutsu1 <= 0 then			
				node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0);
			end;
		end;
		
		if node.Dificuldade2d10DoJutsu1 ~= nil then	
			if node.Dificuldade2d10DoJutsu1 <= 0 then		
				node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0);
			end;
		end;
		
		if node.Dificuldade3d10DoJutsu1 ~= nil then
			if node.Dificuldade3D10DoJutsu1 <= 0 then		
				node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0);
			end;
		end;
		
		if node.Dificuldade1d20DoJutsu1 ~= nil then	
			if node.Dificuldade1d20DoJutsu1 <= 0 then		
				node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0);
			end;
		end;
	end;			
	



	function ImpoeLimitenoTreino3()							
		local node = self.ListaJutsus3.node;
		
		if node.Dificuldade1d10DoJutsu1 ~= nil then
			if node.Dificuldade1d10DoJutsu1 >= 9 then			
				node.Dificuldade1d10DoJutsu1 = 9;
			end;
		end;
		
		if node.Dificuldade2d10DoJutsu1 ~= nil then	
			if node.Dificuldade2d10DoJutsu1 >= 9 then		
				node.Dificuldade2d10DoJutsu1 = 9;
			end;
		end;
		
		if node.Dificuldade3d10DoJutsu1 ~= nil then
			if node.Dificuldade3D10DoJutsu1 >= 9 then		
				node.Dificuldade3D10DoJutsu1 = 9;;
			end;
		end;
		
		if node.Dificuldade1d20DoJutsu1 ~= nil then	
			if node.Dificuldade1d20DoJutsu1 >= 20 then		
				node.Dificuldade1d20DoJutsu1 = 19;
			end;
		end;			
	end;			
	



	function MonstraProPlayerADificuldadeTreino3()							
		local node = self.ListaJutsus3.node;						
		node.Upa1d10 = tonumber(node.Dificuldade1d10DoJutsu1);
		node.Upa2d10 = tonumber(node.Dificuldade2d10DoJutsu1);
		node.Upa3d10 = tonumber(node.Dificuldade3d10DoJutsu1);
		node.Upa1d20 = tonumber(node.Dificuldade1d20DoJutsu1);														
	end;				
	



	function TreinarLevelJutsu3()							
		local node = self.ListaJutsus3.node;			
		self.btnUparJutsu3.visible = false;							
		local mesaDoPersonagem = rrpg.getMesaDe(sheet);				
		
		if node.RankPorTreino == 'X+' then
			node.Upa1d10 = tonumber(node.Dificuldade1d10DoJutsu1);
			node.Upa2d10 = tonumber(node.Dificuldade2d10DoJutsu1);
			node.Upa3d10 = tonumber(node.Dificuldade3d10DoJutsu1);
			node.Upa1d20 = tonumber(node.Dificuldade1d20DoJutsu1);
		else		
			node.Upa1d10 = tonumber(node.Dificuldade1d10DoJutsu1) + (tonumber(sheet.Bonus1d10) or 0);
			node.Upa2d10 = tonumber(node.Dificuldade2d10DoJutsu1) + (tonumber(sheet.Bonus2d10) or 0);
			node.Upa3d10 = tonumber(node.Dificuldade3d10DoJutsu1) + (tonumber(sheet.Bonus3d10) or 0);
			node.Upa1d20 = tonumber(node.Dificuldade1d20DoJutsu1) + (tonumber(sheet.Bonus1d20) or 0);
		end;
		
		if sheet.TreinoON == true then	
			mesaDoPersonagem.chat:rolarDados("1d10", "[§K3]Fortificamento de Jutsu",
			function (rolado)
			if node.DescriJutsu == nil then
				showMessage("Falta Descrição do Jutsu ou não irá funcionar");
				self.btnUparJutsu3.visible = true;
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
												node.Dificuldade1d10DoJutsu1Estudo = 0;
												node.Dificuldade2d10DoJutsu1Estudo = 0;
												node.Dificuldade3d10DoJutsu1Estudo = 0;
												node.Dificuldade1d20DoJutsu1Estudo = 0;																			
												node.LevelJutsu1 = tonumber(node.LevelJutsu1 or 0) + 1;
												RecebeXPPorJutsu3();
												self.btnUparJutsu3.visible = true;	
											else 
												mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Ultima");
												node.Dificuldade1d20DoJutsu1Estudo = (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) + 1;
												self.btnUparJutsu3.visible = true;	
											end;
										end);	
									else
										mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Terceira");
										node.Dificuldade3d10DoJutsu1Estudo = (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) + 1;
										self.btnUparJutsu3.visible = true;																
									end;
								end);
							else
								mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Segunda");
								node.Dificuldade2d10DoJutsu1Estudo = (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) + 1;
								self.btnUparJutsu3.visible = true;														
							end;												
						end)
					else
						mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Primeira");
						node.Dificuldade1d10DoJutsu1Estudo = (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) + 1;
						self.btnUparJutsu3.visible = true;
					end;
				end;
			end);
		else
			showMessage("TREINO NÃO HABILITADO PROVAVELMENTE O MESTRE ESTA OFFLINE");
			self.btnUparJutsu3.visible = true;
		end;
	end;				
	



		
	function RecebeXPPorJutsu3() 					
		local node = self.ListaJutsus3.node;
													
		if node.RankPorTreino == "E" then
			sheet.ExpPTreino = 200;
		elseif	node.RankPorTreino == "D" then
			sheet.ExpPTreino = 400;
		elseif	node.RankPorTreino == "C" then
			sheet.ExpPTreino = 600;
		elseif	node.RankPorTreino == "B" then
			sheet.ExpPTreino = 800;
		elseif	node.RankPorTreino == "A" then
			sheet.ExpPTreino = 1000;
		elseif	node.RankPorTreino == "S" then
			sheet.ExpPTreino = 1500;
		elseif	node.RankPorTreino == "SS" then
			sheet.ExpPTreino = 2000;
		elseif	node.RankPorTreino == "X" then
			sheet.ExpPTreino = 2500;
		elseif	node.RankPorTreino == "X+" then
			sheet.ExpPTreino = 3000;
		end;
	end;
	
	function FazCalculoTipoLista3Intensidade1() 
		local node = self.ListaJutsus3.node;	
		
		if	self.ListaJutsus3.visible == true then
			local node = self.ListaJutsus3.node;	 
			node.Lista1Intensidade1 = 0;	
			
			if node.TipoLista1Jutsu1 == 'Tai' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.TaiTotal) or 0);	
			end;	
			
			if node.TipoLista1Jutsu1 == 'Nin' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.NinTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Gen' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.GenTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Elemental' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.EleTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'DanoArmado' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoArmado) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'M/Tai' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.TaiTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'M/Nin' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.NinTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'M/Gen' then	
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.GenTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'M/Elemental' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.EleTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'M/DA' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoArmado / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Selamento' then
				node.Lista1Intensidade1 = 0;	
			end;
			
			if node.TipoLista1Jutsu1 == 'Outros' then
				node.Lista1Intensidade1 = 0;
			end;
			
			if node.TipoLista1Jutsu1 == 'Nulo' then
				node.Lista1Intensidade1 = 0;	
			end;
			
			if node.TipoLista1Jutsu1 == 'Kunai' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoKunai) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Shuriken' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoShuriken) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Shuriken Fuuma' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoShurikenFuuma) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Kunai Gigante' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.DanoKunaiGigante) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Senbon' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.Senbon) or 0);
			end;
			
			if node.TipoLista1Jutsu1 == 'Papel Bomba' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.PB) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Ginso Explosivo' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.GinsoExplosivo) or 0);
			end;
			
			if node.TipoLista1Jutsu1 == 'Veneno' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.Veneno) or 0);	
			end;
			
			if node.TipoLista1Jutsu1 == 'Bandagem' then
				node.Lista1Intensidade1 = math.floor(tonumber(sheet.Bandagem) or 0);
			end;		
		end;	
	end;

	function FazCalculoTipoLista3Intensidade2() 
		local node = self.ListaJutsus3.node;	
		
		if	self.ListaJutsus3.visible == true then
			local node = self.ListaJutsus3.node;	
			node.Lista1Intensidade2 = 0;	

			if node.TipoLista1Jutsu2 == 'Nulo' then
				node.Lista1Intensidade2 = 0;	
			end;

			if node.TipoLista1Jutsu2 == 'Tai' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.TaiTotal) or 0);	
			end;	
			
			if node.TipoLista1Jutsu2 == 'Nin' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.NinTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Gen' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.GenTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Elemental' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.EleTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'DanoArmado' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoArmado) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'M/Tai' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.TaiTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'M/Nin' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.NinTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'M/Gen' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.GenTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'M/Elemental' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.EleTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'M/DA' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoArmado / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Selamento' then
				node.Lista1Intensidade2 = 0;	
			end;
			
			if node.TipoLista1Jutsu2 == 'Outros' then
				node.Lista1Intensidade2 = 0;
			end;
			
			if node.TipoLista1Jutsu2 == 'Kunai' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoKunai) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Shuriken' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoShuriken) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Shuriken Fuuma' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoShurikenFuuma) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Kunai Gigante' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.DanoKunaiGigante) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Senbon' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.Senbon) or 0);
			end;
			
			if node.TipoLista1Jutsu2 == 'Papel Bomba' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.PB) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Ginso Explosivo' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.GinsoExplosivo) or 0);
			end;
			
			if node.TipoLista1Jutsu2 == 'Veneno' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.Veneno) or 0);	
			end;
			
			if node.TipoLista1Jutsu2 == 'Bandagem' then
				node.Lista1Intensidade2 = math.floor(tonumber(sheet.Bandagem) or 0);
			end;		
		end;	
	end;

	function FazCalculoTipoLista3Intensidade3() 
		local node = self.ListaJutsus3.node;	
		
		if	self.ListaJutsus3.visible == true then
			local node = self.ListaJutsus3.node;	

			node.Lista1Intensidade3 = 0;

			if node.TipoLista1Jutsu3 == 'Nulo' then
				node.Lista1Intensidade3 = 0;	
			end;

			if node.TipoLista1Jutsu3 == 'Tai' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.TaiTotal) or 0);	
			end;	
			
			if node.TipoLista1Jutsu3 == 'Nin' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.NinTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Gen' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.GenTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Elemental' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.EleTotal) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'DanoArmado' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoArmado) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'M/Tai' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.TaiTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'M/Nin' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.NinTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'M/Gen' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.GenTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'M/Elemental' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.EleTotal / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'M/DA' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoArmado / 2) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Selamento' then
				node.Lista1Intensidade3 = 0;	
			end;
			
			if node.TipoLista1Jutsu3 == 'Outros' then
				node.Lista1Intensidade3 = 0;
			end;
			
			if node.TipoLista1Jutsu3 == 'Kunai' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoKunai) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Shuriken' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoShuriken) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Shuriken Fuuma' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoShurikenFuuma) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Kunai Gigante' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.DanoKunaiGigante) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Senbon' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.Senbon) or 0);
			end;
			
			if node.TipoLista1Jutsu3 == 'Papel Bomba' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.PB) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Ginso Explosivo' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.GinsoExplosivo) or 0);
			end;
			
			if node.TipoLista1Jutsu3 == 'Veneno' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.Veneno) or 0);	
			end;
			
			if node.TipoLista1Jutsu3 == 'Bandagem' then
				node.Lista1Intensidade3 = math.floor(tonumber(sheet.Bandagem) or 0);
			end;		
		end;		
	end;

	function FazCalculoTipoListaIntensidadeTotal3() 
		local node = self.ListaJutsus3.node;	
		
		if	self.ListaJutsus3.visible == true then
			local node = self.ListaJutsus3.node;	                   
			node.Lista1IntensidadeTotal = (tonumber(node.DNVerdadeiro) or 0) + (tonumber(node.Lista1Intensidade1) or 0) + (tonumber(node.Lista1Intensidade2) or 0) + (tonumber(node.Lista1Intensidade3) or 0);										
		end;		
	end;

	function FazCalculodoCustoReal3() 
		local node = self.ListaJutsus3.node;	
		
		if	self.ListaJutsus3.visible == true then
			local node = self.ListaJutsus3.node;	
			
			if node.LevelJutsu1 == nil then
				node.LevelJutsu1 = 1;
			end;
			
			node.AdicionalCusto = ((tonumber(node.LevelJutsu1 * 2) or 0) - 2);
			node.CustoJutsuReal = tonumber(node.CustoJutsu or 0) + tonumber(node.AdicionalCusto or 0) or 0;							
		end;		
	end;

	function FazCalculodoCustoEnergia3() 
		local node = self.ListaJutsus3.node;
		
		if	self.ListaJutsus3.visible == true then
			local node = self.ListaJutsus3.node;  
			node.CustoEnergia = math.floor(tonumber(node.CustoEnergia) or 0);						
		end;		
	end;




		function PreparaDifuculdadeAprenderRankE()							
			local node = self.dsbListadeTreino.node;
							
				if node.RankPorAprender == 'E' then
					if sheet.GraduacaoTreino == 'Academico' then					
						node.Dificuldade1d10DoJutsu1 = 5 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 5 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 5 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 15 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Genin' then
						node.Dificuldade1d10DoJutsu1 = 6 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 6 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 6 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 16 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Chunin' then
						node.Dificuldade1d10DoJutsu1 = 7 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 7 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 7 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 17 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Jounin' then
						node.Dificuldade1d10DoJutsu1 = 8 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 8 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 8 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 18 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Anbu' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'AnbuNucleo' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Organização' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'GDE' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Concelheiro' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Kage' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
				end;
				
				VerificaIntermediariosParaAprendizado();
				ImpoeLimitenoAprendizado();
		end;			
		



		function PreparaDifuculdadeAprenderRankD()							
			local node = self.dsbListadeTreino.node;
						
				if node.RankPorAprender == 'D' then
					if sheet.GraduacaoTreino == 'Academico' then					
						node.Dificuldade1d10DoJutsu1 = 4 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 4 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 4 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 14 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Genin' then
						node.Dificuldade1d10DoJutsu1 = 5 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 5 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 5 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 15 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Chunin' then
						node.Dificuldade1d10DoJutsu1 = 6 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 6 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 6 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 16 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Jounin' then
						node.Dificuldade1d10DoJutsu1 = 7 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 7 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 7 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 17 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Anbu' then
						node.Dificuldade1d10DoJutsu1 = 8 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 8 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 8 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 18 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'AnbuNucleo' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Organização' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'GDE' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Concelheiro' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Kage' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
				end;	

				VerificaIntermediariosParaAprendizado();
				ImpoeLimitenoAprendizado();
		end;			
		



		function PreparaDifuculdadeAprenderRankC()							
			local node = self.dsbListadeTreino.node;
								
				if node.RankPorAprender == 'C' then
					if sheet.GraduacaoTreino == 'Academico' then					
						node.Dificuldade1d10DoJutsu1 = 3 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 3 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 3 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 13 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Genin' then
						node.Dificuldade1d10DoJutsu1 = 4 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 4 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 4 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 14 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Chunin' then
						node.Dificuldade1d10DoJutsu1 = 5 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 5 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 5 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 15 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Jounin' then
						node.Dificuldade1d10DoJutsu1 = 6 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 6 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 6 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 16 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Anbu' then
						node.Dificuldade1d10DoJutsu1 = 7 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 7 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 7 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 17 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'AnbuNucleo' then
						node.Dificuldade1d10DoJutsu1 = 8 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 8 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 8 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 18 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Organização' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'GDE' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Concelheiro' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Kage' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
				end;
				
				VerificaIntermediariosParaAprendizado();
				ImpoeLimitenoAprendizado();
		end;	
		



		function PreparaDifuculdadeAprenderRankB()							
			local node = self.dsbListadeTreino.node;
								
				if node.RankPorAprender == 'B' then
					if sheet.GraduacaoTreino == 'Academico' then					
						node.Dificuldade1d10DoJutsu1 = 2 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 2 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 2 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 12 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Genin' then
						node.Dificuldade1d10DoJutsu1 = 3 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 3 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 3 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 13 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Chunin' then
						node.Dificuldade1d10DoJutsu1 = 4 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 4 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 4 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 14 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Jounin' then
						node.Dificuldade1d10DoJutsu1 = 5 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 5 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 5 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 15 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Anbu' then
						node.Dificuldade1d10DoJutsu1 = 6 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 6 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 6 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 16 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'AnbuNucleo' then
						node.Dificuldade1d10DoJutsu1 = 7 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 7 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 7 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 17 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Organização' then
						node.Dificuldade1d10DoJutsu1 = 8 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 8 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 8 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 18 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'GDE' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Concelheiro' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Kage' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
				end;
				
				VerificaIntermediariosParaAprendizado();
				ImpoeLimitenoAprendizado();
		end;	
		



		function PreparaDifuculdadeAprenderRankA()							
			local node = self.dsbListadeTreino.node;
								
				if node.RankPorAprender == 'A' then
					if sheet.GraduacaoTreino == 'Academico' then					
						node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Genin' then
						node.Dificuldade1d10DoJutsu1 = 2 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 2 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 2 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 12 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Chunin' then
						node.Dificuldade1d10DoJutsu1 = 3 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 3 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 3 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 13 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Jounin' then
						node.Dificuldade1d10DoJutsu1 = 4 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 4 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 4 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 14 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Anbu' then
						node.Dificuldade1d10DoJutsu1 = 5 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 5 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 5 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 15 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'AnbuNucleo' then
						node.Dificuldade1d10DoJutsu1 = 6 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 6 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 6 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 16 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Organização' then
						node.Dificuldade1d10DoJutsu1 = 7 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 7 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 7 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 17 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'GDE' then
						node.Dificuldade1d10DoJutsu1 = 8 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 8 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 8 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 18 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Concelheiro' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Kage' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
				end;
				
				VerificaIntermediariosParaAprendizado();
				ImpoeLimitenoAprendizado();
		end;	
		



		function PreparaDifuculdadeAprenderRankS()							
			local node = self.dsbListadeTreino.node;
								
				if node.RankPorAprender == 'S' then
					if sheet.GraduacaoTreino == 'Academico' then					
						node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Genin' then
						node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Chunin' then
						node.Dificuldade1d10DoJutsu1 = 2 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 2 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 2 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 12 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Jounin' then
						node.Dificuldade1d10DoJutsu1 = 3 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 3 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 3 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 13 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Anbu' then
						node.Dificuldade1d10DoJutsu1 = 4 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 4 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 4 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 14 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'AnbuNucleo' then
						node.Dificuldade1d10DoJutsu1 = 5 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 5 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 5 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 15 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Organização' then
						node.Dificuldade1d10DoJutsu1 = 6 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 6 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 6 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 16 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'GDE' then
						node.Dificuldade1d10DoJutsu1 = 7 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 7 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 7 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 17 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Concelheiro' then
						node.Dificuldade1d10DoJutsu1 = 8 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 8 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 8 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 18 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Kage' then
						node.Dificuldade1d10DoJutsu1 = 9 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 9 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 9 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 19 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
				end;
				
				VerificaIntermediariosParaAprendizado();
				ImpoeLimitenoAprendizado();
		end;	
		



		function PreparaDifuculdadeAprenderRankSS()							
			local node = self.dsbListadeTreino.node;
								
				if node.RankPorAprender == 'SS' then
					if sheet.GraduacaoTreino == 'Academico' then					
						node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Genin' then
						node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Chunin' then
						node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Jounin' then
						node.Dificuldade1d10DoJutsu1 = 2 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 2 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 2 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 12 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Anbu' then
						node.Dificuldade1d10DoJutsu1 = 3 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 3 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 3 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 13 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'AnbuNucleo' then
						node.Dificuldade1d10DoJutsu1 = 4 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 4 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 4 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 14 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Organização' then
						node.Dificuldade1d10DoJutsu1 = 5 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 5 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 5 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 15 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'GDE' then
						node.Dificuldade1d10DoJutsu1 = 6 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 6 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 6 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 16 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Concelheiro' then
						node.Dificuldade1d10DoJutsu1 = 7 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 7 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 7 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 17 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Kage' then
						node.Dificuldade1d10DoJutsu1 = 8 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 8 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 8 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 18 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
				end;
				
				VerificaIntermediariosParaAprendizado();
				ImpoeLimitenoAprendizado();
		end;	
		



		function PreparaDifuculdadeAprenderRankX()							
			local node = self.dsbListadeTreino.node;
								
				if node.RankPorAprender == 'X' then
					if sheet.GraduacaoTreino == 'Academico' then					
						node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Genin' then
						node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Chunin' then
						node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Jounin' then
						node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Anbu' then
						node.Dificuldade1d10DoJutsu1 = 2 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 2 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 2 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 12 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'AnbuNucleo' then
						node.Dificuldade1d10DoJutsu1 = 3 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 3 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 3 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 13 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Organização' then
						node.Dificuldade1d10DoJutsu1 = 4 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 4 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 4 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 14 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'GDE' then
						node.Dificuldade1d10DoJutsu1 = 5 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 5 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 5 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 15 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Concelheiro' then
						node.Dificuldade1d10DoJutsu1 = 6 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 6 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 6 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 16 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Kage' then
						node.Dificuldade1d10DoJutsu1 = 7 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 7 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 7 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 17 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
				end;
				
				VerificaIntermediariosParaAprendizado();
				ImpoeLimitenoAprendizado();
		end;	
		



		function PreparaDifuculdadeAprenderRankXPLUS()							
			local node = self.dsbListadeTreino.node;			
			
				if node.RankPorAprender == 'X+' then
					if sheet.GraduacaoTreino == 'Academico' then					
						node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Genin' then
						node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Chunin' then
						node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Jounin' then
						node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Anbu' then
						node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'AnbuNucleo' then
						node.Dificuldade1d10DoJutsu1 = 2 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 2 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 2 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 12 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Organização' then
						node.Dificuldade1d10DoJutsu1 = 3 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 3 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 3 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 13 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'GDE' then
						node.Dificuldade1d10DoJutsu1 = 4 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 4 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 4 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 14 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Concelheiro' then
						node.Dificuldade1d10DoJutsu1 = 5 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 5 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 5 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 15 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
					
					if sheet.GraduacaoTreino == 'Kage' then
						node.Dificuldade1d10DoJutsu1 = 6 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade2d10DoJutsu1 = 6 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade3D10DoJutsu1 = 6 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) or 0;
						node.Dificuldade1d20DoJutsu1 = 16 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) or 0;
					end;
				end;
				
				VerificaIntermediariosParaAprendizado();
				ImpoeLimitenoAprendizado();
		end;	
		



		function VerificaIntermediariosParaAprendizado()							
			local node = self.dsbListadeTreino.node;
				if node.Dificuldade1d10DoJutsu1 ~= nil then
					if node.Dificuldade1d10DoJutsu1 <= 0 then			
						node.Dificuldade1d10DoJutsu1 = 1 + (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0);
					end;
				end;
				
				if node.Dificuldade2d10DoJutsu1 ~= nil then	
					if node.Dificuldade2d10DoJutsu1 <= 0 then		
						node.Dificuldade2d10DoJutsu1 = 1 + (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0);
					end;
				end;
				
				if node.Dificuldade3d10DoJutsu1 ~= nil then
					if node.Dificuldade3D10DoJutsu1 <= 0 then		
						node.Dificuldade3D10DoJutsu1 = 1 + (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0);
					end;
				end;
				
				if node.Dificuldade1d20DoJutsu1 ~= nil then	
					if node.Dificuldade1d20DoJutsu1 <= 0 then		
						node.Dificuldade1d20DoJutsu1 = 11 + (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0);
					end;
				end;					
				
		end;			
		



		function ImpoeLimitenoAprendizado()							
			local node = self.dsbListadeTreino.node;
				if node.Dificuldade1d10DoJutsu1 ~= nil then
					if node.Dificuldade1d10DoJutsu1 >= 9 then			
						node.Dificuldade1d10DoJutsu1 = 9;
					end;
				end;
				
				if node.Dificuldade2d10DoJutsu1 ~= nil then	
					if node.Dificuldade2d10DoJutsu1 >= 9 then		
						node.Dificuldade2d10DoJutsu1 = 9;
					end;
				end;
				
				if node.Dificuldade3d10DoJutsu1 ~= nil then
					if node.Dificuldade3D10DoJutsu1 >= 9 then		
						node.Dificuldade3D10DoJutsu1 = 9;;
					end;
				end;
				
				if node.Dificuldade1d20DoJutsu1 ~= nil then	
					if node.Dificuldade1d20DoJutsu1 >= 20 then		
						node.Dificuldade1d20DoJutsu1 = 19;
					end;
				end;					
				
		end;			
		



		function MonstraProPlayerADificuldadeAprendizado()						
			local node = self.dsbListadeTreino.node;
						
			node.Treina1d10 = tonumber(node.Dificuldade1d10DoJutsu1);
			node.Treina2d10 = tonumber(node.Dificuldade2d10DoJutsu1);
			node.Treina3d10 = tonumber(node.Dificuldade3d10DoJutsu1);
			node.Treina1d20 = tonumber(node.Dificuldade1d20DoJutsu1);			
			
												
		end;				
		




		
		function RecebeXPPorAprenderJutsu() 					
			local node = self.dsbListadeTreino.node;
														
			if node.RankPorAprender == "E" then
				sheet.ExpPTreino = 500;
			elseif	node.RankPorAprender == "D" then
				sheet.ExpPTreino = 1000;
			elseif	node.RankPorAprender == "C" then
				sheet.ExpPTreino = 2000;
			elseif	node.RankPorAprender == "B" then
				sheet.ExpPTreino = 3000;
			elseif	node.RankPorAprender == "A" then
				sheet.ExpPTreino = 5000;
			elseif	node.RankPorAprender == "S" then
				sheet.ExpPTreino = 8000;
			elseif	node.RankPorAprender == "SS" then
				sheet.ExpPTreino = 11000;
			elseif	node.RankPorAprender == "X" then
				sheet.ExpPTreino = 14000;
			elseif	node.RankPorAprender == "X+" then
				sheet.ExpPTreino = 20000;
			end;
		end;
	
	



	function VerificaIntermediariosParaTreinoEDC()
		node.Dificuldade1d10EDC = tonumber(node.Dificuldade1d10EDC) or 1;
		node.Dificuldade2d10EDC = tonumber(node.Dificuldade2d10EDC) or 1;
		node.Dificuldade3d10EDC = tonumber(node.Dificuldade3d10EDC) or 1;
		node.Dificuldade1d20EDC = tonumber(node.Dificuldade1d20EDC) or 1;
	
		if node.Dificuldade1d10EDC ~= nil then
			if node.Dificuldade1d10EDC <= 0 then			
				node.Dificuldade1d10EDC = 1;
			end;
		end;
		
		if node.Dificuldade2d10EDC ~= nil then	
			if node.Dificuldade2d10EDC <= 0 then		
				node.Dificuldade2d10EDC = 1;
			end;
		end;
		
		if node.Dificuldade3d10EDC ~= nil then
			if node.Dificuldade3D10EDC <= 0 then		
				node.Dificuldade3D10EDC = 1;
			end;
		end;
		
		if node.Dificuldade1d20EDC ~= nil then	
			if node.Dificuldade1d20EDC <= 0 then		
				node.Dificuldade1d20EDC = 1;
			end;
		end;					
	end;			
	



	function ImpoeLimitenoTreinoEDC()									
		if node.Dificuldade1d10EDC ~= nil then
			if node.Dificuldade1d10EDC >= 9 then			
				node.Dificuldade1d10EDC = 9;
			end;
		end;
		
		if node.Dificuldade2d10EDC ~= nil then	
			if node.Dificuldade2d10EDC >= 9 then		
				node.Dificuldade2d10EDC = 9;
			end;
		end;
		
		if node.Dificuldade3d10EDC ~= nil then
			if node.Dificuldade3d10EDC >= 9 then		
				node.Dificuldade3d10EDC = 9;;
			end;
		end;
		
		if node.Dificuldade1d20EDC ~= nil then	
			if node.Dificuldade1d20EDC >= 20 then		
				node.Dificuldade1d20EDC = 19;
			end;
		end;			
	end;			
	



	function MonstraProPlayerADificuldadeTreinoEDC()		
		node.Upa1d10 = tonumber(node.Dificuldade1d10EDC) or 1;
		node.Upa2d10 = tonumber(node.Dificuldade2d10EDC) or 1;
		node.Upa3d10 = tonumber(node.Dificuldade3d10EDC) or 1;
		node.Upa1d20 = tonumber(node.Dificuldade1d20EDC) or 1;											
	end;				
	



	function TreinaEDC()	
		VerificaIntermediariosParaTreinoEDC();
		ImpoeLimitenoTreinoEDC();
		MonstraProPlayerADificuldadeTreinoEDC();	
		
		self.btnUpaEDC.visible = false;			
		local mesaDoPersonagem = rrpg.getMesaDe(sheet);		
		
		if sheet.TreinoON == true then	
			mesaDoPersonagem.chat:rolarDados("1d10", "[§K3]Fortificamento de Jutsu",
			function (rolado)
			if node.DEDC == nil then
				showMessage("Falta Descrição do Jutsu ou não irá funcionar");
				self.btnUpaEDC.visible = true;
			else 
				mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. node.DEDC);										
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
												showMessage("Voce Upou seu estilo de combate e precisa desativar e ativar ele novamente para poder Atualizar os Status do Estilo de Combate");
												node.Dificuldade1d10EDC = 1;
												node.Dificuldade2d10EDC = 1;
												node.Dificuldade3d10EDC = 1;
												node.Dificuldade1d20EDC = 1;																			
												node.LevelEDC = tonumber(node.LevelEDC or 0) + 1;
												RecebeXPPorEDC();
												self.btnUpaEDC.visible = true;	
											else 
												mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Ultima");
												node.Dificuldade1d20EDC = (tonumber(node.Dificuldade1d20EDC) or 0) + 1;
												self.btnUpaEDC.visible = true;	
											end;
										end);	
									else
										mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Terceira");
										node.Dificuldade3d10EDC = (tonumber(node.Dificuldade3d10EDC) or 0) + 1;
										self.btnUpaEDC.visible = true;																
									end;
								end);
							else
								mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Segunda");
								node.Dificuldade2d10EDC = (tonumber(node.Dificuldade2d10EDC) or 0) + 1;
								self.btnUpaEDC.visible = true;														
							end;												
						end)
					else
						mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Primeira");
						node.Dificuldade1d10EDC = (tonumber(node.Dificuldade1d10EDC) or 0) + 1;
						self.btnUpaEDC.visible = true;
					end;
				end;
			end);
		else
			showMessage("TREINO NÃO HABILITADO PROVAVELMENTE O MESTRE ESTA OFFLINE");
			self.btnUpaEDC.visible = true;
		end;
	end;				
	



	
	function RecebeXPPorEDC() 						
		sheet.ExpPTreino = 5000 * tonumber(node.LevelEDC);
	end;
	
	function FazCalculoTipoLista1Intensidade1EDC() 	
		if	self.rclEstiloCombate.visible == true then
			node.Lista1Intensidade1EDC = 0;				
			
			if node.Tipo1EDC == 'Tai' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.TaiTotal) or 0);	
			end;	
			
			if node.Tipo1EDC == 'Nin' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.NinTotal) or 0);	
			end;
			
			if node.Tipo1EDC == 'Gen' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.GenTotal) or 0);	
			end;
			
			if node.Tipo1EDC == 'Elemental' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.EleTotal) or 0);	
			end;
			
			if node.Tipo1EDC == 'DanoArmado' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.DanoArmado) or 0);	
			end;
			
			if node.Tipo1EDC == 'M/Tai' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.TaiTotal / 2) or 0);	
			end;
			
			if node.Tipo1EDC == 'M/Nin' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.NinTotal / 2) or 0);	
			end;
			
			if node.Tipo1EDC == 'M/Gen' then	
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.GenTotal / 2) or 0);	
			end;
			
			if node.Tipo1EDC == 'M/Elemental' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.EleTotal / 2) or 0);	
			end;
			
			if node.Tipo1EDC == 'M/DA' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.DanoArmado / 2) or 0);	
			end;
			
			if node.Tipo1EDC == 'Selamento' then
				node.Lista1Intensidade1EDC = 0;	
			end;
			
			if node.Tipo1EDC == 'Outros' then
				node.Lista1Intensidade1EDC = 0;
			end;
			
			if node.Tipo1EDC == 'Nulo' then
				node.Lista1Intensidade1EDC = 0;	
			end;
			
			if node.Tipo1EDC == 'Kunai' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.DanoKunai) or 0);	
			end;
			
			if node.Tipo1EDC == 'Shuriken' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.DanoShuriken) or 0);	
			end;
			
			if node.Tipo1EDC == 'Shuriken Fuuma' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.DanoShurikenFuuma) or 0);	
			end;
			
			if node.Tipo1EDC == 'Kunai Gigante' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.DanoKunaiGigante) or 0);	
			end;
			
			if node.Tipo1EDC == 'Senbon' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.Senbon) or 0);
			end;
			
			if node.Tipo1EDC == 'Papel Bomba' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.PB) or 0);	
			end;
			
			if node.Tipo1EDC == 'Ginso Explosivo' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.GinsoExplosivo) or 0);
			end;
			
			if node.Tipo1EDC == 'Veneno' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.Veneno) or 0);	
			end;
			
			if node.Tipo1EDC == 'Bandagem' then
				node.Lista1Intensidade1EDC = math.floor(tonumber(sheet.Bandagem) or 0);
			end;				
		end;	
	end;

	function FazCalculoTipoLista1Intensidade2EDC()		
		if	self.rclEstiloCombate.visible == true then
			node.Lista1Intensidade2EDC = 0;	

			if node.Tipo2EDC == 'Nulo' then
				node.Lista1Intensidade2EDC = 0;	
			end;

			if node.Tipo2EDC == 'Tai' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.TaiTotal) or 0);	
			end;	
			
			if node.Tipo2EDC == 'Nin' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.NinTotal) or 0);	
			end;
			
			if node.Tipo2EDC == 'Gen' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.GenTotal) or 0);	
			end;
			
			if node.Tipo2EDC == 'Elemental' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.EleTotal) or 0);	
			end;
			
			if node.Tipo2EDC == 'DanoArmado' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.DanoArmado) or 0);	
			end;
			
			if node.Tipo2EDC == 'M/Tai' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.TaiTotal / 2) or 0);	
			end;
			
			if node.Tipo2EDC == 'M/Nin' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.NinTotal / 2) or 0);	
			end;
			
			if node.Tipo2EDC == 'M/Gen' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.GenTotal / 2) or 0);	
			end;
			
			if node.Tipo2EDC == 'M/Elemental' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.EleTotal / 2) or 0);	
			end;
			
			if node.Tipo2EDC == 'M/DA' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.DanoArmado / 2) or 0);	
			end;
			
			if node.Tipo2EDC == 'Selamento' then
				node.Lista1Intensidade2EDC = 0;	
			end;
			
			if node.Tipo2EDC == 'Outros' then
				node.Lista1Intensidade2EDC = 0;
			end;
			
			if node.Tipo2EDC == 'Kunai' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.DanoKunai) or 0);	
			end;
			
			if node.Tipo2EDC == 'Shuriken' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.DanoShuriken) or 0);	
			end;
			
			if node.Tipo2EDC == 'Shuriken Fuuma' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.DanoShurikenFuuma) or 0);	
			end;
			
			if node.Tipo2EDC == 'Kunai Gigante' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.DanoKunaiGigante) or 0);	
			end;
			
			if node.Tipo2EDC == 'Senbon' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.Senbon) or 0);
			end;
			
			if node.Tipo2EDC == 'Papel Bomba' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.PB) or 0);	
			end;
			
			if node.Tipo2EDC == 'Ginso Explosivo' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.GinsoExplosivo) or 0);
			end;
			
			if node.Tipo2EDC == 'Veneno' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.Veneno) or 0);	
			end;
			
			if node.Tipo2EDC == 'Bandagem' then
				node.Lista1Intensidade2EDC = math.floor(tonumber(sheet.Bandagem) or 0);
			end;		
		end;	
	end;

	function FazCalculoTipoListaIntensidadeTotal1EDC() 	
		if	self.rclEstiloCombate.visible == true then			
			node.IntensidadeEDC = (tonumber(node.DanoVerdadeiroEDC) or 0) + (tonumber(node.Lista1Intensidade1EDC) or 0) + (tonumber(node.Lista1Intensidade2EDC) or 0);										
		end;		
	end;

	function FazCalculodoCustoReal1EDC() 	
		if	self.rclEstiloCombate.visible == true then		
			if node.LevelEDC == nil then
				node.LevelEDC = 1;
			end;
			
			node.AdicionalCustoEDC = ((tonumber(node.LevelEDC * 2) or 0) - 2);
			node.CustoRealEDC = tonumber(node.CustoEDC or 0) + tonumber(node.AdicionalCustoEDC or 0) or 0;							
		end;		
	end;

	function FazCalculodoCustoEnergia1EDC()	
		if	self.rclEstiloCombate.visible == true then 
			node.EnergiaCustoEDC = math.floor(tonumber(node.EnergiaCustoEDC) or 0);						
		end;		
	end;



    obj.frmScript = GUI.fromHandle(_obj_newObject("popupForm"));
    obj.frmScript:setParent(obj);
    obj.frmScript:setName("frmScript");
    obj.frmScript:setWidth(1050);
    obj.frmScript:setHeight(650);


		local function TreinandoStatus()
			local mesaDoPersonagem = rrpg.getMesaDe(sheet); 
			if sheet.TreinoON == false then
				showMessage("MESTRE FORA DA MESA O TREINO NÃO ESTA HABILITADO");
				mesaDoPersonagem.chat:enviarMensagem("[§K3]MESTRE FORA DA MESA O TREINO NÃO ESTA HABILITADO");
			else
				sheet.gambiarrento = 0;  
				sheet.EsperaTreinoResultado = 0;
				sheet.modificador = 0;						
				if sheet.GraduacaoTreino == "" then
					showMessage("Tu não tem Graduação pra treino não filho da puta ? Ajeita essa merda eu passo horas programando pra tu rolar essa merda e nem colocar a graduação seu imundo ?");
				else
					if sheet.VezesPDia == 0 then
						showMessage("VAI TREINAR 0 VEZES POR DIA ? SEU ARROMBADO ENTÃO TU NÃO VAI GANHAR PONTO SEU LIXO ESPACIAL");
					else
						if sheet.GraduacaoTreino == "Academico" then
							mesaDoPersonagem.chat:rolarDados("1d4 + " .. sheet.gambiarrento, "[§K3]Treinando Status",
							function (rolado)                                            
								mesaDoPersonagem.chat:enviarMensagem("[§K3]Treinou igual um  FDP e recebeu [§K4]" .. rolado.resultado * 5);
								sheet.EsperaTreinoResultado = rolado.resultado * 5;
								sheet.EsperaTreinoResultado  = sheet.EsperaTreinoResultado * 1;
								sheet.GanhoPTreino = sheet.EsperaTreinoResultado;
								sheet.ExpPTreino = (sheet.GanhoPTreino /2);
								ZeradorTreino();
							end);          	
						end;
						
						if sheet.GraduacaoTreino == "Genin" then
							mesaDoPersonagem.chat:rolarDados("1d4 + " .. sheet.modificador, "Treinando Status",
							function (rolado)                                            
								mesaDoPersonagem.chat:enviarMensagem("[§K3]Treinou igual um  FDP e recebeu [§K4]" .. rolado.resultado * 20);
								sheet.EsperaTreinoResultado = rolado.resultado * 20;
								sheet.EsperaTreinoResultado  = sheet.EsperaTreinoResultado * 1;
								sheet.GanhoPTreino = sheet.EsperaTreinoResultado;
								sheet.ExpPTreino = (sheet.GanhoPTreino / 2);
								ZeradorTreino();
								end);          	
						end;
						
						if sheet.GraduacaoTreino == "Chunin" then
							mesaDoPersonagem.chat:rolarDados("1d4 + " .. sheet.modificador, "Treinando Status",
							function (rolado)                                            
								mesaDoPersonagem.chat:enviarMensagem("[§K3]Treinou igual um  FDP e recebeu [§K4]" .. rolado.resultado * 100);
								sheet.EsperaTreinoResultado = rolado.resultado * 100;
								sheet.EsperaTreinoResultado  = sheet.EsperaTreinoResultado * 1;
								sheet.GanhoPTreino = sheet.EsperaTreinoResultado;
								sheet.ExpPTreino = (sheet.GanhoPTreino / 5);
								ZeradorTreino();
								end);          	
						end;
						
						if sheet.GraduacaoTreino == "Jounin" then
							mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.modificador, "Treinando Status",
							function (rolado)                                            
								mesaDoPersonagem.chat:enviarMensagem("[§K3]Treinou igual um  FDP e recebeu [§K4]" .. rolado.resultado * 100);
								sheet.EsperaTreinoResultado = rolado.resultado * 100;
								sheet.EsperaTreinoResultado  = sheet.EsperaTreinoResultado * 1;
								sheet.GanhoPTreino = sheet.EsperaTreinoResultado;
								sheet.ExpPTreino = (sheet.GanhoPTreino / 5);
								ZeradorTreino();
								end);          	
						end;
						
						if sheet.GraduacaoTreino == "Anbu" then
							mesaDoPersonagem.chat:rolarDados("1d50 + " .. sheet.modificador, "Treinando Status",
							function (rolado)                                            
								mesaDoPersonagem.chat:enviarMensagem("[§K3]Treinou igual um  FDP e recebeu [§K4]" .. rolado.resultado * 100);
								sheet.EsperaTreinoResultado = rolado.resultado * 100;
								sheet.EsperaTreinoResultado  = sheet.EsperaTreinoResultado * 1;
								sheet.GanhoPTreino = sheet.EsperaTreinoResultado;
								sheet.ExpPTreino = (sheet.GanhoPTreino * 0.10);
								ZeradorTreino();
								end);          	
						end;
						
						if sheet.GraduacaoTreino == "AnbuNucleo" then
							mesaDoPersonagem.chat:rolarDados("1d100 + " .. sheet.modificador, "Treinando Status",
							function (rolado)                                            
								mesaDoPersonagem.chat:enviarMensagem("[§K3]Treinou igual um  FDP e recebeu [§K4]" .. rolado.resultado * 100);
								sheet.EsperaTreinoResultado = rolado.resultado * 100;
								sheet.EsperaTreinoResultado  = sheet.EsperaTreinoResultado * 1;
								sheet.GanhoPTreino = sheet.EsperaTreinoResultado;
								sheet.ExpPTreino = (sheet.GanhoPTreino * 0.10);
								ZeradorTreino();
								end);          	
						end;
						
						if sheet.GraduacaoTreino == "Organização" then
							mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.modificador, "Treinando Status",
							function (rolado)                                            
								mesaDoPersonagem.chat:enviarMensagem("[§K3]Treinou igual um  FDP e recebeu [§K4]" .. rolado.resultado * 1000);
								sheet.EsperaTreinoResultado = rolado.resultado * 1000;
								sheet.EsperaTreinoResultado  = sheet.EsperaTreinoResultado * 1;
								sheet.GanhoPTreino = sheet.EsperaTreinoResultado;
								sheet.ExpPTreino = (sheet.GanhoPTreino * 0.05);
								ZeradorTreino();
							end);          	
						end;
						
						if sheet.GraduacaoTreino == "GDE" then
							mesaDoPersonagem.chat:rolarDados("1d6 + " .. sheet.modificador, "Treinando Status",
							function (rolado)                                            
								mesaDoPersonagem.chat:enviarMensagem("[§K3]Treinou igual um  FDP e recebeu [§K4]" .. rolado.resultado * 10000);
								sheet.EsperaTreinoResultado = rolado.resultado * 10000;
								sheet.EsperaTreinoResultado  = sheet.EsperaTreinoResultado * 1;
								sheet.GanhoPTreino = sheet.EsperaTreinoResultado;
								sheet.ExpPTreino = (sheet.GanhoPTreino * 0.05);
								ZeradorTreino();
							end);          	
						end;
						
						if sheet.GraduacaoTreino == "Concelheiro" then
							mesaDoPersonagem.chat:rolarDados("1d12 + " .. sheet.modificador, "Treinando Status",
							function (rolado)                                            
								mesaDoPersonagem.chat:enviarMensagem("[§K3]Treinou igual um  FDP e recebeu [§K4]" .. rolado.resultado * 10000);
								sheet.EsperaTreinoResultado = rolado.resultado * 10000;
								sheet.EsperaTreinoResultado  = sheet.EsperaTreinoResultado * 1;
								sheet.GanhoPTreino = sheet.EsperaTreinoResultado;
								sheet.ExpPTreino = (sheet.GanhoPTreino * 0.01);
								ZeradorTreino();
							end);      
						end;
						
						if sheet.GraduacaoTreino == "Kage" then
							mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.modificador, "Treinando Status",
							function (rolado)                                            
								mesaDoPersonagem.chat:enviarMensagem("[§K3]Treinou igual um  FDP e recebeu [§K4]" .. rolado.resultado * 10000);
								sheet.EsperaTreinoResultado = rolado.resultado * 10000;
								sheet.EsperaTreinoResultado  = sheet.EsperaTreinoResultado * 1;
								sheet.GanhoPTreino = sheet.EsperaTreinoResultado;
								sheet.ExpPTreino = (sheet.GanhoPTreino * 0.01);
								ZeradorTreino();
							end); 				
						end;
					end; 
				end;
			end;
		end;				
	


		
		function ZeradorTreino() 
			sheet.VezesPDia = 1;
		end;	
	


		
		function LevelUPHP()						
			if sheet.GraduacaoTreino == 'Academico' then
				sheet.GHP =  (tonumber(sheet.GHP) or 0) + 200;
			end;
			
			if sheet.GraduacaoTreino == 'Genin' then
				sheet.GHP =  (tonumber(sheet.GHP) or 0) + 400;
			end;
			
			if sheet.GraduacaoTreino == 'Chunin' then
				sheet.GHP =  (tonumber(sheet.GHP) or 0) + 2000;		
			end;
			
			if sheet.GraduacaoTreino == 'Jounin' then
				sheet.GHP =  (tonumber(sheet.GHP) or 0) + 10000;
			end;
			
			if sheet.GraduacaoTreino == 'Anbu' then
				sheet.GHP =  (tonumber(sheet.GHP) or 0) + 20000;
			end;
		   
			if sheet.GraduacaoTreino == 'AnbuNucleo' then
				sheet.GHP =  (tonumber(sheet.GHP) or 0) + 30000;
			end;
			
			if sheet.GraduacaoTreino == 'Organização' then
				sheet.GHP =  (tonumber(sheet.GHP) or 0) + 40000;
			end;				
							
			if sheet.GraduacaoTreino == 'GDE' then
				sheet.GHP =  (tonumber(sheet.GHP) or 0) + 60000;
			end;				
							
			if sheet.GraduacaoTreino == 'Concelheiro' then
				sheet.GHP =  (tonumber(sheet.GHP) or 0) + 80000;
			end;				
							
			if sheet.GraduacaoTreino == 'Kage' then
				sheet.GHP =  (tonumber(sheet.GHP) or 0) + 100000;
			end;					
		end;	
	



		function CalculaTransformacaoSennin();
			if sheet.Sequenci1 == true then
				if sheet.Transformado5 == true then	
					sheet.TISTaijutsu = tonumber(sheet.TransSenninTaijutsu) or 0;
					sheet.TISNinjutsu = tonumber(sheet.TransSenninNinjutsu) or 0;
					sheet.TISGenjutsu = tonumber(sheet.TransSenninGenjutsu) or 0;
					sheet.TISDA = tonumber(sheet.TransSenninDA) or 0;
					sheet.TISElemental = tonumber(sheet.TransSenninElemental) or 0;				
					sheet.TISHP = tonumber(sheet.TransSenninHP) or 0;
					sheet.TISChakra = tonumber(sheet.TransSenninChakra) or 0;
					sheet.TISReiatsu = tonumber(sheet.TransSenninReiatsu) or 0;
					sheet.TISOutros = tonumber(sheet.TransSenninOutros) or 0;				
					sheet.TISReducao = tonumber(sheet.TransSenninReducao) or 0;				
					sheet.TISATai = tonumber(sheet.TransSenninATai) or 0;
					sheet.TISANin = tonumber(sheet.TransSenninANin) or 0;
					sheet.TISAGen = tonumber(sheet.TransSenninAGen) or 0;
					sheet.TISEsquiva = tonumber(sheet.TransSenninEsquiva) or 0;
					sheet.TISBloqueio = tonumber(sheet.TransSenninBloqueio) or 0;
					sheet.TISCTai = tonumber(sheet.TransSenninCTai) or 0;
					sheet.TISCNin = tonumber(sheet.TransSenninCNin) or 0;
					sheet.TISCGen = tonumber(sheet.TransSenninCGen) or 0;
					sheet.TISTurnos = tonumber(sheet.TransSenninTurnos) or 0;				
				else	
					sheet.TISTaijutsu = 0;
					sheet.TISNinjutsu = 0;
					sheet.TISGenjutsu = 0;
					sheet.TISDA = 0;
					sheet.TISElemental = 0;				
					sheet.TISHP = 0;
					sheet.TISChakra = 0;
					sheet.TISReiatsu = 0;
					sheet.TISOutros = 0;				
					sheet.TISReducao = 0;				
					sheet.TISATai = 0;
					sheet.TISANin = 0;
					sheet.TISAGen = 0;
					sheet.TISEsquiva = 0;
					sheet.TISBloqueio = 0;
					sheet.TISCTai = 0;
					sheet.TISCNin = 0;
					sheet.TISCGen = 0;
					sheet.TISTurnos = 0;		 
				end;
				
				CalculaTransformacaoTotal();
			end;
		end;
	



		function CalculaTransformacaoHollow();
			if sheet.Sequenci1 == true then
				if sheet.Transformado3 == true then	
					sheet.TIHTaijutsu = tonumber(sheet.TransHollowTaijutsu) or 0;
					sheet.TIHNinjutsu = tonumber(sheet.TransHollowNinjutsu) or 0;
					sheet.TIHGenjutsu = tonumber(sheet.TransHollowGenjutsu) or 0;
					sheet.TIHDA = tonumber(sheet.TransHollowDA) or 0;
					sheet.TIHElemental = tonumber(sheet.TransHollowElemental) or 0;				
					sheet.TIHHP = tonumber(sheet.TransHollowHP) or 0;
					sheet.TIHChakra = tonumber(sheet.TransHollowChakra) or 0;
					sheet.TIHReiatsu = tonumber(sheet.TransHollowReiatsu) or 0;
					sheet.TIHOutros = tonumber(sheet.TransHollowOutros) or 0;	
					sheet.TIHEnergia = tonumber(sheet.TransHollowEnergia) or 0;					
					sheet.TIHReducao = tonumber(sheet.TransHollowReducao) or 0;				
					sheet.TIHATai = tonumber(sheet.TransHollowATai) or 0;
					sheet.TIHANin = tonumber(sheet.TransHollowANin) or 0;
					sheet.TIHAGen = tonumber(sheet.TransHollowAGen) or 0;
					sheet.TIHEsquiva = tonumber(sheet.TransHollowEsquiva) or 0;
					sheet.TIHBloqueio = tonumber(sheet.TransHollowBloqueio) or 0;
					sheet.TIHCTai = tonumber(sheet.TransHollowCTai) or 0;
					sheet.TIHCNin = tonumber(sheet.TransHollowCNin) or 0;
					sheet.TIHCGen = tonumber(sheet.TransHollowCGen) or 0;
					sheet.TIHTurnos = tonumber(sheet.TransHollowTurnos) or 0;				
				else	
					sheet.TIHTaijutsu = 0;
					sheet.TIHNinjutsu = 0;
					sheet.TIHGenjutsu = 0;
					sheet.TIHDA = 0;
					sheet.TIHElemental = 0;				
					sheet.TIHHP = 0;
					sheet.TIHChakra = 0;
					sheet.TIHReiatsu = 0;
					sheet.TIHOutros = 0;	
					sheet.TIHEnergia = 0;						
					sheet.TIHReducao = 0;				
					sheet.TIHATai = 0;
					sheet.TIHANin = 0;
					sheet.TIHAGen = 0;
					sheet.TIHEsquiva = 0;
					sheet.TIHBloqueio = 0;
					sheet.TIHCTai = 0;
					sheet.TIHCNin = 0;
					sheet.TIHCGen = 0;
					sheet.TIHTurnos = 0;		 
				end;
				
				CalculaTransformacaoTotal();
			end;
		end;
	



		function CalculaTransformacaoBijuMode();
			if sheet.Sequenci1 == true then
				if sheet.Transformado4 == true then	
					sheet.TIBTaijutsu = tonumber(sheet.TransBijuModeTaijutsu) or 0;
					sheet.TIBNinjutsu = tonumber(sheet.TransBijuModeNinjutsu) or 0;
					sheet.TIBGenjutsu = tonumber(sheet.TransBijuModeGenjutsu) or 0;
					sheet.TIBDA = tonumber(sheet.TransBijuModeDA) or 0;
					sheet.TIBElemental = tonumber(sheet.TransBijuModeElemental) or 0;				
					sheet.TIBHP = tonumber(sheet.TransBijuModeHP) or 0;
					sheet.TIBChakra = tonumber(sheet.TransBijuModeChakra) or 0;
					sheet.TIBReiatsu = tonumber(sheet.TransBijuModeReiatsu) or 0;
					sheet.TIBOutros = tonumber(sheet.TransBijuModeOutros) or 0;				
					sheet.TIBReducao = tonumber(sheet.TransBijuModeReducao) or 0;				
					sheet.TIBATai = tonumber(sheet.TransBijuModeATai) or 0;
					sheet.TIBANin = tonumber(sheet.TransBijuModeANin) or 0;
					sheet.TIBAGen = tonumber(sheet.TransBijuModeAGen) or 0;
					sheet.TIBEsquiva = tonumber(sheet.TransBijuModeEsquiva) or 0;
					sheet.TIBBloqueio = tonumber(sheet.TransBijuModeBloqueio) or 0;
					sheet.TIBCTai = tonumber(sheet.TransBijuModeCTai) or 0;
					sheet.TIBCNin = tonumber(sheet.TransBijuModeCNin) or 0;
					sheet.TIBCGen = tonumber(sheet.TransBijuModeCGen) or 0;
					sheet.TIBTurnos = tonumber(sheet.TransBijuModeTurnos) or 0;				
				else	
					sheet.TIBTaijutsu = 0;
					sheet.TIBNinjutsu = 0;
					sheet.TIBGenjutsu = 0;
					sheet.TIBDA = 0;
					sheet.TIBElemental = 0;				
					sheet.TIBHP = 0;
					sheet.TIBChakra = 0;
					sheet.TIBReiatsu = 0;
					sheet.TIBOutros = 0;				
					sheet.TIBReducao = 0;				
					sheet.TIBATai = 0;
					sheet.TIBANin = 0;
					sheet.TIBAGen = 0;
					sheet.TIBEsquiva = 0;
					sheet.TIBBloqueio = 0;
					sheet.TIBCTai = 0;
					sheet.TIBCNin = 0;
					sheet.TIBCGen = 0;
					sheet.TIBTurnos = 0;		 
				end;
				
				CalculaTransformacaoTotal();
			end;
		end;
	



		function CalculaTransformacao();
			if sheet.Sequenci1 == true then
				if sheet.Transformado2 == true then	
					sheet.TITaijutsu = tonumber(sheet.TransTaijutsu) or 0;
					sheet.TINinjutsu = tonumber(sheet.TransNinjutsu) or 0;
					sheet.TIGenjutsu = tonumber(sheet.TransGenjutsu) or 0;
					sheet.TIDA = tonumber(sheet.TransDA) or 0;
					sheet.TIElemental = tonumber(sheet.TransElemental) or 0;				
					sheet.TIHP = tonumber(sheet.TransHP) or 0;
					sheet.TIChakra = tonumber(sheet.TransChakra) or 0;
					sheet.TIReiatsu = tonumber(sheet.TransReiatsu) or 0;
					sheet.TIOutros = tonumber(sheet.TransOutros) or 0;	
					sheet.TIEnergia = tonumber(sheet.TransEnergia) or 0;	
					sheet.TIReducao = tonumber(sheet.TransReducao) or 0;				
					sheet.TIATai = tonumber(sheet.TransATai) or 0;
					sheet.TIANin = tonumber(sheet.TransANin) or 0;
					sheet.TIAGen = tonumber(sheet.TransAGen) or 0;
					sheet.TIEsquiva = (tonumber(sheet.TransEsquiva) or 0);
					sheet.TIBloqueio = tonumber(sheet.TransBloqueio) or 0;
					sheet.TICTai = tonumber(sheet.TransCTai) or 0;
					sheet.TICNin = tonumber(sheet.TransCNin) or 0;
					sheet.TICGen = tonumber(sheet.TransCGen) or 0;
					sheet.TITurnos = tonumber(sheet.TransTurnos) or 0;				
				else	
					sheet.TITaijutsu = 0;
					sheet.TINinjutsu = 0;
					sheet.TIGenjutsu = 0;
					sheet.TIDA = 0;
					sheet.TIElemental = 0;				
					sheet.TIHP = 0;
					sheet.TIChakra = 0;
					sheet.TIReiatsu = 0;
					sheet.TIOutros = 0;
					sheet.TIEnergia = 0;
					sheet.TIReducao = 0;				
					sheet.TIATai = 0;
					sheet.TIANin = 0;
					sheet.TIAGen = 0;
					sheet.TIEsquiva = 0;
					sheet.TIBloqueio = 0;
					sheet.TICTai = 0;
					sheet.TICNin = 0;
					sheet.TICGen = 0;
					sheet.TITurnos = 0;		 
				end;
				
				CalculaTransformacaoTotal();
			end;
		end;
	



		function CalculaTransformacaoTotal();
			if sheet.TransformadoTotal == true then	
				sheet.TTaijutsu = (tonumber(sheet.TITaijutsu) or 0) + (tonumber(sheet.TISTaijutsu) or 0) + (tonumber(sheet.TIHTaijutsu) or 0) + (tonumber(sheet.TIBTaijutsu) or 0);
				sheet.TNinjutsu = (tonumber(sheet.TINinjutsu) or 0) + (tonumber(sheet.TISNinjutsu) or 0) + (tonumber(sheet.TIHNinjutsu) or 0) + (tonumber(sheet.TIBNinjutsu) or 0);
				sheet.TGenjutsu = (tonumber(sheet.TIGenjutsu) or 0) + (tonumber(sheet.TISGenjutsu) or 0) + (tonumber(sheet.TIHGenjutsu) or 0) + (tonumber(sheet.TIBGenjutsu) or 0);
				sheet.TDA = (tonumber(sheet.TIDA) or 0) + (tonumber(sheet.TISDA) or 0) + (tonumber(sheet.TIHDA) or 0) + (tonumber(sheet.TIBDA) or 0);
				sheet.TElemental = (tonumber(sheet.TIElemental) or 0) + (tonumber(sheet.TISElemental) or 0) + (tonumber(sheet.TIHElemental) or 0) + (tonumber(sheet.TIBElemental) or 0);			
				sheet.THP = (tonumber(sheet.TIHP) or 0) + (tonumber(sheet.TISHP) or 0) + (tonumber(sheet.TIHHP) or 0) + (tonumber(sheet.TIBHP) or 0);
				sheet.TChakra = (tonumber(sheet.TIChakra) or 0) + (tonumber(sheet.TISChakra) or 0) + (tonumber(sheet.TIHChakra) or 0) + (tonumber(sheet.TIBChakra) or 0);
				sheet.TReiatsu = (tonumber(sheet.TIReiatsu) or 0) + (tonumber(sheet.TISReiatsu) or 0) + (tonumber(sheet.TIHReiatsu) or 0) + (tonumber(sheet.TIBReiatsu) or 0);
				sheet.TOutros = (tonumber(sheet.TIOutros) or 0) + (tonumber(sheet.TISOutros) or 0) + (tonumber(sheet.TIHOutros) or 0) + (tonumber(sheet.TIBOutros) or 0);
				sheet.TEnergia = (tonumber(sheet.TIEnergia) or 0) + (tonumber(sheet.TIHEnergia) or 0);		
				sheet.TReducao = (tonumber(sheet.TIReducao) or 0) + (tonumber(sheet.TISReducao) or 0) + (tonumber(sheet.TIHReducao) or 0) + (tonumber(sheet.TIBReducao) or 0);		
				sheet.TATai = (tonumber(sheet.TIATai) or 0) + (tonumber(sheet.TISATai) or 0) + (tonumber(sheet.TIHATai) or 0) + (tonumber(sheet.TIBATai) or 0);
				sheet.TANin = (tonumber(sheet.TIANin) or 0) + (tonumber(sheet.TISANin) or 0) + (tonumber(sheet.TIHANin) or 0) + (tonumber(sheet.TIBANin) or 0);
				sheet.TAGen = (tonumber(sheet.TIAGen) or 0) + (tonumber(sheet.TISAGen) or 0) + (tonumber(sheet.TIHAGen) or 0) + (tonumber(sheet.TIBAGen) or 0);
				sheet.TEsquiva = (tonumber(sheet.TIEsquiva) or 0) + (tonumber(sheet.TISEsquiva) or 0) + (tonumber(sheet.TIHEsquiva) or 0) + (tonumber(sheet.TIBEsquiva) or 0);
				sheet.TBloqueio = (tonumber(sheet.TIBloqueio) or 0) + (tonumber(sheet.TISBloqueio) or 0) + (tonumber(sheet.TIHBloqueio) or 0) + (tonumber(sheet.TIBBloqueio) or 0);
				sheet.TCTai = (tonumber(sheet.TICTai) or 0) + (tonumber(sheet.TISCTai) or 0) + (tonumber(sheet.TIHCTai) or 0) + (tonumber(sheet.TIBCTai) or 0);
				sheet.TCNin = (tonumber(sheet.TICNin) or 0) + (tonumber(sheet.TISCNin) or 0) + (tonumber(sheet.TIHCNin) or 0) + (tonumber(sheet.TIBCNin) or 0);
				sheet.TCGen = (tonumber(sheet.TICGen) or 0) + (tonumber(sheet.TISCGen) or 0) + (tonumber(sheet.TIHCGen) or 0) + (tonumber(sheet.TIBCGen) or 0);
				sheet.TTurnos = (tonumber(sheet.TITurnos) or 0) + (tonumber(sheet.TISTurnos) or 0) + (tonumber(sheet.TIHTurnos) or 0) + (tonumber(sheet.TIBTurnos) or 0);		
			else	
				sheet.TTaijutsu = 0;
				sheet.TNinjutsu = 0;
				sheet.TGenjutsu = 0;
				sheet.TDA = 0;
				sheet.TElemental = 0;				
				sheet.THP = 0;
				sheet.TChakra = 0;
				sheet.TReiatsu = 0;
				sheet.TOutros = 0;	
				sheet.TEnergia = 0;					
				sheet.TReducao = 0;				
				sheet.TATai = 0;
				sheet.TANin = 0;
				sheet.TAGen = 0;
				sheet.TEsquiva = 0;
				sheet.TBloqueio = 0;
				sheet.TCTai = 0;
				sheet.TCNin = 0;
				sheet.TCGen = 0;
				sheet.TTurnos = 0;		 
			end;					
		end;
	



		function AtivaJunto() 
			if sheet.Sequenci1 == true then
				self.ControlaTransTotal.checked = false;
			
				if self.ControlaTrans.checked == true then
					self.ControlaTransTotal.checked = true;		
				end;
				
				if self.ControlaTransSennin.checked == true then
					self.ControlaTransTotal.checked = true;		
				end;
				
				if self.ControlaTransHollow.checked == true then
					self.ControlaTransTotal.checked = true;		
				end;
				
				if self.ControlaTransMantoBiju.checked == true then
					self.ControlaTransTotal.checked = true;		
				end;
				
				sheet.Transformado = tonumber(sheet.Transformado) + 1;		
			end;
		end;
	



		function SelecionaEDC()
			node = self.rclEstiloCombate.selectedNode;
			self.dscEstiloCombate.node = node;	
			
			if sheet.Sequenci1 == true then
				if node.ATIVOEDC == "true" then
					sheet.NomeEDC = node.NomeEDC
					sheet.EstilodeCombateNivel = node.LevelEDC		
					sheet.DTaijutsu = node.TaiEDC
					sheet.DNinjutsu = node.NinEDC
					sheet.DGenjutsu = node.GenEDC
					sheet.DDA = node.DAEDC
					sheet.DDE = node.EleEDC
					sheet.DHP = node.HPEDC
					sheet.DChakra = node.ChakraEDC
					sheet.DReiatsu = node.ReiatsuEDC
					sheet.DOutro = node.OutroEDC	
					sheet.DAcertoTai = node.ATEDC
					sheet.DAcertoNin = node.ANEDC
					sheet.DAcertoGen = node.AGEDC
					sheet.DBloqueio = node.BloqEDC
					sheet.DEsquiva = node.EsqEDC
					sheet.DCriticalTai = node.CRTaiEDC
					sheet.DCriticalNin = node.CRNinEDC
					sheet.DCriticalGen = node.CRGenEDC
					sheet.DTurnos = node.TurnosEDC
					sheet.ChakraBiju = node.ChakraBijuEDC
					sheet.ChakraBranco = node.ChakraBrancoEDC
					sheet.ChakraPreto = node.ChakraPretoEDC
					sheet.Hadou = node.HadouEDC
					sheet.HadouNegro = node.HadouNegroEDC
					sheet.ChakraNaturalBonus = node.ChakraNaturalEDC
					sheet.ChakraRoxo = node.ChakraRoxoEDC
					sheet.DReducao = node.ReducaoEDC
					sheet.DEnergia = node.EnergiaEDC			
					sheet.ChakraNat = node.ChakraNaturalTotalEDC						
					sheet.DIntensidade = tonumber(node.IntensidadeEDC or 0);
					sheet.DCustoReal = tonumber(node.CustoRealEDC or 0);
					sheet.DEnergiaCusto = tonumber(node.EnergiaCustoEDC or 0);
					sheet.DTipo = node.Tipo1EDC or "Nin";
					sheet.DEDC = node.DEDC or "";
					sheet.DRegeneradorEnergia = tonumber(node.RegeneradorEnergiaEDC or 10);
				end;					
			end;
		end;
	


    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj.scrollBox1);
    obj.tabControl1:setLeft(10);
    obj.tabControl1:setTop(10);
    obj.tabControl1:setWidth(1050);
    obj.tabControl1:setHeight(710);
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

    obj.rclListadeJutsus1 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListadeJutsus1:setParent(obj.scrollBox3);
    obj.rclListadeJutsus1:setName("rclListadeJutsus1");
    obj.rclListadeJutsus1:setField("Jutsus");
    obj.rclListadeJutsus1:setTemplateForm("frmListadeJutsu1");
    obj.rclListadeJutsus1:setWidth(880);
    obj.rclListadeJutsus1:setHeight(570);
    obj.rclListadeJutsus1:setLeft(10);
    obj.rclListadeJutsus1:setTop(60);
    obj.rclListadeJutsus1:setSelectable(true);

    obj.ListaJutsus = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.ListaJutsus:setParent(obj.scrollBox3);
    obj.ListaJutsus:setName("ListaJutsus");
    obj.ListaJutsus:setVisible(false);
    obj.ListaJutsus:setWidth(480);
    obj.ListaJutsus:setHeight(590);
    obj.ListaJutsus:setLeft(400);
    obj.ListaJutsus:setTop(60);

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.ListaJutsus);
    obj.rectangle1:setColor("black");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);
    obj.rectangle1:setWidth(470);
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
    obj.edit1:setWidth(220);
    obj.edit1:setHeight(30);
    obj.edit1:setLeft(130);
    obj.edit1:setTop(15);
    obj.edit1:setField("NomedoJutsu");
    obj.edit1:setName("edit1");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.rectangle1);
    obj.button5:setWidth(80);
    obj.button5:setHeight(30);
    obj.button5:setLeft(360);
    obj.button5:setTop(15);
    obj.button5:setFontColor("red");
    obj.button5:setText("DELETAR");
    obj.button5:setName("button5");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.rectangle1);
    obj.textEditor1:setLeft(10);
    obj.textEditor1:setTop(60);
    obj.textEditor1:setWidth(430);
    obj.textEditor1:setHeight(240);
    obj.textEditor1:setField("DescriJutsu");
    obj.textEditor1:setName("textEditor1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.rectangle1);
    obj.label2:setLeft(10);
    obj.label2:setTop(305);
    obj.label2:setWidth(120);
    obj.label2:setHeight(40);
    obj.label2:setFontFamily("Nyala");
    obj.label2:setFontSize(16);
    obj.label2:setText("Dano:");
    obj.label2:setName("label2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.rectangle1);
    obj.edit2:setLeft(50);
    obj.edit2:setTop(310);
    obj.edit2:setWidth(80);
    obj.edit2:setHeight(30);
    obj.edit2:setType("number");
    obj.edit2:setMin(0);
    obj.edit2:setField("DanoJutsu");
    obj.edit2:setName("edit2");

    obj.comboBox2 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.rectangle1);
    obj.comboBox2:setLeft(135);
    obj.comboBox2:setTop(318);
    obj.comboBox2:setWidth(110);
    obj.comboBox2:setHeight(20);
    obj.comboBox2:setScale(0.9);
    obj.comboBox2:setFontColor("Cyan");
    obj.comboBox2:setField("TipoCustoJutsu1");
    obj.comboBox2:setItems({'Chacra', 'Reiatsu', 'Chacra Biju', 'Chacra Branco', 'Chacra Preto', 'Hadou', 'Hadou Negro', 'Chacra Natural', 'Chakra Roxo', 'Outros'});
    obj.comboBox2:setName("comboBox2");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.rectangle1);
    obj.edit3:setLeft(238);
    obj.edit3:setTop(310);
    obj.edit3:setWidth(30);
    obj.edit3:setHeight(30);
    obj.edit3:setType("number");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setFontColor("cyan");
    obj.edit3:setField("CustoJutsu");
    obj.edit3:setName("edit3");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.rectangle1);
    obj.label3:setLeft(268);
    obj.label3:setTop(305);
    obj.label3:setWidth(100);
    obj.label3:setHeight(40);
    obj.label3:setFontFamily("Nyala");
    obj.label3:setFontSize(16);
    obj.label3:setVisible(true);
    obj.label3:setFontColor("cyan");
    obj.label3:setText("Custo Real: ");
    obj.label3:setName("label3");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.rectangle1);
    obj.edit4:setLeft(338);
    obj.edit4:setTop(310);
    obj.edit4:setWidth(30);
    obj.edit4:setHeight(30);
    obj.edit4:setType("number");
    obj.edit4:setEnabled(false);
    obj.edit4:setVisible(true);
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setFontColor("cyan");
    obj.edit4:setField("CustoJutsuReal");
    obj.edit4:setName("edit4");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.rectangle1);
    obj.label4:setLeft(375);
    obj.label4:setTop(305);
    obj.label4:setWidth(100);
    obj.label4:setHeight(40);
    obj.label4:setFontFamily("Nyala");
    obj.label4:setFontSize(16);
    obj.label4:setVisible(true);
    obj.label4:setFontColor("green");
    obj.label4:setText("Energia: ");
    obj.label4:setName("label4");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.rectangle1);
    obj.edit5:setLeft(430);
    obj.edit5:setTop(310);
    obj.edit5:setWidth(30);
    obj.edit5:setHeight(30);
    obj.edit5:setType("number");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setVisible(true);
    obj.edit5:setFontColor("green");
    obj.edit5:setMin(0);
    obj.edit5:setField("CustoEnergia");
    obj.edit5:setName("edit5");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.rectangle1);
    obj.label5:setLeft(10);
    obj.label5:setTop(340);
    obj.label5:setWidth(60);
    obj.label5:setHeight(40);
    obj.label5:setFontFamily("Nyala");
    obj.label5:setFontSize(16);
    obj.label5:setText("Tipo 1:");
    obj.label5:setName("label5");

    obj.comboBox3 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox3:setParent(obj.rectangle1);
    obj.comboBox3:setLeft(50);
    obj.comboBox3:setTop(358);
    obj.comboBox3:setWidth(100);
    obj.comboBox3:setHeight(18);
    obj.comboBox3:setField("TipoLista1Jutsu1");
    obj.comboBox3:setItems({'Nulo', 'Tai', 'Nin', 'Gen', 'Elemental', 'DanoArmado', 'Defensivo', 'Selamento', 'Outros','M/Tai', 'M/Nin', 'M/Gen', 'M/Elemental', 'M/DA', 'Kunai', 'Shuriken', 'Shuriken Fuuma', 'Kunai Gigante', 'Senbon', 'Papel Bomba', 'Ginso Explosivo', 'Veneno', 'Bandagem'});
    obj.comboBox3:setName("comboBox3");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.rectangle1);
    obj.label6:setLeft(160);
    obj.label6:setTop(345);
    obj.label6:setWidth(60);
    obj.label6:setHeight(40);
    obj.label6:setFontFamily("Nyala");
    obj.label6:setVisible(true);
    obj.label6:setFontSize(16);
    obj.label6:setText("Tipo 2:");
    obj.label6:setName("label6");

    obj.comboBox4 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox4:setParent(obj.rectangle1);
    obj.comboBox4:setLeft(205);
    obj.comboBox4:setTop(358);
    obj.comboBox4:setWidth(100);
    obj.comboBox4:setHeight(18);
    obj.comboBox4:setField("TipoLista1Jutsu2");
    obj.comboBox4:setVisible(true);
    obj.comboBox4:setItems({'Nulo', 'Tai', 'Nin', 'Gen', 'Elemental', 'DanoArmado', 'Defensivo', 'Selamento', 'Outros','M/Tai', 'M/Nin', 'M/Gen', 'M/Elemental', 'M/DA', 'Kunai', 'Shuriken', 'Shuriken Fuuma', 'Kunai Gigante', 'Senbon', 'Papel Bomba', 'Ginso Explosivo', 'Veneno', 'Bandagem'});
    obj.comboBox4:setName("comboBox4");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.rectangle1);
    obj.label7:setLeft(310);
    obj.label7:setTop(345);
    obj.label7:setWidth(60);
    obj.label7:setHeight(40);
    obj.label7:setFontFamily("Nyala");
    obj.label7:setVisible(true);
    obj.label7:setFontSize(16);
    obj.label7:setText("Tipo 3:");
    obj.label7:setName("label7");

    obj.comboBox5 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox5:setParent(obj.rectangle1);
    obj.comboBox5:setLeft(355);
    obj.comboBox5:setTop(358);
    obj.comboBox5:setWidth(100);
    obj.comboBox5:setHeight(18);
    obj.comboBox5:setField("TipoLista1Jutsu3");
    obj.comboBox5:setVisible(true);
    obj.comboBox5:setItems({'Nulo', 'Tai', 'Nin', 'Gen', 'Elemental', 'DanoArmado', 'Defensivo', 'Selamento', 'Outros','M/Tai', 'M/Nin', 'M/Gen', 'M/Elemental', 'M/DA', 'Kunai', 'Shuriken', 'Shuriken Fuuma', 'Kunai Gigante', 'Senbon', 'Papel Bomba', 'Ginso Explosivo', 'Veneno', 'Bandagem'});
    obj.comboBox5:setName("comboBox5");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.rectangle1);
    obj.label8:setWidth(150);
    obj.label8:setHeight(40);
    obj.label8:setLeft(10);
    obj.label8:setTop(390);
    obj.label8:setFontFamily("Nyala");
    obj.label8:setFontSize(16);
    obj.label8:setText("Dano Verdadeiro");
    obj.label8:setName("label8");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.rectangle1);
    obj.edit6:setWidth(80);
    obj.edit6:setHeight(20);
    obj.edit6:setLeft(110);
    obj.edit6:setTop(400);
    obj.edit6:setEnabled(false);
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setType("number");
    obj.edit6:setField("DNVerdadeiro");
    obj.edit6:setName("edit6");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.rectangle1);
    obj.label9:setWidth(170);
    obj.label9:setHeight(40);
    obj.label9:setLeft(280);
    obj.label9:setTop(390);
    obj.label9:setFontFamily("Nyala");
    obj.label9:setFontColor("Crimson ");
    obj.label9:setFontSize(16);
    obj.label9:setText("Intensidade");
    obj.label9:setName("label9");

    obj.edtGM28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM28:setParent(obj.rectangle1);
    obj.edtGM28:setName("edtGM28");
    obj.edtGM28:setWidth(80);
    obj.edtGM28:setHeight(20);
    obj.edtGM28:setLeft(350);
    obj.edtGM28:setTop(400);
    obj.edtGM28:setEnabled(false);
    obj.edtGM28:setHorzTextAlign("center");
    obj.edtGM28:setVisible(false);
    obj.edtGM28:setType("number");
    obj.edtGM28:setFontColor("Crimson");
    obj.edtGM28:setField("Lista1Intensidade1");

    obj.edtGM29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM29:setParent(obj.rectangle1);
    obj.edtGM29:setName("edtGM29");
    obj.edtGM29:setWidth(80);
    obj.edtGM29:setHeight(20);
    obj.edtGM29:setLeft(350);
    obj.edtGM29:setTop(420);
    obj.edtGM29:setEnabled(false);
    obj.edtGM29:setHorzTextAlign("center");
    obj.edtGM29:setVisible(false);
    obj.edtGM29:setType("number");
    obj.edtGM29:setFontColor("Crimson");
    obj.edtGM29:setField("Lista1Intensidade2");

    obj.edtGM30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM30:setParent(obj.rectangle1);
    obj.edtGM30:setName("edtGM30");
    obj.edtGM30:setWidth(80);
    obj.edtGM30:setHeight(20);
    obj.edtGM30:setLeft(350);
    obj.edtGM30:setTop(440);
    obj.edtGM30:setEnabled(false);
    obj.edtGM30:setHorzTextAlign("center");
    obj.edtGM30:setVisible(false);
    obj.edtGM30:setType("number");
    obj.edtGM30:setFontColor("Crimson");
    obj.edtGM30:setField("Lista1Intensidade3");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.rectangle1);
    obj.edit7:setWidth(80);
    obj.edit7:setHeight(20);
    obj.edit7:setLeft(350);
    obj.edit7:setTop(400);
    obj.edit7:setEnabled(false);
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setType("number");
    obj.edit7:setFontColor("red");
    obj.edit7:setField("Lista1IntensidadeTotal");
    obj.edit7:setName("edit7");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.rectangle1);
    obj.label10:setWidth(70);
    obj.label10:setHeight(40);
    obj.label10:setLeft(195);
    obj.label10:setTop(390);
    obj.label10:setFontFamily("Nyala");
    obj.label10:setFontSize(16);
    obj.label10:setText("Level");
    obj.label10:setName("label10");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.rectangle1);
    obj.dataLink1:setFields({'DanoJutsu', 'LevelJutsu1'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.rectangle1);
    obj.dataLink2:setFields({'TipoLista1Jutsu1', 'LevelJutsu1', 'DanoJutsu', 'TipoLista1Jutsu2', 'TipoLista1Jutsu3', 'DNVerdadeiro', 'CustoJutsu'});
    obj.dataLink2:setName("dataLink2");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.rectangle1);
    obj.edit8:setWidth(40);
    obj.edit8:setHeight(30);
    obj.edit8:setLeft(390);
    obj.edit8:setTop(380);
    obj.edit8:setVisible(false);
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setFontColor("cyan");
    obj.edit8:setType("number");
    obj.edit8:setField("ChakraPlayer");
    obj.edit8:setName("edit8");

    obj.edtGM1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM1:setParent(obj.rectangle1);
    obj.edtGM1:setName("edtGM1");
    obj.edtGM1:setWidth(30);
    obj.edtGM1:setHeight(20);
    obj.edtGM1:setLeft(230);
    obj.edtGM1:setTop(400);
    obj.edtGM1:setEnabled(true);
    obj.edtGM1:setHorzTextAlign("center");
    obj.edtGM1:setVisible(true);
    obj.edtGM1:setType("number");
    obj.edtGM1:setMin(1);
    obj.edtGM1:setField("LevelJutsu1");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.rectangle1);
    obj.image3:setLeft(20);
    obj.image3:setTop(420);
    obj.image3:setWidth(150);
    obj.image3:setHeight(150);
    obj.image3:setSRC("/imagens/Jutsu.png");
    obj.image3:setName("image3");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.rectangle1);
    obj.button6:setLeft(20);
    obj.button6:setTop(430);
    obj.button6:setFontSize(20);
    obj.button6:setOpacity(0.0);
    obj.button6:setHeight(120);
    obj.button6:setWidth(150);
    obj.button6:setText("Usar");
    obj.button6:setFontColor("White");
    obj.button6:setName("button6");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.rectangle1);
    obj.label11:setLeft(200);
    obj.label11:setTop(425);
    obj.label11:setWidth(100);
    obj.label11:setHeight(30);
    obj.label11:setFontFamily("Nyala");
    obj.label11:setFontSize(18);
    obj.label11:setText("Rank do Jutsu");
    obj.label11:setName("label11");

    obj.cmbRakporTreino = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.cmbRakporTreino:setParent(obj.rectangle1);
    obj.cmbRakporTreino:setName("cmbRakporTreino");
    obj.cmbRakporTreino:setLeft(300);
    obj.cmbRakporTreino:setTop(425);
    obj.cmbRakporTreino:setWidth(50);
    obj.cmbRakporTreino:setHeight(30);
    obj.cmbRakporTreino:setFontFamily("Nyala");
    obj.cmbRakporTreino:setFontSize(18);
    obj.cmbRakporTreino:setField("RankPorTreino");
    obj.cmbRakporTreino:setItems({'E', 'D', 'C', 'B', 'A', 'S', 'SS', 'X','X+'});

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.rectangle1);
    obj.label12:setLeft(180);
    obj.label12:setTop(460);
    obj.label12:setWidth(230);
    obj.label12:setHeight(40);
    obj.label12:setFontFamily("Nyala");
    obj.label12:setFontSize(18);
    obj.label12:setText("Fortificação de jutsu 3D10 e 1d20");
    obj.label12:setName("label12");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.rectangle1);
    obj.edit9:setLeft(180);
    obj.edit9:setTop(500);
    obj.edit9:setWidth(50);
    obj.edit9:setHeight(30);
    obj.edit9:setType("number");
    obj.edit9:setMin(1);
    obj.edit9:setMax(9);
    obj.edit9:setEnabled(false);
    obj.edit9:setVisible(true);
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setField("Upa1d10");
    obj.edit9:setName("edit9");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.rectangle1);
    obj.edit10:setLeft(240);
    obj.edit10:setTop(500);
    obj.edit10:setWidth(50);
    obj.edit10:setHeight(30);
    obj.edit10:setType("number");
    obj.edit10:setMin(1);
    obj.edit10:setMax(9);
    obj.edit10:setEnabled(false);
    obj.edit10:setVisible(true);
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setField("Upa2d10");
    obj.edit10:setName("edit10");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.rectangle1);
    obj.edit11:setLeft(300);
    obj.edit11:setTop(500);
    obj.edit11:setWidth(50);
    obj.edit11:setHeight(30);
    obj.edit11:setType("number");
    obj.edit11:setMin(1);
    obj.edit11:setMax(9);
    obj.edit11:setEnabled(false);
    obj.edit11:setVisible(true);
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setField("Upa3d10");
    obj.edit11:setName("edit11");

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

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.rectangle1);
    obj.edit12:setLeft(360);
    obj.edit12:setTop(500);
    obj.edit12:setWidth(50);
    obj.edit12:setHeight(30);
    obj.edit12:setType("number");
    obj.edit12:setMin(1);
    obj.edit12:setMax(18);
    obj.edit12:setEnabled(false);
    obj.edit12:setVisible(true);
    obj.edit12:setTransparent(true);
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setField("Upa1d20");
    obj.edit12:setName("edit12");

    obj.edtGM2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM2:setParent(obj.rectangle1);
    obj.edtGM2:setName("edtGM2");
    obj.edtGM2:setLeft(180);
    obj.edtGM2:setTop(530);
    obj.edtGM2:setWidth(50);
    obj.edtGM2:setHeight(30);
    obj.edtGM2:setType("number");
    obj.edtGM2:setMin(1);
    obj.edtGM2:setMax(9);
    obj.edtGM2:setEnabled(true);
    obj.edtGM2:setVisible(false);
    obj.edtGM2:setHorzTextAlign("center");
    obj.edtGM2:setField("Dificuldade1d10DoJutsu1");

    obj.edtGM3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM3:setParent(obj.rectangle1);
    obj.edtGM3:setName("edtGM3");
    obj.edtGM3:setLeft(240);
    obj.edtGM3:setTop(530);
    obj.edtGM3:setWidth(50);
    obj.edtGM3:setHeight(30);
    obj.edtGM3:setType("number");
    obj.edtGM3:setMin(1);
    obj.edtGM3:setMax(9);
    obj.edtGM3:setEnabled(true);
    obj.edtGM3:setVisible(false);
    obj.edtGM3:setHorzTextAlign("center");
    obj.edtGM3:setField("Dificuldade2d10DoJutsu1");

    obj.edtGM4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM4:setParent(obj.rectangle1);
    obj.edtGM4:setName("edtGM4");
    obj.edtGM4:setLeft(300);
    obj.edtGM4:setTop(530);
    obj.edtGM4:setWidth(50);
    obj.edtGM4:setHeight(30);
    obj.edtGM4:setType("number");
    obj.edtGM4:setMin(1);
    obj.edtGM4:setMax(9);
    obj.edtGM4:setEnabled(true);
    obj.edtGM4:setVisible(false);
    obj.edtGM4:setHorzTextAlign("center");
    obj.edtGM4:setField("Dificuldade3d10DoJutsu1");

    obj.edtGM5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.edtGM5:setParent(obj.rectangle1);
    obj.edtGM5:setName("edtGM5");
    obj.edtGM5:setLeft(360);
    obj.edtGM5:setTop(530);
    obj.edtGM5:setWidth(50);
    obj.edtGM5:setHeight(30);
    obj.edtGM5:setColor("black");
    obj.edtGM5:setStrokeColor("red");
    obj.edtGM5:setVisible(false);
    obj.edtGM5:setStrokeSize(3);

    obj.edtGM6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM6:setParent(obj.rectangle1);
    obj.edtGM6:setName("edtGM6");
    obj.edtGM6:setLeft(360);
    obj.edtGM6:setTop(530);
    obj.edtGM6:setWidth(50);
    obj.edtGM6:setHeight(30);
    obj.edtGM6:setType("number");
    obj.edtGM6:setMin(1);
    obj.edtGM6:setMax(18);
    obj.edtGM6:setEnabled(true);
    obj.edtGM6:setVisible(false);
    obj.edtGM6:setTransparent(true);
    obj.edtGM6:setHorzTextAlign("center");
    obj.edtGM6:setField("Dificuldade1d20DoJutsu1");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.rectangle1);
    obj.button7:setLeft(415);
    obj.button7:setTop(500);
    obj.button7:setWidth(50);
    obj.button7:setHeight(30);
    obj.button7:setFontFamily("Nyala");
    obj.button7:setFontSize(18);
    obj.button7:setText("( ? )");
    obj.button7:setName("button7");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.rectangle1);
    obj.dataLink3:setFields({'LevelJutsu1', 'GraduacaoTreino', 'RankPorTreino', 'Dificuldade1d10DoJutsu1', 'Dificuldade2d10DoJutsu1', 'Dificuldade3d10DoJutsu1', 'Dificuldade1d20DoJutsu1', 
								'Dificuldade1d10DoJutsu1Estudo', 'Dificuldade2d10DoJutsu1Estudo', 'Dificuldade3d10DoJutsu1Estudo', 'Dificuldade1d20DoJutsu1Estudo'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.rectangle1);
    obj.dataLink4:setFields({'TipoCustoJutsu1'});
    obj.dataLink4:setName("dataLink4");

    obj.btnUparJutsu1 = GUI.fromHandle(_obj_newObject("button"));
    obj.btnUparJutsu1:setParent(obj.rectangle1);
    obj.btnUparJutsu1:setName("btnUparJutsu1");
    obj.btnUparJutsu1:setLeft(180);
    obj.btnUparJutsu1:setTop(540);
    obj.btnUparJutsu1:setWidth(230);
    obj.btnUparJutsu1:setHeight(30);
    obj.btnUparJutsu1:setFontFamily("Nyala");
    obj.btnUparJutsu1:setFontSize(18);
    obj.btnUparJutsu1:setText("Treinar");

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.scrollBox2);
    obj.button8:setLeft(145);
    obj.button8:setTop(448);
    obj.button8:setWidth(100);
    obj.button8:setHeight(85);
    obj.button8:setOpacity(0.1);
    obj.button8:setText("");
    obj.button8:setName("button8");

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

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.scrollBox4);
    obj.button9:setText("Novo Favorito");
    obj.button9:setWidth(125);
    obj.button9:setHeight(40);
    obj.button9:setLeft(70);
    obj.button9:setTop(10);
    obj.button9:setName("button9");

    obj.rclListadeJutsus2 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListadeJutsus2:setParent(obj.scrollBox4);
    obj.rclListadeJutsus2:setName("rclListadeJutsus2");
    obj.rclListadeJutsus2:setField("Jutsus2");
    obj.rclListadeJutsus2:setTemplateForm("frmListadeJutsu2");
    obj.rclListadeJutsus2:setWidth(880);
    obj.rclListadeJutsus2:setHeight(570);
    obj.rclListadeJutsus2:setLeft(10);
    obj.rclListadeJutsus2:setTop(60);
    obj.rclListadeJutsus2:setSelectable(true);

    obj.ListaJutsus2 = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.ListaJutsus2:setParent(obj.scrollBox4);
    obj.ListaJutsus2:setName("ListaJutsus2");
    obj.ListaJutsus2:setVisible(false);
    obj.ListaJutsus2:setWidth(480);
    obj.ListaJutsus2:setHeight(590);
    obj.ListaJutsus2:setLeft(400);
    obj.ListaJutsus2:setTop(60);

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.ListaJutsus2);
    obj.rectangle3:setColor("black");
    obj.rectangle3:setXradius(10);
    obj.rectangle3:setYradius(10);
    obj.rectangle3:setWidth(460);
    obj.rectangle3:setHeight(580);
    obj.rectangle3:setLeft(1);
    obj.rectangle3:setTop(1);
    obj.rectangle3:setName("rectangle3");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.rectangle3);
    obj.label13:setWidth(120);
    obj.label13:setHeight(40);
    obj.label13:setLeft(10);
    obj.label13:setTop(10);
    obj.label13:setFontFamily("Nyala");
    obj.label13:setFontSize(20);
    obj.label13:setText("Nome do Jutsu:");
    obj.label13:setName("label13");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.rectangle3);
    obj.edit13:setWidth(220);
    obj.edit13:setHeight(30);
    obj.edit13:setLeft(130);
    obj.edit13:setTop(15);
    obj.edit13:setField("NomedoJutsu2");
    obj.edit13:setName("edit13");

    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.rectangle3);
    obj.button10:setWidth(80);
    obj.button10:setHeight(30);
    obj.button10:setLeft(360);
    obj.button10:setTop(15);
    obj.button10:setFontColor("red");
    obj.button10:setText("DELETAR");
    obj.button10:setName("button10");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.rectangle3);
    obj.textEditor2:setLeft(10);
    obj.textEditor2:setTop(60);
    obj.textEditor2:setWidth(430);
    obj.textEditor2:setHeight(240);
    obj.textEditor2:setField("DescriJutsu");
    obj.textEditor2:setName("textEditor2");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.rectangle3);
    obj.label14:setLeft(10);
    obj.label14:setTop(305);
    obj.label14:setWidth(120);
    obj.label14:setHeight(40);
    obj.label14:setFontFamily("Nyala");
    obj.label14:setFontSize(16);
    obj.label14:setText("Dano:");
    obj.label14:setName("label14");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.rectangle3);
    obj.edit14:setLeft(50);
    obj.edit14:setTop(310);
    obj.edit14:setWidth(80);
    obj.edit14:setHeight(30);
    obj.edit14:setType("number");
    obj.edit14:setMin(0);
    obj.edit14:setField("DanoJutsu");
    obj.edit14:setName("edit14");

    obj.comboBox6 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox6:setParent(obj.rectangle3);
    obj.comboBox6:setLeft(135);
    obj.comboBox6:setTop(318);
    obj.comboBox6:setWidth(110);
    obj.comboBox6:setHeight(20);
    obj.comboBox6:setScale(0.9);
    obj.comboBox6:setFontColor("Cyan");
    obj.comboBox6:setField("TipoCustoJutsu2");
    obj.comboBox6:setItems({'Chacra', 'Reiatsu', 'Chacra Biju', 'Chacra Branco', 'Chacra Preto', 'Hadou', 'Hadou Negro', 'Chacra Natural', 'Chakra Roxo', 'Outros'});
    obj.comboBox6:setName("comboBox6");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.rectangle3);
    obj.edit15:setLeft(236);
    obj.edit15:setTop(310);
    obj.edit15:setWidth(30);
    obj.edit15:setHeight(30);
    obj.edit15:setType("number");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setFontColor("cyan");
    obj.edit15:setField("CustoJutsu");
    obj.edit15:setName("edit15");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.rectangle3);
    obj.label15:setLeft(268);
    obj.label15:setTop(305);
    obj.label15:setWidth(100);
    obj.label15:setHeight(40);
    obj.label15:setFontFamily("Nyala");
    obj.label15:setFontSize(16);
    obj.label15:setVisible(true);
    obj.label15:setFontColor("cyan");
    obj.label15:setText("Custo Real: ");
    obj.label15:setName("label15");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.rectangle3);
    obj.edit16:setLeft(338);
    obj.edit16:setTop(310);
    obj.edit16:setWidth(30);
    obj.edit16:setHeight(30);
    obj.edit16:setType("number");
    obj.edit16:setEnabled(false);
    obj.edit16:setVisible(true);
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setFontColor("cyan");
    obj.edit16:setField("CustoJutsuReal");
    obj.edit16:setName("edit16");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.rectangle3);
    obj.label16:setLeft(375);
    obj.label16:setTop(305);
    obj.label16:setWidth(100);
    obj.label16:setHeight(40);
    obj.label16:setFontFamily("Nyala");
    obj.label16:setFontSize(16);
    obj.label16:setVisible(true);
    obj.label16:setFontColor("green");
    obj.label16:setText("Energia: ");
    obj.label16:setName("label16");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.rectangle3);
    obj.edit17:setLeft(430);
    obj.edit17:setTop(310);
    obj.edit17:setWidth(30);
    obj.edit17:setHeight(30);
    obj.edit17:setType("number");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setVisible(true);
    obj.edit17:setFontColor("green");
    obj.edit17:setMin(0);
    obj.edit17:setField("CustoEnergia");
    obj.edit17:setName("edit17");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.rectangle3);
    obj.label17:setLeft(10);
    obj.label17:setTop(345);
    obj.label17:setWidth(60);
    obj.label17:setHeight(40);
    obj.label17:setFontFamily("Nyala");
    obj.label17:setFontSize(16);
    obj.label17:setText("Tipo 1:");
    obj.label17:setName("label17");

    obj.comboBox7 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox7:setParent(obj.rectangle3);
    obj.comboBox7:setLeft(50);
    obj.comboBox7:setTop(358);
    obj.comboBox7:setWidth(100);
    obj.comboBox7:setHeight(18);
    obj.comboBox7:setField("TipoLista1Jutsu1");
    obj.comboBox7:setItems({'Nulo', 'Tai', 'Nin', 'Gen', 'Elemental', 'DanoArmado', 'Defensivo', 'Selamento', 'Outros','M/Tai', 'M/Nin', 'M/Gen', 'M/Elemental', 'M/DA', 'Kunai', 'Shuriken', 'Shuriken Fuuma', 'Kunai Gigante', 'Senbon', 'Papel Bomba', 'Ginso Explosivo', 'Veneno', 'Bandagem'});
    obj.comboBox7:setName("comboBox7");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.rectangle3);
    obj.label18:setLeft(160);
    obj.label18:setTop(345);
    obj.label18:setWidth(60);
    obj.label18:setHeight(40);
    obj.label18:setFontFamily("Nyala");
    obj.label18:setVisible(true);
    obj.label18:setFontSize(16);
    obj.label18:setText("Tipo 2:");
    obj.label18:setName("label18");

    obj.comboBox8 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox8:setParent(obj.rectangle3);
    obj.comboBox8:setLeft(205);
    obj.comboBox8:setTop(358);
    obj.comboBox8:setWidth(100);
    obj.comboBox8:setHeight(18);
    obj.comboBox8:setField("TipoLista1Jutsu2");
    obj.comboBox8:setVisible(true);
    obj.comboBox8:setItems({'Nulo', 'Tai', 'Nin', 'Gen', 'Elemental', 'DanoArmado', 'Defensivo', 'Selamento', 'Outros','M/Tai', 'M/Nin', 'M/Gen', 'M/Elemental', 'M/DA', 'Kunai', 'Shuriken', 'Shuriken Fuuma', 'Kunai Gigante', 'Senbon', 'Papel Bomba', 'Ginso Explosivo', 'Veneno', 'Bandagem'});
    obj.comboBox8:setName("comboBox8");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.rectangle3);
    obj.label19:setLeft(310);
    obj.label19:setTop(345);
    obj.label19:setWidth(60);
    obj.label19:setHeight(40);
    obj.label19:setFontFamily("Nyala");
    obj.label19:setVisible(true);
    obj.label19:setFontSize(16);
    obj.label19:setText("Tipo 3:");
    obj.label19:setName("label19");

    obj.comboBox9 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox9:setParent(obj.rectangle3);
    obj.comboBox9:setLeft(355);
    obj.comboBox9:setTop(358);
    obj.comboBox9:setWidth(100);
    obj.comboBox9:setHeight(18);
    obj.comboBox9:setField("TipoLista1Jutsu3");
    obj.comboBox9:setVisible(true);
    obj.comboBox9:setItems({'Nulo', 'Tai', 'Nin', 'Gen', 'Elemental', 'DanoArmado', 'Defensivo', 'Selamento', 'Outros','M/Tai', 'M/Nin', 'M/Gen', 'M/Elemental', 'M/DA', 'Kunai', 'Shuriken', 'Shuriken Fuuma', 'Kunai Gigante', 'Senbon', 'Papel Bomba', 'Ginso Explosivo', 'Veneno', 'Bandagem'});
    obj.comboBox9:setName("comboBox9");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.rectangle3);
    obj.label20:setWidth(150);
    obj.label20:setHeight(40);
    obj.label20:setLeft(10);
    obj.label20:setTop(390);
    obj.label20:setFontFamily("Nyala");
    obj.label20:setFontSize(16);
    obj.label20:setText("Dano Verdadeiro");
    obj.label20:setName("label20");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.rectangle3);
    obj.edit18:setWidth(80);
    obj.edit18:setHeight(20);
    obj.edit18:setLeft(110);
    obj.edit18:setTop(400);
    obj.edit18:setEnabled(false);
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setType("number");
    obj.edit18:setField("DNVerdadeiro");
    obj.edit18:setName("edit18");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.rectangle3);
    obj.label21:setWidth(170);
    obj.label21:setHeight(40);
    obj.label21:setLeft(280);
    obj.label21:setTop(390);
    obj.label21:setFontFamily("Nyala");
    obj.label21:setFontColor("Crimson ");
    obj.label21:setFontSize(16);
    obj.label21:setText("Intensidade");
    obj.label21:setName("label21");

    obj.edtGM32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM32:setParent(obj.rectangle3);
    obj.edtGM32:setName("edtGM32");
    obj.edtGM32:setWidth(80);
    obj.edtGM32:setHeight(20);
    obj.edtGM32:setLeft(350);
    obj.edtGM32:setTop(400);
    obj.edtGM32:setEnabled(false);
    obj.edtGM32:setHorzTextAlign("center");
    obj.edtGM32:setVisible(false);
    obj.edtGM32:setType("number");
    obj.edtGM32:setFontColor("Crimson");
    obj.edtGM32:setField("Lista1Intensidade1");

    obj.edtGM33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM33:setParent(obj.rectangle3);
    obj.edtGM33:setName("edtGM33");
    obj.edtGM33:setWidth(80);
    obj.edtGM33:setHeight(20);
    obj.edtGM33:setLeft(350);
    obj.edtGM33:setTop(420);
    obj.edtGM33:setEnabled(false);
    obj.edtGM33:setHorzTextAlign("center");
    obj.edtGM33:setVisible(false);
    obj.edtGM33:setType("number");
    obj.edtGM33:setFontColor("Crimson");
    obj.edtGM33:setField("Lista1Intensidade2");

    obj.edtGM34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM34:setParent(obj.rectangle3);
    obj.edtGM34:setName("edtGM34");
    obj.edtGM34:setWidth(80);
    obj.edtGM34:setHeight(20);
    obj.edtGM34:setLeft(350);
    obj.edtGM34:setTop(440);
    obj.edtGM34:setEnabled(false);
    obj.edtGM34:setHorzTextAlign("center");
    obj.edtGM34:setVisible(false);
    obj.edtGM34:setType("number");
    obj.edtGM34:setFontColor("Crimson");
    obj.edtGM34:setField("Lista1Intensidade3");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.rectangle3);
    obj.edit19:setWidth(80);
    obj.edit19:setHeight(20);
    obj.edit19:setLeft(350);
    obj.edit19:setTop(400);
    obj.edit19:setEnabled(false);
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setType("number");
    obj.edit19:setFontColor("red");
    obj.edit19:setField("Lista1IntensidadeTotal");
    obj.edit19:setName("edit19");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.rectangle3);
    obj.label22:setWidth(70);
    obj.label22:setHeight(40);
    obj.label22:setLeft(195);
    obj.label22:setTop(390);
    obj.label22:setFontFamily("Nyala");
    obj.label22:setFontSize(16);
    obj.label22:setText("Level");
    obj.label22:setName("label22");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.rectangle3);
    obj.dataLink5:setFields({'DanoJutsu', 'LevelJutsu1'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.rectangle3);
    obj.dataLink6:setFields({'TipoLista1Jutsu1', 'LevelJutsu1', 'DanoJutsu', 'TipoLista1Jutsu2', 'TipoLista1Jutsu3', 'DNVerdadeiro', 'CustoJutsu'});
    obj.dataLink6:setName("dataLink6");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.rectangle3);
    obj.edit20:setWidth(40);
    obj.edit20:setHeight(30);
    obj.edit20:setLeft(390);
    obj.edit20:setTop(380);
    obj.edit20:setVisible(false);
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setFontColor("cyan");
    obj.edit20:setType("number");
    obj.edit20:setField("ChakraPlayer");
    obj.edit20:setName("edit20");

    obj.edtGM40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM40:setParent(obj.rectangle3);
    obj.edtGM40:setName("edtGM40");
    obj.edtGM40:setWidth(30);
    obj.edtGM40:setHeight(20);
    obj.edtGM40:setLeft(230);
    obj.edtGM40:setTop(400);
    obj.edtGM40:setEnabled(true);
    obj.edtGM40:setHorzTextAlign("center");
    obj.edtGM40:setVisible(true);
    obj.edtGM40:setType("number");
    obj.edtGM40:setMin(1);
    obj.edtGM40:setField("LevelJutsu1");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.rectangle3);
    obj.image5:setLeft(20);
    obj.image5:setTop(420);
    obj.image5:setWidth(150);
    obj.image5:setHeight(150);
    obj.image5:setSRC("/imagens/Jutsu.png");
    obj.image5:setName("image5");

    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.rectangle3);
    obj.button11:setLeft(20);
    obj.button11:setTop(430);
    obj.button11:setFontSize(20);
    obj.button11:setOpacity(0.0);
    obj.button11:setHeight(120);
    obj.button11:setWidth(150);
    obj.button11:setText("Usar");
    obj.button11:setFontColor("White");
    obj.button11:setName("button11");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.rectangle3);
    obj.label23:setLeft(200);
    obj.label23:setTop(425);
    obj.label23:setWidth(100);
    obj.label23:setHeight(30);
    obj.label23:setFontFamily("Nyala");
    obj.label23:setFontSize(18);
    obj.label23:setText("Rank do Jutsu");
    obj.label23:setName("label23");

    obj.cmbRakporTreino2 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.cmbRakporTreino2:setParent(obj.rectangle3);
    obj.cmbRakporTreino2:setName("cmbRakporTreino2");
    obj.cmbRakporTreino2:setLeft(300);
    obj.cmbRakporTreino2:setTop(425);
    obj.cmbRakporTreino2:setWidth(50);
    obj.cmbRakporTreino2:setHeight(30);
    obj.cmbRakporTreino2:setFontFamily("Nyala");
    obj.cmbRakporTreino2:setFontSize(18);
    obj.cmbRakporTreino2:setField("RankPorTreino");
    obj.cmbRakporTreino2:setItems({'E', 'D', 'C', 'B', 'A', 'S', 'SS', 'X','X+'});

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.rectangle3);
    obj.label24:setLeft(180);
    obj.label24:setTop(460);
    obj.label24:setWidth(230);
    obj.label24:setHeight(40);
    obj.label24:setFontFamily("Nyala");
    obj.label24:setFontSize(18);
    obj.label24:setText("Fortificação de jutsu 3D10 e 1d20");
    obj.label24:setName("label24");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.rectangle3);
    obj.edit21:setLeft(180);
    obj.edit21:setTop(500);
    obj.edit21:setWidth(50);
    obj.edit21:setHeight(30);
    obj.edit21:setType("number");
    obj.edit21:setMin(1);
    obj.edit21:setMax(9);
    obj.edit21:setEnabled(false);
    obj.edit21:setVisible(true);
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setField("Upa1d10");
    obj.edit21:setName("edit21");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.rectangle3);
    obj.edit22:setLeft(240);
    obj.edit22:setTop(500);
    obj.edit22:setWidth(50);
    obj.edit22:setHeight(30);
    obj.edit22:setType("number");
    obj.edit22:setMin(1);
    obj.edit22:setMax(9);
    obj.edit22:setEnabled(false);
    obj.edit22:setVisible(true);
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setField("Upa2d10");
    obj.edit22:setName("edit22");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.rectangle3);
    obj.edit23:setLeft(300);
    obj.edit23:setTop(500);
    obj.edit23:setWidth(50);
    obj.edit23:setHeight(30);
    obj.edit23:setType("number");
    obj.edit23:setMin(1);
    obj.edit23:setMax(9);
    obj.edit23:setEnabled(false);
    obj.edit23:setVisible(true);
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setField("Upa3d10");
    obj.edit23:setName("edit23");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.rectangle3);
    obj.rectangle4:setLeft(360);
    obj.rectangle4:setTop(500);
    obj.rectangle4:setWidth(50);
    obj.rectangle4:setHeight(30);
    obj.rectangle4:setColor("black");
    obj.rectangle4:setStrokeColor("red");
    obj.rectangle4:setStrokeSize(3);
    obj.rectangle4:setName("rectangle4");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.rectangle3);
    obj.edit24:setLeft(360);
    obj.edit24:setTop(500);
    obj.edit24:setWidth(50);
    obj.edit24:setHeight(30);
    obj.edit24:setType("number");
    obj.edit24:setMin(1);
    obj.edit24:setMax(18);
    obj.edit24:setEnabled(false);
    obj.edit24:setVisible(true);
    obj.edit24:setTransparent(true);
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setField("Upa1d20");
    obj.edit24:setName("edit24");

    obj.edtGM35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM35:setParent(obj.rectangle3);
    obj.edtGM35:setName("edtGM35");
    obj.edtGM35:setLeft(180);
    obj.edtGM35:setTop(530);
    obj.edtGM35:setWidth(50);
    obj.edtGM35:setHeight(30);
    obj.edtGM35:setType("number");
    obj.edtGM35:setMin(1);
    obj.edtGM35:setMax(9);
    obj.edtGM35:setEnabled(true);
    obj.edtGM35:setVisible(false);
    obj.edtGM35:setHorzTextAlign("center");
    obj.edtGM35:setField("Dificuldade1d10DoJutsu1");

    obj.edtGM36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM36:setParent(obj.rectangle3);
    obj.edtGM36:setName("edtGM36");
    obj.edtGM36:setLeft(240);
    obj.edtGM36:setTop(530);
    obj.edtGM36:setWidth(50);
    obj.edtGM36:setHeight(30);
    obj.edtGM36:setType("number");
    obj.edtGM36:setMin(1);
    obj.edtGM36:setMax(9);
    obj.edtGM36:setEnabled(true);
    obj.edtGM36:setVisible(false);
    obj.edtGM36:setHorzTextAlign("center");
    obj.edtGM36:setField("Dificuldade2d10DoJutsu1");

    obj.edtGM37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM37:setParent(obj.rectangle3);
    obj.edtGM37:setName("edtGM37");
    obj.edtGM37:setLeft(300);
    obj.edtGM37:setTop(530);
    obj.edtGM37:setWidth(50);
    obj.edtGM37:setHeight(30);
    obj.edtGM37:setType("number");
    obj.edtGM37:setMin(1);
    obj.edtGM37:setMax(9);
    obj.edtGM37:setEnabled(true);
    obj.edtGM37:setVisible(false);
    obj.edtGM37:setHorzTextAlign("center");
    obj.edtGM37:setField("Dificuldade3d10DoJutsu1");

    obj.edtGM38 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.edtGM38:setParent(obj.rectangle3);
    obj.edtGM38:setName("edtGM38");
    obj.edtGM38:setLeft(360);
    obj.edtGM38:setTop(530);
    obj.edtGM38:setWidth(50);
    obj.edtGM38:setHeight(30);
    obj.edtGM38:setColor("black");
    obj.edtGM38:setStrokeColor("red");
    obj.edtGM38:setVisible(false);
    obj.edtGM38:setStrokeSize(3);

    obj.edtGM39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM39:setParent(obj.rectangle3);
    obj.edtGM39:setName("edtGM39");
    obj.edtGM39:setLeft(360);
    obj.edtGM39:setTop(530);
    obj.edtGM39:setWidth(50);
    obj.edtGM39:setHeight(30);
    obj.edtGM39:setType("number");
    obj.edtGM39:setMin(1);
    obj.edtGM39:setMax(18);
    obj.edtGM39:setEnabled(true);
    obj.edtGM39:setVisible(false);
    obj.edtGM39:setTransparent(true);
    obj.edtGM39:setHorzTextAlign("center");
    obj.edtGM39:setField("Dificuldade1d20DoJutsu1");

    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.rectangle3);
    obj.button12:setLeft(415);
    obj.button12:setTop(500);
    obj.button12:setWidth(50);
    obj.button12:setHeight(30);
    obj.button12:setFontFamily("Nyala");
    obj.button12:setFontSize(18);
    obj.button12:setText("( ? )");
    obj.button12:setName("button12");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.rectangle3);
    obj.dataLink7:setFields({'LevelJutsu1', 'GraduacaoTreino', 'RankPorTreino', 'Dificuldade1d10DoJutsu1', 'Dificuldade2d10DoJutsu1', 'Dificuldade3d10DoJutsu1', 'Dificuldade1d20DoJutsu1', 
								'Dificuldade1d10DoJutsu1Estudo', 'Dificuldade2d10DoJutsu1Estudo', 'Dificuldade3d10DoJutsu1Estudo', 'Dificuldade1d20DoJutsu1Estudo'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.rectangle3);
    obj.dataLink8:setFields({'TipoCustoJutsu2'});
    obj.dataLink8:setName("dataLink8");

    obj.btnUparJutsu2 = GUI.fromHandle(_obj_newObject("button"));
    obj.btnUparJutsu2:setParent(obj.rectangle3);
    obj.btnUparJutsu2:setName("btnUparJutsu2");
    obj.btnUparJutsu2:setLeft(180);
    obj.btnUparJutsu2:setTop(540);
    obj.btnUparJutsu2:setWidth(230);
    obj.btnUparJutsu2:setHeight(30);
    obj.btnUparJutsu2:setFontFamily("Nyala");
    obj.btnUparJutsu2:setFontSize(18);
    obj.btnUparJutsu2:setText("Treinar");

    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.scrollBox2);
    obj.button13:setLeft(250);
    obj.button13:setTop(448);
    obj.button13:setWidth(100);
    obj.button13:setHeight(85);
    obj.button13:setOpacity(0.1);
    obj.button13:setText("");
    obj.button13:setName("button13");

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

    obj.button14 = GUI.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.scrollBox5);
    obj.button14:setText("Novo Kekegenkai");
    obj.button14:setWidth(125);
    obj.button14:setHeight(40);
    obj.button14:setLeft(70);
    obj.button14:setTop(10);
    obj.button14:setName("button14");

    obj.rclListadeJutsus3 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListadeJutsus3:setParent(obj.scrollBox5);
    obj.rclListadeJutsus3:setName("rclListadeJutsus3");
    obj.rclListadeJutsus3:setField("Jutsus3");
    obj.rclListadeJutsus3:setTemplateForm("frmListadeJutsu3");
    obj.rclListadeJutsus3:setWidth(880);
    obj.rclListadeJutsus3:setHeight(570);
    obj.rclListadeJutsus3:setLeft(10);
    obj.rclListadeJutsus3:setTop(60);
    obj.rclListadeJutsus3:setSelectable(true);

    obj.ListaJutsus3 = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.ListaJutsus3:setParent(obj.scrollBox5);
    obj.ListaJutsus3:setName("ListaJutsus3");
    obj.ListaJutsus3:setVisible(false);
    obj.ListaJutsus3:setWidth(480);
    obj.ListaJutsus3:setHeight(590);
    obj.ListaJutsus3:setLeft(400);
    obj.ListaJutsus3:setTop(60);

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.ListaJutsus3);
    obj.rectangle5:setColor("black");
    obj.rectangle5:setXradius(10);
    obj.rectangle5:setYradius(10);
    obj.rectangle5:setWidth(460);
    obj.rectangle5:setHeight(580);
    obj.rectangle5:setLeft(1);
    obj.rectangle5:setTop(1);
    obj.rectangle5:setName("rectangle5");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.rectangle5);
    obj.label25:setWidth(120);
    obj.label25:setHeight(40);
    obj.label25:setLeft(10);
    obj.label25:setTop(10);
    obj.label25:setFontFamily("Nyala");
    obj.label25:setFontSize(20);
    obj.label25:setText("Nome do Jutsu:");
    obj.label25:setName("label25");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.rectangle5);
    obj.edit25:setWidth(220);
    obj.edit25:setHeight(30);
    obj.edit25:setLeft(130);
    obj.edit25:setTop(15);
    obj.edit25:setField("NomedoJutsu3");
    obj.edit25:setName("edit25");

    obj.button15 = GUI.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj.rectangle5);
    obj.button15:setWidth(80);
    obj.button15:setHeight(30);
    obj.button15:setLeft(360);
    obj.button15:setTop(15);
    obj.button15:setFontColor("red");
    obj.button15:setText("DELETAR");
    obj.button15:setName("button15");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.rectangle5);
    obj.textEditor3:setLeft(10);
    obj.textEditor3:setTop(60);
    obj.textEditor3:setWidth(430);
    obj.textEditor3:setHeight(240);
    obj.textEditor3:setField("DescriJutsu");
    obj.textEditor3:setName("textEditor3");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.rectangle5);
    obj.label26:setLeft(10);
    obj.label26:setTop(305);
    obj.label26:setWidth(120);
    obj.label26:setHeight(40);
    obj.label26:setFontFamily("Nyala");
    obj.label26:setFontSize(16);
    obj.label26:setText("Dano:");
    obj.label26:setName("label26");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.rectangle5);
    obj.edit26:setLeft(50);
    obj.edit26:setTop(310);
    obj.edit26:setWidth(80);
    obj.edit26:setHeight(30);
    obj.edit26:setType("number");
    obj.edit26:setMin(0);
    obj.edit26:setField("DanoJutsu");
    obj.edit26:setName("edit26");

    obj.comboBox10 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox10:setParent(obj.rectangle5);
    obj.comboBox10:setLeft(135);
    obj.comboBox10:setTop(318);
    obj.comboBox10:setWidth(110);
    obj.comboBox10:setHeight(20);
    obj.comboBox10:setScale(0.9);
    obj.comboBox10:setFontColor("Cyan");
    obj.comboBox10:setField("TipoCustoJutsu3");
    obj.comboBox10:setItems({'Chacra', 'Reiatsu', 'Chacra Biju', 'Chacra Branco', 'Chacra Preto', 'Hadou', 'Hadou Negro', 'Chacra Natural', 'Chakra Roxo', 'Outros'});
    obj.comboBox10:setName("comboBox10");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.rectangle5);
    obj.edit27:setLeft(236);
    obj.edit27:setTop(310);
    obj.edit27:setWidth(30);
    obj.edit27:setHeight(30);
    obj.edit27:setType("number");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setFontColor("cyan");
    obj.edit27:setField("CustoJutsu");
    obj.edit27:setName("edit27");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.rectangle5);
    obj.label27:setLeft(268);
    obj.label27:setTop(305);
    obj.label27:setWidth(100);
    obj.label27:setHeight(40);
    obj.label27:setFontFamily("Nyala");
    obj.label27:setFontSize(16);
    obj.label27:setVisible(true);
    obj.label27:setFontColor("cyan");
    obj.label27:setText("Custo Real: ");
    obj.label27:setName("label27");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.rectangle5);
    obj.edit28:setLeft(338);
    obj.edit28:setTop(310);
    obj.edit28:setWidth(30);
    obj.edit28:setHeight(30);
    obj.edit28:setType("number");
    obj.edit28:setEnabled(false);
    obj.edit28:setVisible(true);
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setFontColor("cyan");
    obj.edit28:setField("CustoJutsuReal");
    obj.edit28:setName("edit28");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.rectangle5);
    obj.label28:setLeft(375);
    obj.label28:setTop(305);
    obj.label28:setWidth(100);
    obj.label28:setHeight(40);
    obj.label28:setFontFamily("Nyala");
    obj.label28:setFontSize(16);
    obj.label28:setVisible(true);
    obj.label28:setFontColor("green");
    obj.label28:setText("Energia: ");
    obj.label28:setName("label28");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.rectangle5);
    obj.edit29:setLeft(430);
    obj.edit29:setTop(310);
    obj.edit29:setWidth(30);
    obj.edit29:setHeight(30);
    obj.edit29:setType("number");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setVisible(true);
    obj.edit29:setFontColor("green");
    obj.edit29:setMin(0);
    obj.edit29:setField("CustoEnergia");
    obj.edit29:setName("edit29");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.rectangle5);
    obj.label29:setLeft(10);
    obj.label29:setTop(345);
    obj.label29:setWidth(60);
    obj.label29:setHeight(40);
    obj.label29:setFontFamily("Nyala");
    obj.label29:setFontSize(16);
    obj.label29:setText("Tipo 1:");
    obj.label29:setName("label29");

    obj.comboBox11 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox11:setParent(obj.rectangle5);
    obj.comboBox11:setLeft(50);
    obj.comboBox11:setTop(358);
    obj.comboBox11:setWidth(100);
    obj.comboBox11:setHeight(18);
    obj.comboBox11:setField("TipoLista1Jutsu1");
    obj.comboBox11:setItems({'Nulo', 'Tai', 'Nin', 'Gen', 'Elemental', 'DanoArmado', 'Defensivo', 'Selamento', 'Outros','M/Tai', 'M/Nin', 'M/Gen', 'M/Elemental', 'M/DA', 'Kunai', 'Shuriken', 'Shuriken Fuuma', 'Kunai Gigante', 'Senbon', 'Papel Bomba', 'Ginso Explosivo', 'Veneno', 'Bandagem'});
    obj.comboBox11:setName("comboBox11");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.rectangle5);
    obj.label30:setLeft(160);
    obj.label30:setTop(345);
    obj.label30:setWidth(60);
    obj.label30:setHeight(40);
    obj.label30:setFontFamily("Nyala");
    obj.label30:setVisible(true);
    obj.label30:setFontSize(16);
    obj.label30:setText("Tipo 2:");
    obj.label30:setName("label30");

    obj.comboBox12 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox12:setParent(obj.rectangle5);
    obj.comboBox12:setLeft(205);
    obj.comboBox12:setTop(358);
    obj.comboBox12:setWidth(100);
    obj.comboBox12:setHeight(18);
    obj.comboBox12:setField("TipoLista1Jutsu2");
    obj.comboBox12:setVisible(true);
    obj.comboBox12:setItems({'Nulo', 'Tai', 'Nin', 'Gen', 'Elemental', 'DanoArmado', 'Defensivo', 'Selamento', 'Outros','M/Tai', 'M/Nin', 'M/Gen', 'M/Elemental', 'M/DA', 'Kunai', 'Shuriken', 'Shuriken Fuuma', 'Kunai Gigante', 'Senbon', 'Papel Bomba', 'Ginso Explosivo', 'Veneno', 'Bandagem'});
    obj.comboBox12:setName("comboBox12");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.rectangle5);
    obj.label31:setLeft(310);
    obj.label31:setTop(345);
    obj.label31:setWidth(60);
    obj.label31:setHeight(40);
    obj.label31:setFontFamily("Nyala");
    obj.label31:setVisible(true);
    obj.label31:setFontSize(16);
    obj.label31:setText("Tipo 3:");
    obj.label31:setName("label31");

    obj.comboBox13 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox13:setParent(obj.rectangle5);
    obj.comboBox13:setLeft(355);
    obj.comboBox13:setTop(358);
    obj.comboBox13:setWidth(100);
    obj.comboBox13:setHeight(18);
    obj.comboBox13:setField("TipoLista1Jutsu3");
    obj.comboBox13:setVisible(true);
    obj.comboBox13:setItems({'Nulo', 'Tai', 'Nin', 'Gen', 'Elemental', 'DanoArmado', 'Defensivo', 'Selamento', 'Outros','M/Tai', 'M/Nin', 'M/Gen', 'M/Elemental', 'M/DA', 'Kunai', 'Shuriken', 'Shuriken Fuuma', 'Kunai Gigante', 'Senbon', 'Papel Bomba', 'Ginso Explosivo', 'Veneno', 'Bandagem'});
    obj.comboBox13:setName("comboBox13");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.rectangle5);
    obj.label32:setWidth(150);
    obj.label32:setHeight(40);
    obj.label32:setLeft(10);
    obj.label32:setTop(390);
    obj.label32:setFontFamily("Nyala");
    obj.label32:setFontSize(16);
    obj.label32:setText("Dano Verdadeiro");
    obj.label32:setName("label32");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.rectangle5);
    obj.edit30:setWidth(80);
    obj.edit30:setHeight(20);
    obj.edit30:setLeft(110);
    obj.edit30:setTop(400);
    obj.edit30:setEnabled(false);
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setType("number");
    obj.edit30:setField("DNVerdadeiro");
    obj.edit30:setName("edit30");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.rectangle5);
    obj.label33:setWidth(170);
    obj.label33:setHeight(40);
    obj.label33:setLeft(280);
    obj.label33:setTop(390);
    obj.label33:setFontFamily("Nyala");
    obj.label33:setFontColor("Crimson ");
    obj.label33:setFontSize(16);
    obj.label33:setText("Intensidade");
    obj.label33:setName("label33");

    obj.edtGM41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM41:setParent(obj.rectangle5);
    obj.edtGM41:setName("edtGM41");
    obj.edtGM41:setWidth(80);
    obj.edtGM41:setHeight(20);
    obj.edtGM41:setLeft(350);
    obj.edtGM41:setTop(400);
    obj.edtGM41:setEnabled(false);
    obj.edtGM41:setHorzTextAlign("center");
    obj.edtGM41:setVisible(false);
    obj.edtGM41:setType("number");
    obj.edtGM41:setFontColor("Crimson");
    obj.edtGM41:setField("Lista1Intensidade1");

    obj.edtGM42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM42:setParent(obj.rectangle5);
    obj.edtGM42:setName("edtGM42");
    obj.edtGM42:setWidth(80);
    obj.edtGM42:setHeight(20);
    obj.edtGM42:setLeft(350);
    obj.edtGM42:setTop(420);
    obj.edtGM42:setEnabled(false);
    obj.edtGM42:setHorzTextAlign("center");
    obj.edtGM42:setVisible(false);
    obj.edtGM42:setType("number");
    obj.edtGM42:setFontColor("Crimson");
    obj.edtGM42:setField("Lista1Intensidade2");

    obj.edtGM43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM43:setParent(obj.rectangle5);
    obj.edtGM43:setName("edtGM43");
    obj.edtGM43:setWidth(80);
    obj.edtGM43:setHeight(20);
    obj.edtGM43:setLeft(350);
    obj.edtGM43:setTop(440);
    obj.edtGM43:setEnabled(false);
    obj.edtGM43:setHorzTextAlign("center");
    obj.edtGM43:setVisible(false);
    obj.edtGM43:setType("number");
    obj.edtGM43:setFontColor("Crimson");
    obj.edtGM43:setField("Lista1Intensidade3");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.rectangle5);
    obj.edit31:setWidth(80);
    obj.edit31:setHeight(20);
    obj.edit31:setLeft(350);
    obj.edit31:setTop(400);
    obj.edit31:setEnabled(false);
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setType("number");
    obj.edit31:setFontColor("red");
    obj.edit31:setField("Lista1IntensidadeTotal");
    obj.edit31:setName("edit31");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.rectangle5);
    obj.label34:setWidth(70);
    obj.label34:setHeight(40);
    obj.label34:setLeft(195);
    obj.label34:setTop(390);
    obj.label34:setFontFamily("Nyala");
    obj.label34:setFontSize(16);
    obj.label34:setText("Level");
    obj.label34:setName("label34");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.rectangle5);
    obj.dataLink9:setFields({'DanoJutsu', 'LevelJutsu1'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.rectangle5);
    obj.dataLink10:setFields({'TipoLista1Jutsu1', 'LevelJutsu1', 'DanoJutsu', 'TipoLista1Jutsu2', 'TipoLista1Jutsu3', 'DNVerdadeiro', 'CustoJutsu'});
    obj.dataLink10:setName("dataLink10");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.rectangle5);
    obj.edit32:setWidth(40);
    obj.edit32:setHeight(30);
    obj.edit32:setLeft(390);
    obj.edit32:setTop(380);
    obj.edit32:setVisible(false);
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setFontColor("cyan");
    obj.edit32:setType("number");
    obj.edit32:setField("ChakraPlayer");
    obj.edit32:setName("edit32");

    obj.edtGM44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM44:setParent(obj.rectangle5);
    obj.edtGM44:setName("edtGM44");
    obj.edtGM44:setWidth(30);
    obj.edtGM44:setHeight(20);
    obj.edtGM44:setLeft(230);
    obj.edtGM44:setTop(400);
    obj.edtGM44:setEnabled(true);
    obj.edtGM44:setHorzTextAlign("center");
    obj.edtGM44:setVisible(true);
    obj.edtGM44:setType("number");
    obj.edtGM44:setMin(1);
    obj.edtGM44:setField("LevelJutsu1");

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.rectangle5);
    obj.image7:setLeft(20);
    obj.image7:setTop(420);
    obj.image7:setWidth(150);
    obj.image7:setHeight(150);
    obj.image7:setSRC("/imagens/Jutsu.png");
    obj.image7:setName("image7");

    obj.button16 = GUI.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj.rectangle5);
    obj.button16:setLeft(20);
    obj.button16:setTop(430);
    obj.button16:setFontSize(20);
    obj.button16:setOpacity(0.0);
    obj.button16:setHeight(120);
    obj.button16:setWidth(150);
    obj.button16:setText("Usar");
    obj.button16:setFontColor("White");
    obj.button16:setName("button16");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.rectangle5);
    obj.label35:setLeft(200);
    obj.label35:setTop(425);
    obj.label35:setWidth(100);
    obj.label35:setHeight(30);
    obj.label35:setFontFamily("Nyala");
    obj.label35:setFontSize(18);
    obj.label35:setText("Rank do Jutsu");
    obj.label35:setName("label35");

    obj.cmbRakporTreino3 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.cmbRakporTreino3:setParent(obj.rectangle5);
    obj.cmbRakporTreino3:setName("cmbRakporTreino3");
    obj.cmbRakporTreino3:setLeft(300);
    obj.cmbRakporTreino3:setTop(425);
    obj.cmbRakporTreino3:setWidth(50);
    obj.cmbRakporTreino3:setHeight(30);
    obj.cmbRakporTreino3:setFontFamily("Nyala");
    obj.cmbRakporTreino3:setFontSize(18);
    obj.cmbRakporTreino3:setField("RankPorTreino");
    obj.cmbRakporTreino3:setItems({'E', 'D', 'C', 'B', 'A', 'S', 'SS', 'X','X+'});

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.rectangle5);
    obj.label36:setLeft(180);
    obj.label36:setTop(460);
    obj.label36:setWidth(230);
    obj.label36:setHeight(40);
    obj.label36:setFontFamily("Nyala");
    obj.label36:setFontSize(18);
    obj.label36:setText("Fortificação de jutsu 3D10 e 1d20");
    obj.label36:setName("label36");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.rectangle5);
    obj.edit33:setLeft(180);
    obj.edit33:setTop(500);
    obj.edit33:setWidth(50);
    obj.edit33:setHeight(30);
    obj.edit33:setType("number");
    obj.edit33:setMin(1);
    obj.edit33:setMax(9);
    obj.edit33:setEnabled(false);
    obj.edit33:setVisible(true);
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setField("Upa1d10");
    obj.edit33:setName("edit33");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.rectangle5);
    obj.edit34:setLeft(240);
    obj.edit34:setTop(500);
    obj.edit34:setWidth(50);
    obj.edit34:setHeight(30);
    obj.edit34:setType("number");
    obj.edit34:setMin(1);
    obj.edit34:setMax(9);
    obj.edit34:setEnabled(false);
    obj.edit34:setVisible(true);
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setField("Upa2d10");
    obj.edit34:setName("edit34");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.rectangle5);
    obj.edit35:setLeft(300);
    obj.edit35:setTop(500);
    obj.edit35:setWidth(50);
    obj.edit35:setHeight(30);
    obj.edit35:setType("number");
    obj.edit35:setMin(1);
    obj.edit35:setMax(9);
    obj.edit35:setEnabled(false);
    obj.edit35:setVisible(true);
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setField("Upa3d10");
    obj.edit35:setName("edit35");

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

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.rectangle5);
    obj.edit36:setLeft(360);
    obj.edit36:setTop(500);
    obj.edit36:setWidth(50);
    obj.edit36:setHeight(30);
    obj.edit36:setType("number");
    obj.edit36:setMin(1);
    obj.edit36:setMax(18);
    obj.edit36:setEnabled(false);
    obj.edit36:setVisible(true);
    obj.edit36:setTransparent(true);
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setField("Upa1d20");
    obj.edit36:setName("edit36");

    obj.edtGM45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM45:setParent(obj.rectangle5);
    obj.edtGM45:setName("edtGM45");
    obj.edtGM45:setLeft(180);
    obj.edtGM45:setTop(530);
    obj.edtGM45:setWidth(50);
    obj.edtGM45:setHeight(30);
    obj.edtGM45:setType("number");
    obj.edtGM45:setMin(1);
    obj.edtGM45:setMax(9);
    obj.edtGM45:setEnabled(true);
    obj.edtGM45:setVisible(false);
    obj.edtGM45:setHorzTextAlign("center");
    obj.edtGM45:setField("Dificuldade1d10DoJutsu1");

    obj.edtGM46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM46:setParent(obj.rectangle5);
    obj.edtGM46:setName("edtGM46");
    obj.edtGM46:setLeft(240);
    obj.edtGM46:setTop(530);
    obj.edtGM46:setWidth(50);
    obj.edtGM46:setHeight(30);
    obj.edtGM46:setType("number");
    obj.edtGM46:setMin(1);
    obj.edtGM46:setMax(9);
    obj.edtGM46:setEnabled(true);
    obj.edtGM46:setVisible(false);
    obj.edtGM46:setHorzTextAlign("center");
    obj.edtGM46:setField("Dificuldade2d10DoJutsu1");

    obj.edtGM47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM47:setParent(obj.rectangle5);
    obj.edtGM47:setName("edtGM47");
    obj.edtGM47:setLeft(300);
    obj.edtGM47:setTop(530);
    obj.edtGM47:setWidth(50);
    obj.edtGM47:setHeight(30);
    obj.edtGM47:setType("number");
    obj.edtGM47:setMin(1);
    obj.edtGM47:setMax(9);
    obj.edtGM47:setEnabled(true);
    obj.edtGM47:setVisible(false);
    obj.edtGM47:setHorzTextAlign("center");
    obj.edtGM47:setField("Dificuldade3d10DoJutsu1");

    obj.edtGM48 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.edtGM48:setParent(obj.rectangle5);
    obj.edtGM48:setName("edtGM48");
    obj.edtGM48:setLeft(360);
    obj.edtGM48:setTop(530);
    obj.edtGM48:setWidth(50);
    obj.edtGM48:setHeight(30);
    obj.edtGM48:setColor("black");
    obj.edtGM48:setStrokeColor("red");
    obj.edtGM48:setVisible(false);
    obj.edtGM48:setStrokeSize(3);

    obj.edtGM49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM49:setParent(obj.rectangle5);
    obj.edtGM49:setName("edtGM49");
    obj.edtGM49:setLeft(360);
    obj.edtGM49:setTop(530);
    obj.edtGM49:setWidth(50);
    obj.edtGM49:setHeight(30);
    obj.edtGM49:setType("number");
    obj.edtGM49:setMin(1);
    obj.edtGM49:setMax(18);
    obj.edtGM49:setEnabled(true);
    obj.edtGM49:setVisible(false);
    obj.edtGM49:setTransparent(true);
    obj.edtGM49:setHorzTextAlign("center");
    obj.edtGM49:setField("Dificuldade1d20DoJutsu1");

    obj.button17 = GUI.fromHandle(_obj_newObject("button"));
    obj.button17:setParent(obj.rectangle5);
    obj.button17:setLeft(415);
    obj.button17:setTop(500);
    obj.button17:setWidth(50);
    obj.button17:setHeight(30);
    obj.button17:setFontFamily("Nyala");
    obj.button17:setFontSize(18);
    obj.button17:setText("( ? )");
    obj.button17:setName("button17");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.rectangle5);
    obj.dataLink11:setFields({'LevelJutsu1', 'GraduacaoTreino', 'RankPorTreino', 'Dificuldade1d10DoJutsu1', 'Dificuldade2d10DoJutsu1', 'Dificuldade3d10DoJutsu1', 'Dificuldade1d20DoJutsu1', 
								'Dificuldade1d10DoJutsu1Estudo', 'Dificuldade2d10DoJutsu1Estudo', 'Dificuldade3d10DoJutsu1Estudo', 'Dificuldade1d20DoJutsu1Estudo'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.rectangle5);
    obj.dataLink12:setFields({'TipoCustoJutsu3'});
    obj.dataLink12:setName("dataLink12");

    obj.btnUparJutsu3 = GUI.fromHandle(_obj_newObject("button"));
    obj.btnUparJutsu3:setParent(obj.rectangle5);
    obj.btnUparJutsu3:setName("btnUparJutsu3");
    obj.btnUparJutsu3:setLeft(180);
    obj.btnUparJutsu3:setTop(540);
    obj.btnUparJutsu3:setWidth(230);
    obj.btnUparJutsu3:setHeight(30);
    obj.btnUparJutsu3:setFontFamily("Nyala");
    obj.btnUparJutsu3:setFontSize(18);
    obj.btnUparJutsu3:setText("Treinar");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.scrollBox2);
    obj.edit37:setLeft(90);
    obj.edit37:setTop(32);
    obj.edit37:setWidth(85);
    obj.edit37:setHeight(18);
    obj.edit37:setField("Nome");
    obj.edit37:setName("edit37");

    obj.comboBox14 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox14:setParent(obj.scrollBox2);
    obj.comboBox14:setLeft(220);
    obj.comboBox14:setTop(32);
    obj.comboBox14:setWidth(95);
    obj.comboBox14:setHeight(18);
    obj.comboBox14:setField("Cla");
    obj.comboBox14:setItems({'Sem clã', 'Aburame', 'Akimichi', 'Fuma', 'Hyuga', 'Inuzuka', 'Jyuin', 'Kaguya', 'Kamizurui', 'Nara', 'Ootsuki', 'Rinnegan', 'Shizuku', 'Uchiha', 'Uzumaki', 'Yamanaka',
				 '----//----', 'Fire', 'Gomu', 'Hozuki/Hoshigake', 'Kami', 'Kibaku', 'Kori', 'Mashido', 'Iburi', 'Orega', 'Ray', 'Sabaku', 'Senju', 'Temuri', 'Ryotenbin', '----//----', 
				 'Chinoke', 'Hanbun', 'Kazumi', 'Kouga', 'Miroku', 'Mitsu', 'Nakamura', 'Natsume', 'Neko', 'Neon', 'Shinkara', '---//---'});
    obj.comboBox14:setName("comboBox14");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.scrollBox2);
    obj.edit38:setLeft(365);
    obj.edit38:setTop(32);
    obj.edit38:setWidth(50);
    obj.edit38:setHeight(18);
    obj.edit38:setField("Idade");
    obj.edit38:setName("edit38");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.scrollBox2);
    obj.edit39:setLeft(365);
    obj.edit39:setTop(80);
    obj.edit39:setWidth(50);
    obj.edit39:setHeight(18);
    obj.edit39:setVisible(false);
    obj.edit39:setType("number");
    obj.edit39:setMax(40);
    obj.edit39:setField("Idade2");
    obj.edit39:setName("edit39");

    obj.comboBox15 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox15:setParent(obj.scrollBox2);
    obj.comboBox15:setLeft(555);
    obj.comboBox15:setTop(32);
    obj.comboBox15:setWidth(140);
    obj.comboBox15:setHeight(18);
    obj.comboBox15:setField("GraduacaoTreino");
    obj.comboBox15:setItems({'Academico', 'Genin', 'Chunin', 'Jounin', 'Anbu', 'AnbuNucleo', 'Organização', 'GDE', 'Concelheiro', 'Kage'});
    obj.comboBox15:setName("comboBox15");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.scrollBox2);
    obj.edit40:setLeft(220);
    obj.edit40:setTop(52);
    obj.edit40:setWidth(85);
    obj.edit40:setHeight(18);
    obj.edit40:setType("number");
    obj.edit40:setEnabled(true);
    obj.edit40:setField("Yen");
    obj.edit40:setName("edit40");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.scrollBox2);
    obj.edit41:setLeft(90);
    obj.edit41:setTop(52);
    obj.edit41:setWidth(85);
    obj.edit41:setHeight(18);
    obj.edit41:setField("Elemento");
    obj.edit41:setName("edit41");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.scrollBox2);
    obj.edit42:setLeft(130);
    obj.edit42:setTop(115);
    obj.edit42:setWidth(85);
    obj.edit42:setHeight(18);
    obj.edit42:setType("number");
    obj.edit42:setField("Forca");
    obj.edit42:setName("edit42");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.scrollBox2);
    obj.edit43:setLeft(130);
    obj.edit43:setTop(135);
    obj.edit43:setWidth(85);
    obj.edit43:setHeight(18);
    obj.edit43:setType("number");
    obj.edit43:setField("Inteligencia");
    obj.edit43:setName("edit43");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.scrollBox2);
    obj.edit44:setLeft(130);
    obj.edit44:setTop(155);
    obj.edit44:setWidth(85);
    obj.edit44:setHeight(18);
    obj.edit44:setType("number");
    obj.edit44:setField("Sabedoria");
    obj.edit44:setName("edit44");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.scrollBox2);
    obj.edit45:setLeft(130);
    obj.edit45:setTop(175);
    obj.edit45:setWidth(85);
    obj.edit45:setHeight(18);
    obj.edit45:setType("number");
    obj.edit45:setField("Habilidade");
    obj.edit45:setName("edit45");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.scrollBox2);
    obj.edit46:setLeft(130);
    obj.edit46:setTop(195);
    obj.edit46:setWidth(85);
    obj.edit46:setHeight(18);
    obj.edit46:setType("number");
    obj.edit46:setField("Resistencia");
    obj.edit46:setName("edit46");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.scrollBox2);
    obj.edit47:setLeft(370);
    obj.edit47:setTop(115);
    obj.edit47:setWidth(85);
    obj.edit47:setEnabled(false);
    obj.edit47:setHeight(18);
    obj.edit47:setType("float");
    obj.edit47:setField("TaiTotal");
    obj.edit47:setName("edit47");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.scrollBox2);
    obj.edit48:setLeft(370);
    obj.edit48:setTop(135);
    obj.edit48:setWidth(85);
    obj.edit48:setEnabled(false);
    obj.edit48:setHeight(18);
    obj.edit48:setType("float");
    obj.edit48:setField("NinTotal");
    obj.edit48:setName("edit48");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.scrollBox2);
    obj.edit49:setLeft(370);
    obj.edit49:setTop(155);
    obj.edit49:setWidth(85);
    obj.edit49:setEnabled(false);
    obj.edit49:setHeight(18);
    obj.edit49:setType("float");
    obj.edit49:setField("GenTotal");
    obj.edit49:setName("edit49");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.scrollBox2);
    obj.edit50:setLeft(370);
    obj.edit50:setTop(175);
    obj.edit50:setWidth(85);
    obj.edit50:setEnabled(false);
    obj.edit50:setHeight(18);
    obj.edit50:setType("float");
    obj.edit50:setField("DATotal");
    obj.edit50:setName("edit50");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.scrollBox2);
    obj.edit51:setLeft(370);
    obj.edit51:setTop(195);
    obj.edit51:setWidth(85);
    obj.edit51:setEnabled(false);
    obj.edit51:setHeight(18);
    obj.edit51:setType("float");
    obj.edit51:setField("EleTotal");
    obj.edit51:setName("edit51");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.scrollBox2);
    obj.edit52:setLeft(370);
    obj.edit52:setTop(215);
    obj.edit52:setWidth(85);
    obj.edit52:setEnabled(false);
    obj.edit52:setHeight(18);
    obj.edit52:setType("float");
    obj.edit52:setField("ReducaoTotal");
    obj.edit52:setName("edit52");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.scrollBox2);
    obj.edit53:setLeft(570);
    obj.edit53:setTop(100);
    obj.edit53:setWidth(55);
    obj.edit53:setHeight(30);
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setFontColor("Red");
    obj.edit53:setFontFamily("Nyala");
    obj.edit53:setFontSize(25);
    obj.edit53:setEnabled(true);
    obj.edit53:setType("number");
    obj.edit53:setField("Level");
    obj.edit53:setName("edit53");

    obj.Exp = GUI.fromHandle(_obj_newObject("edit"));
    obj.Exp:setParent(obj.scrollBox2);
    obj.Exp:setName("Exp");
    obj.Exp:setLeft(535);
    obj.Exp:setTop(132);
    obj.Exp:setWidth(55);
    obj.Exp:setHeight(18);
    obj.Exp:setType("float");
    obj.Exp:setField("Exp");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.scrollBox2);
    obj.edit54:setLeft(610);
    obj.edit54:setTop(132);
    obj.edit54:setWidth(55);
    obj.edit54:setHeight(18);
    obj.edit54:setEnabled(false);
    obj.edit54:setType("float");
    obj.edit54:setField("ExpTotal");
    obj.edit54:setName("edit54");

    obj.edtGM27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtGM27:setParent(obj.scrollBox2);
    obj.edtGM27:setName("edtGM27");
    obj.edtGM27:setLeft(670);
    obj.edtGM27:setTop(132);
    obj.edtGM27:setWidth(55);
    obj.edtGM27:setHeight(18);
    obj.edtGM27:setEnabled(true);
    obj.edtGM27:setVisible(false);
    obj.edtGM27:setType("float");
    obj.edtGM27:setField("ExpPTreino");

    obj.edtGM19 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.edtGM19:setParent(obj.scrollBox2);
    obj.edtGM19:setName("edtGM19");
    obj.edtGM19:setLeft(800);
    obj.edtGM19:setTop(20);
    obj.edtGM19:setFontSize(18);
    obj.edtGM19:setText("TREINO ON ?");
    obj.edtGM19:setVisible(false);
    obj.edtGM19:setField("TreinoON");

    obj.edtGM21 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.edtGM21:setParent(obj.scrollBox2);
    obj.edtGM21:setName("edtGM21");
    obj.edtGM21:setLeft(800);
    obj.edtGM21:setTop(50);
    obj.edtGM21:setFontSize(18);
    obj.edtGM21:setText("NPC ?");
    obj.edtGM21:setVisible(false);
    obj.edtGM21:setField("NPC");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.scrollBox2);
    obj.dataLink13:setField("NPC");
    obj.dataLink13:setName("dataLink13");

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.scrollBox2);
    obj.image8:setField("imagemDoPersonagem");
    obj.image8:setEditable(true);
    obj.image8:setStyle("autoFit");
    obj.image8:setLeft(450);
    obj.image8:setTop(255);
    obj.image8:setWidth(154);
    obj.image8:setHeight(110);
    obj.image8:setName("image8");

    obj.retanguloNPC = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.retanguloNPC:setParent(obj.scrollBox2);
    obj.retanguloNPC:setName("retanguloNPC");
    obj.retanguloNPC:setLeft(285);
    obj.retanguloNPC:setTop(250);
    obj.retanguloNPC:setWidth(200);
    obj.retanguloNPC:setHeight(120);
    obj.retanguloNPC:setColor("grey");
    obj.retanguloNPC:setVisible(false);
    obj.retanguloNPC:setStrokeColor("red");
    obj.retanguloNPC:setStrokeSize(1);
    obj.retanguloNPC:setXradius(25);
    obj.retanguloNPC:setYradius(25);
    obj.retanguloNPC:setCornerType("round");

    obj.LabNpc = GUI.fromHandle(_obj_newObject("label"));
    obj.LabNpc:setParent(obj.scrollBox2);
    obj.LabNpc:setName("LabNpc");
    obj.LabNpc:setLeft(305);
    obj.LabNpc:setTop(245);
    obj.LabNpc:setWidth(120);
    obj.LabNpc:setHeight(20);
    obj.LabNpc:setScale(1.4);
    obj.LabNpc:setHorzTextAlign("center");
    obj.LabNpc:setVisible(false);
    obj.LabNpc:setFontColor("red");
    obj.LabNpc:setText("Area Npc");

    obj.edtNPCHP = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtNPCHP:setParent(obj.scrollBox2);
    obj.edtNPCHP:setName("edtNPCHP");
    obj.edtNPCHP:setLeft(290);
    obj.edtNPCHP:setTop(275);
    obj.edtNPCHP:setWidth(60);
    obj.edtNPCHP:setHeight(20);
    obj.edtNPCHP:setHorzTextAlign("center");
    obj.edtNPCHP:setType("number");
    obj.edtNPCHP:setVisible(false);
    obj.edtNPCHP:setFontColor("red");
    obj.edtNPCHP:setField("DanoRecebido");

    obj.btnDiminuiHP = GUI.fromHandle(_obj_newObject("button"));
    obj.btnDiminuiHP:setParent(obj.scrollBox2);
    obj.btnDiminuiHP:setName("btnDiminuiHP");
    obj.btnDiminuiHP:setLeft(350);
    obj.btnDiminuiHP:setTop(275);
    obj.btnDiminuiHP:setWidth(65);
    obj.btnDiminuiHP:setHeight(20);
    obj.btnDiminuiHP:setFontColor("red");
    obj.btnDiminuiHP:setVisible(false);
    obj.btnDiminuiHP:setText("Diminui");

    obj.btnAumentaHP = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAumentaHP:setParent(obj.scrollBox2);
    obj.btnAumentaHP:setName("btnAumentaHP");
    obj.btnAumentaHP:setLeft(415);
    obj.btnAumentaHP:setTop(275);
    obj.btnAumentaHP:setWidth(65);
    obj.btnAumentaHP:setHeight(20);
    obj.btnAumentaHP:setFontColor("red");
    obj.btnAumentaHP:setVisible(false);
    obj.btnAumentaHP:setText("Aumenta");

    obj.edtNPCChacra = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtNPCChacra:setParent(obj.scrollBox2);
    obj.edtNPCChacra:setName("edtNPCChacra");
    obj.edtNPCChacra:setLeft(290);
    obj.edtNPCChacra:setTop(295);
    obj.edtNPCChacra:setWidth(60);
    obj.edtNPCChacra:setHeight(20);
    obj.edtNPCChacra:setHorzTextAlign("center");
    obj.edtNPCChacra:setType("number");
    obj.edtNPCChacra:setFontColor("Cyan");
    obj.edtNPCChacra:setVisible(false);
    obj.edtNPCChacra:setField("CustoChacraRecebido");

    obj.btnDiminuiChacra = GUI.fromHandle(_obj_newObject("button"));
    obj.btnDiminuiChacra:setParent(obj.scrollBox2);
    obj.btnDiminuiChacra:setName("btnDiminuiChacra");
    obj.btnDiminuiChacra:setLeft(350);
    obj.btnDiminuiChacra:setTop(295);
    obj.btnDiminuiChacra:setWidth(65);
    obj.btnDiminuiChacra:setHeight(20);
    obj.btnDiminuiChacra:setFontColor("Cyan");
    obj.btnDiminuiChacra:setVisible(false);
    obj.btnDiminuiChacra:setText("Diminui");

    obj.btnAumentaChacra = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAumentaChacra:setParent(obj.scrollBox2);
    obj.btnAumentaChacra:setName("btnAumentaChacra");
    obj.btnAumentaChacra:setLeft(415);
    obj.btnAumentaChacra:setTop(295);
    obj.btnAumentaChacra:setWidth(65);
    obj.btnAumentaChacra:setHeight(20);
    obj.btnAumentaChacra:setFontColor("Cyan");
    obj.btnAumentaChacra:setVisible(false);
    obj.btnAumentaChacra:setText("Aumenta");

    obj.edtNPCOutros = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtNPCOutros:setParent(obj.scrollBox2);
    obj.edtNPCOutros:setName("edtNPCOutros");
    obj.edtNPCOutros:setLeft(290);
    obj.edtNPCOutros:setTop(315);
    obj.edtNPCOutros:setWidth(60);
    obj.edtNPCOutros:setHeight(20);
    obj.edtNPCOutros:setHorzTextAlign("center");
    obj.edtNPCOutros:setType("number");
    obj.edtNPCOutros:setFontColor("Yellow");
    obj.edtNPCOutros:setVisible(false);
    obj.edtNPCOutros:setField("CustoOutrosRecebido");

    obj.btnDiminuiOutros = GUI.fromHandle(_obj_newObject("button"));
    obj.btnDiminuiOutros:setParent(obj.scrollBox2);
    obj.btnDiminuiOutros:setName("btnDiminuiOutros");
    obj.btnDiminuiOutros:setLeft(350);
    obj.btnDiminuiOutros:setTop(315);
    obj.btnDiminuiOutros:setWidth(65);
    obj.btnDiminuiOutros:setHeight(20);
    obj.btnDiminuiOutros:setFontColor("Yellow");
    obj.btnDiminuiOutros:setVisible(false);
    obj.btnDiminuiOutros:setText("Diminui");

    obj.btnAumentaOutros = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAumentaOutros:setParent(obj.scrollBox2);
    obj.btnAumentaOutros:setName("btnAumentaOutros");
    obj.btnAumentaOutros:setLeft(415);
    obj.btnAumentaOutros:setTop(315);
    obj.btnAumentaOutros:setWidth(65);
    obj.btnAumentaOutros:setHeight(20);
    obj.btnAumentaOutros:setFontColor("Yellow");
    obj.btnAumentaOutros:setVisible(false);
    obj.btnAumentaOutros:setText("Aumenta");

    obj.edtNPCEnergia = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtNPCEnergia:setParent(obj.scrollBox2);
    obj.edtNPCEnergia:setName("edtNPCEnergia");
    obj.edtNPCEnergia:setLeft(290);
    obj.edtNPCEnergia:setTop(335);
    obj.edtNPCEnergia:setWidth(60);
    obj.edtNPCEnergia:setHeight(20);
    obj.edtNPCEnergia:setHorzTextAlign("center");
    obj.edtNPCEnergia:setType("number");
    obj.edtNPCEnergia:setFontColor("Green");
    obj.edtNPCEnergia:setVisible(false);
    obj.edtNPCEnergia:setField("CustoEnergiaRecebido");

    obj.btnDiminuiEnergia = GUI.fromHandle(_obj_newObject("button"));
    obj.btnDiminuiEnergia:setParent(obj.scrollBox2);
    obj.btnDiminuiEnergia:setName("btnDiminuiEnergia");
    obj.btnDiminuiEnergia:setLeft(350);
    obj.btnDiminuiEnergia:setTop(335);
    obj.btnDiminuiEnergia:setWidth(65);
    obj.btnDiminuiEnergia:setHeight(20);
    obj.btnDiminuiEnergia:setFontColor("Green");
    obj.btnDiminuiEnergia:setVisible(false);
    obj.btnDiminuiEnergia:setText("Diminui");

    obj.btnAumentaEnergia = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAumentaEnergia:setParent(obj.scrollBox2);
    obj.btnAumentaEnergia:setName("btnAumentaEnergia");
    obj.btnAumentaEnergia:setLeft(415);
    obj.btnAumentaEnergia:setTop(335);
    obj.btnAumentaEnergia:setWidth(65);
    obj.btnAumentaEnergia:setHeight(20);
    obj.btnAumentaEnergia:setFontColor("Green");
    obj.btnAumentaEnergia:setVisible(false);
    obj.btnAumentaEnergia:setText("Aumenta");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.scrollBox2);
    obj.dataLink14:setFields({'HPAtual', 'HPTotal'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.scrollBox2);
    obj.dataLink15:setFields({'ChakraAtual', 'ChakraTotal'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.scrollBox2);
    obj.dataLink16:setFields({'OutrosAtual', 'OutrosTotal', 'TipoOutro', 'DOutro', 'ChakraBiju', 'ChakraBranco', 'ChakraPreto', 'Hadou', 'HadouNegro', 'ChakraNatural', 'ChakraRoxo', 'Outros', 'Reiatsu', 'Chakra', 'ChakraAtual', 'ChakraTotal'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.scrollBox2);
    obj.dataLink17:setFields({'OutrosAtual', 'OutrosTotal', 'TipoOutro', 'DOutro', 'ChakraBiju', 'ChakraBranco', 'ChakraPreto', 'Hadou', 'HadouNegro', 'ChakraNatural', 'ChakraRoxo', 'Outros', 'Reiatsu', 'Chakra', 'ChakraAtual', 'ChakraTotal'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.scrollBox2);
    obj.dataLink18:setField("TipoOutro");
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.scrollBox2);
    obj.dataLink19:setFields({'EnergiaAtual', 'EnergiaTotal'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.scrollBox2);
    obj.dataLink20:setFields({'EnergiaAtual', 'EnergiaTotal'});
    obj.dataLink20:setName("dataLink20");

    obj.BarraHP = GUI.fromHandle(_obj_newObject("progressBar"));
    obj.BarraHP:setParent(obj.scrollBox2);
    obj.BarraHP:setName("BarraHP");
    obj.BarraHP:setLeft(85);
    obj.BarraHP:setTop(276);
    obj.BarraHP:setWidth(190);
    obj.BarraHP:setHeight(19);
    obj.BarraHP:setColor("Red");
    obj.BarraHP:setPosition(100);
    obj.BarraHP:setMax(100);

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.scrollBox2);
    obj.label37:setLeft(90);
    obj.label37:setTop(276);
    obj.label37:setWidth(85);
    obj.label37:setHeight(18);
    obj.label37:setHorzTextAlign("center");
    obj.label37:setVisible(false);
    obj.label37:setFontColor("White");
    obj.label37:setField("HP");
    obj.label37:setName("label37");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.scrollBox2);
    obj.label38:setLeft(90);
    obj.label38:setTop(276);
    obj.label38:setWidth(85);
    obj.label38:setHeight(18);
    obj.label38:setHorzTextAlign("center");
    obj.label38:setFontColor("White");
    obj.label38:setField("HPAtual");
    obj.label38:setName("label38");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.scrollBox2);
    obj.label39:setLeft(140);
    obj.label39:setTop(276);
    obj.label39:setWidth(85);
    obj.label39:setHeight(18);
    obj.label39:setHorzTextAlign("center");
    obj.label39:setFontColor("White");
    obj.label39:setText("/");
    obj.label39:setName("label39");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.scrollBox2);
    obj.label40:setLeft(190);
    obj.label40:setTop(276);
    obj.label40:setWidth(85);
    obj.label40:setHeight(18);
    obj.label40:setHorzTextAlign("center");
    obj.label40:setFontColor("White");
    obj.label40:setField("HPTotal");
    obj.label40:setName("label40");

    obj.btnVida = GUI.fromHandle(_obj_newObject("button"));
    obj.btnVida:setParent(obj.scrollBox2);
    obj.btnVida:setName("btnVida");
    obj.btnVida:setLeft(280);
    obj.btnVida:setTop(276);
    obj.btnVida:setWidth(40);
    obj.btnVida:setHeight(20);
    obj.btnVida:setFontColor("red");
    obj.btnVida:setText("❤");

    obj.BarraChakra = GUI.fromHandle(_obj_newObject("progressBar"));
    obj.BarraChakra:setParent(obj.scrollBox2);
    obj.BarraChakra:setName("BarraChakra");
    obj.BarraChakra:setLeft(85);
    obj.BarraChakra:setTop(296);
    obj.BarraChakra:setWidth(190);
    obj.BarraChakra:setHeight(19);
    obj.BarraChakra:setColor("Cyan");
    obj.BarraChakra:setPosition(100);
    obj.BarraChakra:setMax(100);

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.scrollBox2);
    obj.label41:setLeft(90);
    obj.label41:setTop(296);
    obj.label41:setWidth(85);
    obj.label41:setHeight(18);
    obj.label41:setHorzTextAlign("center");
    obj.label41:setVisible(false);
    obj.label41:setFontColor("White");
    obj.label41:setField("Chakra");
    obj.label41:setName("label41");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.scrollBox2);
    obj.label42:setLeft(90);
    obj.label42:setTop(296);
    obj.label42:setWidth(85);
    obj.label42:setHeight(18);
    obj.label42:setHorzTextAlign("center");
    obj.label42:setFontColor("White");
    obj.label42:setField("ChakraAtual");
    obj.label42:setName("label42");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.scrollBox2);
    obj.label43:setLeft(140);
    obj.label43:setTop(296);
    obj.label43:setWidth(85);
    obj.label43:setHeight(18);
    obj.label43:setHorzTextAlign("center");
    obj.label43:setFontColor("White");
    obj.label43:setText("/");
    obj.label43:setName("label43");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.scrollBox2);
    obj.label44:setLeft(190);
    obj.label44:setTop(296);
    obj.label44:setWidth(85);
    obj.label44:setHeight(18);
    obj.label44:setHorzTextAlign("center");
    obj.label44:setFontColor("White");
    obj.label44:setField("ChakraTotal");
    obj.label44:setName("label44");

    obj.btnChacra = GUI.fromHandle(_obj_newObject("button"));
    obj.btnChacra:setParent(obj.scrollBox2);
    obj.btnChacra:setName("btnChacra");
    obj.btnChacra:setLeft(280);
    obj.btnChacra:setTop(296);
    obj.btnChacra:setWidth(40);
    obj.btnChacra:setHeight(20);
    obj.btnChacra:setFontColor("Cyan");
    obj.btnChacra:setText("🌀");

    obj.BarraOutros = GUI.fromHandle(_obj_newObject("progressBar"));
    obj.BarraOutros:setParent(obj.scrollBox2);
    obj.BarraOutros:setName("BarraOutros");
    obj.BarraOutros:setLeft(85);
    obj.BarraOutros:setTop(316);
    obj.BarraOutros:setWidth(190);
    obj.BarraOutros:setHeight(19);
    obj.BarraOutros:setColor("Yellow");
    obj.BarraOutros:setPosition(100);
    obj.BarraOutros:setMax(100);

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.scrollBox2);
    obj.label45:setLeft(90);
    obj.label45:setTop(316);
    obj.label45:setWidth(85);
    obj.label45:setHeight(18);
    obj.label45:setHorzTextAlign("center");
    obj.label45:setVisible(false);
    obj.label45:setFontColor("White");
    obj.label45:setField("Outros");
    obj.label45:setName("label45");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.scrollBox2);
    obj.label46:setLeft(90);
    obj.label46:setTop(316);
    obj.label46:setWidth(85);
    obj.label46:setHeight(18);
    obj.label46:setHorzTextAlign("center");
    obj.label46:setFontColor("White");
    obj.label46:setField("OutrosAtual");
    obj.label46:setName("label46");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.scrollBox2);
    obj.label47:setLeft(140);
    obj.label47:setTop(316);
    obj.label47:setWidth(85);
    obj.label47:setHeight(18);
    obj.label47:setHorzTextAlign("center");
    obj.label47:setFontColor("White");
    obj.label47:setText("/");
    obj.label47:setName("label47");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.scrollBox2);
    obj.label48:setLeft(190);
    obj.label48:setTop(316);
    obj.label48:setWidth(85);
    obj.label48:setHeight(18);
    obj.label48:setHorzTextAlign("center");
    obj.label48:setFontColor("White");
    obj.label48:setField("OutrosTotal");
    obj.label48:setName("label48");

    obj.btnOutros = GUI.fromHandle(_obj_newObject("button"));
    obj.btnOutros:setParent(obj.scrollBox2);
    obj.btnOutros:setName("btnOutros");
    obj.btnOutros:setLeft(280);
    obj.btnOutros:setTop(316);
    obj.btnOutros:setWidth(40);
    obj.btnOutros:setHeight(20);
    obj.btnOutros:setFontColor("Yellow");
    obj.btnOutros:setText("⚡");

    obj.cmbTipoOutro = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.cmbTipoOutro:setParent(obj.scrollBox2);
    obj.cmbTipoOutro:setName("cmbTipoOutro");
    obj.cmbTipoOutro:setLeft(320);
    obj.cmbTipoOutro:setTop(316);
    obj.cmbTipoOutro:setWidth(110);
    obj.cmbTipoOutro:setHeight(18);
    obj.cmbTipoOutro:setFontColor("yellow");
    obj.cmbTipoOutro:setField("TipoOutro");
    obj.cmbTipoOutro:setItems({'Chacra', 'Reiatsu', 'Chacra Biju', 'Chacra Branco', 'Chacra Preto', 'Hadou', 'Hadou Negro', 'Chacra Natural', 'Chakra Roxo', 'Outros'});

    obj.BarraEnergia = GUI.fromHandle(_obj_newObject("progressBar"));
    obj.BarraEnergia:setParent(obj.scrollBox2);
    obj.BarraEnergia:setName("BarraEnergia");
    obj.BarraEnergia:setLeft(85);
    obj.BarraEnergia:setTop(336);
    obj.BarraEnergia:setWidth(190);
    obj.BarraEnergia:setHeight(19);
    obj.BarraEnergia:setColor("Green");
    obj.BarraEnergia:setPosition(100);
    obj.BarraEnergia:setMax(100);

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.scrollBox2);
    obj.label49:setLeft(90);
    obj.label49:setTop(336);
    obj.label49:setWidth(85);
    obj.label49:setHeight(18);
    obj.label49:setHorzTextAlign("center");
    obj.label49:setVisible(false);
    obj.label49:setField("Energia");
    obj.label49:setName("label49");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.scrollBox2);
    obj.label50:setLeft(90);
    obj.label50:setTop(336);
    obj.label50:setWidth(85);
    obj.label50:setHeight(18);
    obj.label50:setHorzTextAlign("center");
    obj.label50:setField("EnergiaAtual");
    obj.label50:setName("label50");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.scrollBox2);
    obj.label51:setLeft(140);
    obj.label51:setTop(336);
    obj.label51:setWidth(85);
    obj.label51:setHeight(18);
    obj.label51:setHorzTextAlign("center");
    obj.label51:setFontColor("White");
    obj.label51:setText("/");
    obj.label51:setName("label51");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.scrollBox2);
    obj.label52:setLeft(190);
    obj.label52:setTop(336);
    obj.label52:setWidth(85);
    obj.label52:setHeight(18);
    obj.label52:setHorzTextAlign("center");
    obj.label52:setField("EnergiaTotal");
    obj.label52:setName("label52");

    obj.btnEnergia = GUI.fromHandle(_obj_newObject("button"));
    obj.btnEnergia:setParent(obj.scrollBox2);
    obj.btnEnergia:setName("btnEnergia");
    obj.btnEnergia:setLeft(280);
    obj.btnEnergia:setTop(336);
    obj.btnEnergia:setWidth(40);
    obj.btnEnergia:setHeight(20);
    obj.btnEnergia:setFontColor("Green");
    obj.btnEnergia:setText("🔋");

    obj.edtGM31 = GUI.fromHandle(_obj_newObject("button"));
    obj.edtGM31:setParent(obj.scrollBox2);
    obj.edtGM31:setName("edtGM31");
    obj.edtGM31:setLeft(650);
    obj.edtGM31:setTop(155);
    obj.edtGM31:setWidth(145);
    obj.edtGM31:setHeight(60);
    obj.edtGM31:setVisible(false);

    obj.ControlaTransTotal = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.ControlaTransTotal:setParent(obj.scrollBox2);
    obj.ControlaTransTotal:setName("ControlaTransTotal");
    obj.ControlaTransTotal:setLeft(650);
    obj.ControlaTransTotal:setTop(220);
    obj.ControlaTransTotal:setWidth(200);
    obj.ControlaTransTotal:setText("Ativar Transformação Total");
    obj.ControlaTransTotal:setVisible(false);
    obj.ControlaTransTotal:setField("TransformadoTotal");

    obj.PopTransformationTotal = GUI.fromHandle(_obj_newObject("popup"));
    obj.PopTransformationTotal:setParent(obj.scrollBox2);
    obj.PopTransformationTotal:setName("PopTransformationTotal");
    obj.PopTransformationTotal:setVisible(false);
    obj.PopTransformationTotal:setLeft(1);
    obj.PopTransformationTotal:setTop(10);
    obj.PopTransformationTotal:setWidth(1020);
    obj.PopTransformationTotal:setHeight(580);

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.PopTransformationTotal);
    obj.image9:setLeft(10);
    obj.image9:setTop(10);
    obj.image9:setWidth(1000);
    obj.image9:setHeight(563);
    obj.image9:setSRC("/imagens/8.png");
    obj.image9:setName("image9");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.PopTransformationTotal);
    obj.edit55:setLeft(190);
    obj.edit55:setTop(43);
    obj.edit55:setWidth(100);
    obj.edit55:setHeight(20);
    obj.edit55:setType("number");
    obj.edit55:setEnabled(false);
    obj.edit55:setField("TTaijutsu");
    obj.edit55:setName("edit55");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.PopTransformationTotal);
    obj.edit56:setLeft(190);
    obj.edit56:setTop(72);
    obj.edit56:setWidth(100);
    obj.edit56:setHeight(20);
    obj.edit56:setType("number");
    obj.edit56:setEnabled(false);
    obj.edit56:setField("TNinjutsu");
    obj.edit56:setName("edit56");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.PopTransformationTotal);
    obj.edit57:setLeft(190);
    obj.edit57:setTop(101);
    obj.edit57:setWidth(100);
    obj.edit57:setHeight(20);
    obj.edit57:setType("number");
    obj.edit57:setEnabled(false);
    obj.edit57:setField("TGenjutsu");
    obj.edit57:setName("edit57");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.PopTransformationTotal);
    obj.edit58:setLeft(190);
    obj.edit58:setTop(130);
    obj.edit58:setWidth(100);
    obj.edit58:setHeight(20);
    obj.edit58:setType("number");
    obj.edit58:setEnabled(false);
    obj.edit58:setField("TDA");
    obj.edit58:setName("edit58");

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.PopTransformationTotal);
    obj.edit59:setLeft(190);
    obj.edit59:setTop(159);
    obj.edit59:setWidth(100);
    obj.edit59:setHeight(20);
    obj.edit59:setType("number");
    obj.edit59:setEnabled(false);
    obj.edit59:setField("TElemental");
    obj.edit59:setName("edit59");

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.PopTransformationTotal);
    obj.edit60:setLeft(190);
    obj.edit60:setTop(217);
    obj.edit60:setWidth(100);
    obj.edit60:setHeight(20);
    obj.edit60:setType("number");
    obj.edit60:setEnabled(false);
    obj.edit60:setField("THP");
    obj.edit60:setName("edit60");

    obj.edit61 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.PopTransformationTotal);
    obj.edit61:setLeft(190);
    obj.edit61:setTop(245);
    obj.edit61:setWidth(100);
    obj.edit61:setHeight(20);
    obj.edit61:setType("number");
    obj.edit61:setEnabled(false);
    obj.edit61:setField("TChakra");
    obj.edit61:setName("edit61");

    obj.edit62 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.PopTransformationTotal);
    obj.edit62:setLeft(190);
    obj.edit62:setTop(273);
    obj.edit62:setWidth(100);
    obj.edit62:setHeight(20);
    obj.edit62:setType("number");
    obj.edit62:setEnabled(false);
    obj.edit62:setField("TReiatsu");
    obj.edit62:setName("edit62");

    obj.edit63 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.PopTransformationTotal);
    obj.edit63:setLeft(190);
    obj.edit63:setTop(301);
    obj.edit63:setWidth(100);
    obj.edit63:setHeight(20);
    obj.edit63:setType("number");
    obj.edit63:setEnabled(false);
    obj.edit63:setField("TOutros");
    obj.edit63:setName("edit63");

    obj.edit64 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.PopTransformationTotal);
    obj.edit64:setLeft(190);
    obj.edit64:setTop(329);
    obj.edit64:setWidth(100);
    obj.edit64:setHeight(20);
    obj.edit64:setType("number");
    obj.edit64:setEnabled(false);
    obj.edit64:setField("TEnergia");
    obj.edit64:setName("edit64");

    obj.edit65 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.PopTransformationTotal);
    obj.edit65:setLeft(190);
    obj.edit65:setTop(357);
    obj.edit65:setWidth(100);
    obj.edit65:setHeight(20);
    obj.edit65:setType("number");
    obj.edit65:setEnabled(false);
    obj.edit65:setField("TReducao");
    obj.edit65:setName("edit65");

    obj.edit66 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.PopTransformationTotal);
    obj.edit66:setLeft(820);
    obj.edit66:setTop(43);
    obj.edit66:setWidth(100);
    obj.edit66:setHeight(20);
    obj.edit66:setType("number");
    obj.edit66:setEnabled(false);
    obj.edit66:setField("TATai");
    obj.edit66:setName("edit66");

    obj.edit67 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.PopTransformationTotal);
    obj.edit67:setLeft(820);
    obj.edit67:setTop(72);
    obj.edit67:setWidth(100);
    obj.edit67:setHeight(20);
    obj.edit67:setType("number");
    obj.edit67:setEnabled(false);
    obj.edit67:setField("TANin");
    obj.edit67:setName("edit67");

    obj.edit68 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.PopTransformationTotal);
    obj.edit68:setLeft(820);
    obj.edit68:setTop(101);
    obj.edit68:setWidth(100);
    obj.edit68:setHeight(20);
    obj.edit68:setType("number");
    obj.edit68:setEnabled(false);
    obj.edit68:setField("TAGen");
    obj.edit68:setName("edit68");

    obj.edit69 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.PopTransformationTotal);
    obj.edit69:setLeft(820);
    obj.edit69:setTop(130);
    obj.edit69:setWidth(100);
    obj.edit69:setHeight(20);
    obj.edit69:setType("number");
    obj.edit69:setEnabled(false);
    obj.edit69:setField("TEsquiva");
    obj.edit69:setName("edit69");

    obj.edit70 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.PopTransformationTotal);
    obj.edit70:setLeft(820);
    obj.edit70:setTop(159);
    obj.edit70:setWidth(100);
    obj.edit70:setHeight(20);
    obj.edit70:setType("number");
    obj.edit70:setEnabled(false);
    obj.edit70:setField("TBloqueio");
    obj.edit70:setName("edit70");

    obj.edit71 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit71:setParent(obj.PopTransformationTotal);
    obj.edit71:setLeft(820);
    obj.edit71:setTop(187);
    obj.edit71:setWidth(100);
    obj.edit71:setHeight(20);
    obj.edit71:setType("number");
    obj.edit71:setEnabled(false);
    obj.edit71:setField("TCTai");
    obj.edit71:setName("edit71");

    obj.edit72 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit72:setParent(obj.PopTransformationTotal);
    obj.edit72:setLeft(820);
    obj.edit72:setTop(215);
    obj.edit72:setWidth(100);
    obj.edit72:setHeight(20);
    obj.edit72:setType("number");
    obj.edit72:setEnabled(false);
    obj.edit72:setField("TCNin");
    obj.edit72:setName("edit72");

    obj.edit73 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit73:setParent(obj.PopTransformationTotal);
    obj.edit73:setLeft(820);
    obj.edit73:setTop(243);
    obj.edit73:setWidth(100);
    obj.edit73:setHeight(20);
    obj.edit73:setType("number");
    obj.edit73:setEnabled(false);
    obj.edit73:setField("TCGen");
    obj.edit73:setName("edit73");

    obj.edit74 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit74:setParent(obj.PopTransformationTotal);
    obj.edit74:setLeft(820);
    obj.edit74:setTop(271);
    obj.edit74:setWidth(100);
    obj.edit74:setHeight(20);
    obj.edit74:setType("number");
    obj.edit74:setEnabled(false);
    obj.edit74:setField("TTurnos");
    obj.edit74:setName("edit74");

    obj.button18 = GUI.fromHandle(_obj_newObject("button"));
    obj.button18:setParent(obj.scrollBox2);
    obj.button18:setLeft(490);
    obj.button18:setTop(155);
    obj.button18:setWidth(145);
    obj.button18:setHeight(60);
    obj.button18:setName("button18");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.scrollBox2);
    obj.dataLink21:setFields({'Transformado2', 'Transformado5', 'Transformado4', 'Transformado3'});
    obj.dataLink21:setName("dataLink21");

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

    obj.PopTransformation = GUI.fromHandle(_obj_newObject("popup"));
    obj.PopTransformation:setParent(obj.scrollBox2);
    obj.PopTransformation:setName("PopTransformation");
    obj.PopTransformation:setVisible(false);
    obj.PopTransformation:setLeft(1);
    obj.PopTransformation:setTop(10);
    obj.PopTransformation:setWidth(1020);
    obj.PopTransformation:setHeight(580);

    obj.image10 = GUI.fromHandle(_obj_newObject("image"));
    obj.image10:setParent(obj.PopTransformation);
    obj.image10:setLeft(10);
    obj.image10:setTop(10);
    obj.image10:setWidth(1000);
    obj.image10:setHeight(563);
    obj.image10:setSRC("/imagens/8.png");
    obj.image10:setName("image10");

    obj.edit75 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit75:setParent(obj.PopTransformation);
    obj.edit75:setLeft(190);
    obj.edit75:setTop(43);
    obj.edit75:setWidth(100);
    obj.edit75:setHeight(20);
    obj.edit75:setType("number");
    obj.edit75:setField("TransTaijutsu");
    obj.edit75:setName("edit75");

    obj.edit76 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit76:setParent(obj.PopTransformation);
    obj.edit76:setLeft(190);
    obj.edit76:setTop(72);
    obj.edit76:setWidth(100);
    obj.edit76:setHeight(20);
    obj.edit76:setType("number");
    obj.edit76:setField("TransNinjutsu");
    obj.edit76:setName("edit76");

    obj.edit77 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit77:setParent(obj.PopTransformation);
    obj.edit77:setLeft(190);
    obj.edit77:setTop(101);
    obj.edit77:setWidth(100);
    obj.edit77:setHeight(20);
    obj.edit77:setType("number");
    obj.edit77:setField("TransGenjutsu");
    obj.edit77:setName("edit77");

    obj.edit78 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit78:setParent(obj.PopTransformation);
    obj.edit78:setLeft(190);
    obj.edit78:setTop(130);
    obj.edit78:setWidth(100);
    obj.edit78:setHeight(20);
    obj.edit78:setType("number");
    obj.edit78:setField("TransDA");
    obj.edit78:setName("edit78");

    obj.edit79 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit79:setParent(obj.PopTransformation);
    obj.edit79:setLeft(190);
    obj.edit79:setTop(159);
    obj.edit79:setWidth(100);
    obj.edit79:setHeight(20);
    obj.edit79:setType("number");
    obj.edit79:setField("TransElemental");
    obj.edit79:setName("edit79");

    obj.edit80 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit80:setParent(obj.PopTransformation);
    obj.edit80:setLeft(190);
    obj.edit80:setTop(217);
    obj.edit80:setWidth(100);
    obj.edit80:setHeight(20);
    obj.edit80:setType("number");
    obj.edit80:setField("TransHP");
    obj.edit80:setName("edit80");

    obj.edit81 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit81:setParent(obj.PopTransformation);
    obj.edit81:setLeft(190);
    obj.edit81:setTop(245);
    obj.edit81:setWidth(100);
    obj.edit81:setHeight(20);
    obj.edit81:setType("number");
    obj.edit81:setField("TransChakra");
    obj.edit81:setName("edit81");

    obj.edit82 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit82:setParent(obj.PopTransformation);
    obj.edit82:setLeft(190);
    obj.edit82:setTop(273);
    obj.edit82:setWidth(100);
    obj.edit82:setHeight(20);
    obj.edit82:setType("number");
    obj.edit82:setField("TransReiatsu");
    obj.edit82:setName("edit82");

    obj.edit83 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit83:setParent(obj.PopTransformation);
    obj.edit83:setLeft(190);
    obj.edit83:setTop(301);
    obj.edit83:setWidth(100);
    obj.edit83:setHeight(20);
    obj.edit83:setType("number");
    obj.edit83:setField("TransOutros");
    obj.edit83:setName("edit83");

    obj.edit84 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit84:setParent(obj.PopTransformation);
    obj.edit84:setLeft(190);
    obj.edit84:setTop(329);
    obj.edit84:setWidth(100);
    obj.edit84:setHeight(20);
    obj.edit84:setType("number");
    obj.edit84:setField("TransEnergia");
    obj.edit84:setName("edit84");

    obj.edit85 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit85:setParent(obj.PopTransformation);
    obj.edit85:setLeft(190);
    obj.edit85:setTop(357);
    obj.edit85:setWidth(100);
    obj.edit85:setHeight(20);
    obj.edit85:setType("number");
    obj.edit85:setField("TransReducao");
    obj.edit85:setName("edit85");

    obj.edit86 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit86:setParent(obj.PopTransformation);
    obj.edit86:setLeft(820);
    obj.edit86:setTop(43);
    obj.edit86:setWidth(100);
    obj.edit86:setHeight(20);
    obj.edit86:setType("number");
    obj.edit86:setField("TransATai");
    obj.edit86:setName("edit86");

    obj.edit87 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit87:setParent(obj.PopTransformation);
    obj.edit87:setLeft(820);
    obj.edit87:setTop(72);
    obj.edit87:setWidth(100);
    obj.edit87:setHeight(20);
    obj.edit87:setType("number");
    obj.edit87:setField("TransANin");
    obj.edit87:setName("edit87");

    obj.edit88 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit88:setParent(obj.PopTransformation);
    obj.edit88:setLeft(820);
    obj.edit88:setTop(101);
    obj.edit88:setWidth(100);
    obj.edit88:setHeight(20);
    obj.edit88:setType("number");
    obj.edit88:setField("TransAGen");
    obj.edit88:setName("edit88");

    obj.edit89 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit89:setParent(obj.PopTransformation);
    obj.edit89:setLeft(820);
    obj.edit89:setTop(130);
    obj.edit89:setWidth(100);
    obj.edit89:setHeight(20);
    obj.edit89:setType("number");
    obj.edit89:setField("TransEsquiva");
    obj.edit89:setName("edit89");

    obj.edit90 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit90:setParent(obj.PopTransformation);
    obj.edit90:setLeft(820);
    obj.edit90:setTop(159);
    obj.edit90:setWidth(100);
    obj.edit90:setHeight(20);
    obj.edit90:setType("number");
    obj.edit90:setField("TransBloqueio");
    obj.edit90:setName("edit90");

    obj.edit91 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit91:setParent(obj.PopTransformation);
    obj.edit91:setLeft(820);
    obj.edit91:setTop(187);
    obj.edit91:setWidth(100);
    obj.edit91:setHeight(20);
    obj.edit91:setType("number");
    obj.edit91:setField("TransCTai");
    obj.edit91:setName("edit91");

    obj.edit92 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit92:setParent(obj.PopTransformation);
    obj.edit92:setLeft(820);
    obj.edit92:setTop(215);
    obj.edit92:setWidth(100);
    obj.edit92:setHeight(20);
    obj.edit92:setType("number");
    obj.edit92:setField("TransCNin");
    obj.edit92:setName("edit92");

    obj.edit93 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit93:setParent(obj.PopTransformation);
    obj.edit93:setLeft(820);
    obj.edit93:setTop(243);
    obj.edit93:setWidth(100);
    obj.edit93:setHeight(20);
    obj.edit93:setType("number");
    obj.edit93:setField("TransCGen");
    obj.edit93:setName("edit93");

    obj.edit94 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit94:setParent(obj.PopTransformation);
    obj.edit94:setLeft(820);
    obj.edit94:setTop(271);
    obj.edit94:setWidth(100);
    obj.edit94:setHeight(20);
    obj.edit94:setType("number");
    obj.edit94:setField("TransTurnos");
    obj.edit94:setName("edit94");

    obj.ControlaTrans = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.ControlaTrans:setParent(obj.scrollBox2);
    obj.ControlaTrans:setName("ControlaTrans");
    obj.ControlaTrans:setLeft(490);
    obj.ControlaTrans:setTop(220);
    obj.ControlaTrans:setText("Ativar Transformação");
    obj.ControlaTrans:setField("Transformado2");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.scrollBox2);
    obj.dataLink22:setFields({'TransTaijutsu', 'TransNinjutsu' , 'TransGenjutsu', 'TransDA', 'TransElemental', 'TransHP', 'TransChakra', 
				'TransReiatsu', 'TransOutros', 'TransEnergia', 'TransReducao', 'TransATai', 'TransANin', 'TransAGen', 'TransEsquiva', 'TransBloqueio', 'TransCTai',
				'TransCNin', 'TransCGen', 'TransTurnos', 'Transformado2'});
    obj.dataLink22:setName("dataLink22");

    obj.MsgMesaEnvia = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.MsgMesaEnvia:setParent(obj.scrollBox2);
    obj.MsgMesaEnvia:setName("MsgMesaEnvia");
    obj.MsgMesaEnvia:setLeft(373);
    obj.MsgMesaEnvia:setTop(465);
    obj.MsgMesaEnvia:setWidth(260);
    obj.MsgMesaEnvia:setHeight(80);
    obj.MsgMesaEnvia:setVisible(true);
    obj.MsgMesaEnvia:setField("MSGParaMesa");

    obj.radioButton1 = GUI.fromHandle(_obj_newObject("radioButton"));
    obj.radioButton1:setParent(obj.scrollBox2);
    obj.radioButton1:setText("Normal");
    obj.radioButton1:setGroupName("GPRadio");
    obj.radioButton1:setField("FotoMSG");
    obj.radioButton1:setFieldValue("FMSGNormal");
    obj.radioButton1:setTop(443);
    obj.radioButton1:setLeft(370);
    obj.radioButton1:setName("radioButton1");

    obj.radioButton2 = GUI.fromHandle(_obj_newObject("radioButton"));
    obj.radioButton2:setParent(obj.scrollBox2);
    obj.radioButton2:setText("Feliz");
    obj.radioButton2:setGroupName("GPRadio");
    obj.radioButton2:setField("FotoMSG");
    obj.radioButton2:setFieldValue("FMSGFeliz");
    obj.radioButton2:setTop(443);
    obj.radioButton2:setLeft(438);
    obj.radioButton2:setName("radioButton2");

    obj.radioButton3 = GUI.fromHandle(_obj_newObject("radioButton"));
    obj.radioButton3:setParent(obj.scrollBox2);
    obj.radioButton3:setText("Bravo");
    obj.radioButton3:setGroupName("GPRadio");
    obj.radioButton3:setField("FotoMSG");
    obj.radioButton3:setFieldValue("FMSGBravo");
    obj.radioButton3:setTop(443);
    obj.radioButton3:setLeft(500);
    obj.radioButton3:setName("radioButton3");

    obj.radioButton4 = GUI.fromHandle(_obj_newObject("radioButton"));
    obj.radioButton4:setParent(obj.scrollBox2);
    obj.radioButton4:setText("Triste");
    obj.radioButton4:setGroupName("GPRadio");
    obj.radioButton4:setField("FotoMSG");
    obj.radioButton4:setFieldValue("FMSGTriste");
    obj.radioButton4:setTop(443);
    obj.radioButton4:setLeft(560);
    obj.radioButton4:setName("radioButton4");

    obj.image11 = GUI.fromHandle(_obj_newObject("image"));
    obj.image11:setParent(obj.scrollBox2);
    obj.image11:setLeft(375);
    obj.image11:setTop(398);
    obj.image11:setWidth(60);
    obj.image11:setHeight(42);
    obj.image11:setEditable(true);
    obj.image11:setStyle("autoFit");
    obj.image11:setField("FotoNormal");
    obj.image11:setName("image11");

    obj.image12 = GUI.fromHandle(_obj_newObject("image"));
    obj.image12:setParent(obj.scrollBox2);
    obj.image12:setLeft(438);
    obj.image12:setTop(398);
    obj.image12:setWidth(60);
    obj.image12:setHeight(42);
    obj.image12:setEditable(true);
    obj.image12:setStyle("autoFit");
    obj.image12:setField("FotoFeliz");
    obj.image12:setName("image12");

    obj.image13 = GUI.fromHandle(_obj_newObject("image"));
    obj.image13:setParent(obj.scrollBox2);
    obj.image13:setLeft(501);
    obj.image13:setTop(398);
    obj.image13:setWidth(60);
    obj.image13:setHeight(42);
    obj.image13:setEditable(true);
    obj.image13:setStyle("autoFit");
    obj.image13:setField("FotoBravo");
    obj.image13:setName("image13");

    obj.image14 = GUI.fromHandle(_obj_newObject("image"));
    obj.image14:setParent(obj.scrollBox2);
    obj.image14:setLeft(564);
    obj.image14:setTop(398);
    obj.image14:setWidth(60);
    obj.image14:setHeight(42);
    obj.image14:setEditable(true);
    obj.image14:setStyle("autoFit");
    obj.image14:setField("FotoTriste");
    obj.image14:setName("image14");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.scrollBox2);
    obj.dataLink23:setField("FotoMSG");
    obj.dataLink23:setName("dataLink23");

    obj.edit95 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit95:setParent(obj.scrollBox2);
    obj.edit95:setLeft(443);
    obj.edit95:setTop(556);
    obj.edit95:setWidth(85);
    obj.edit95:setHeight(18);
    obj.edit95:setVisible(false);
    obj.edit95:setField("FotoMSG");
    obj.edit95:setName("edit95");

    obj.button19 = GUI.fromHandle(_obj_newObject("button"));
    obj.button19:setParent(obj.scrollBox2);
    obj.button19:setLeft(635);
    obj.button19:setTop(475);
    obj.button19:setScale(3.0);
    obj.button19:setWidth(25);
    obj.button19:setHeight(20);
    obj.button19:setOpacity(1.0);
    obj.button19:setVisible(true);
    obj.button19:setText("💬");
    obj.button19:setName("button19");

    obj.image15 = GUI.fromHandle(_obj_newObject("image"));
    obj.image15:setParent(obj.scrollBox2);
    obj.image15:setLeft(650);
    obj.image15:setTop(550);
    obj.image15:setWidth(146);
    obj.image15:setHeight(116);
    obj.image15:setEditable(false);
    lfm_setPropAsString(obj.image15, "animate",  "true");
    obj.image15:setSRC("https://i.pinimg.com/originals/c7/44/c5/c744c5d661e383b57db574a2a3f4d216.gif");
    obj.image15:setName("image15");

    obj.image16 = GUI.fromHandle(_obj_newObject("image"));
    obj.image16:setParent(obj.scrollBox2);
    obj.image16:setLeft(615);
    obj.image16:setTop(510);
    obj.image16:setWidth(215);
    obj.image16:setHeight(200);
    obj.image16:setEditable(false);
    obj.image16:setSRC("/imagens/board.png");
    obj.image16:setName("image16");

    obj.edtGM20 = GUI.fromHandle(_obj_newObject("button"));
    obj.edtGM20:setParent(obj.scrollBox2);
    obj.edtGM20:setName("edtGM20");
    obj.edtGM20:setLeft(600);
    obj.edtGM20:setTop(270);
    obj.edtGM20:setWidth(105);
    obj.edtGM20:setHeight(85);
    obj.edtGM20:setOpacity(1.0);
    obj.edtGM20:setVisible(false);
    obj.edtGM20:setText("Calculo");

    obj.POPCALCULO = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPCALCULO:setParent(obj.scrollBox2);
    obj.POPCALCULO:setName("POPCALCULO");
    obj.POPCALCULO:setVisible(false);
    obj.POPCALCULO:setLeft(1);
    obj.POPCALCULO:setTop(40);
    obj.POPCALCULO:setWidth(820);
    obj.POPCALCULO:setHeight(620);

    obj.image17 = GUI.fromHandle(_obj_newObject("image"));
    obj.image17:setParent(obj.POPCALCULO);
    obj.image17:setLeft(10);
    obj.image17:setTop(10);
    obj.image17:setWidth(800);
    obj.image17:setHeight(600);
    obj.image17:setSRC("/imagens/CALCULO.png");
    obj.image17:setName("image17");

    obj.edit96 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit96:setParent(obj.POPCALCULO);
    obj.edit96:setLeft(150);
    obj.edit96:setTop(35);
    obj.edit96:setWidth(85);
    obj.edit96:setHeight(18);
    obj.edit96:setEnabled(false);
    obj.edit96:setType("float");
    obj.edit96:setField("CTai");
    obj.edit96:setName("edit96");

    obj.edit97 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit97:setParent(obj.POPCALCULO);
    obj.edit97:setLeft(150);
    obj.edit97:setTop(58);
    obj.edit97:setWidth(85);
    obj.edit97:setHeight(18);
    obj.edit97:setEnabled(false);
    obj.edit97:setType("float");
    obj.edit97:setField("CNin");
    obj.edit97:setName("edit97");

    obj.edit98 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit98:setParent(obj.POPCALCULO);
    obj.edit98:setLeft(150);
    obj.edit98:setTop(81);
    obj.edit98:setWidth(85);
    obj.edit98:setHeight(18);
    obj.edit98:setEnabled(false);
    obj.edit98:setType("float");
    obj.edit98:setField("CGen");
    obj.edit98:setName("edit98");

    obj.edit99 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit99:setParent(obj.POPCALCULO);
    obj.edit99:setLeft(150);
    obj.edit99:setTop(102);
    obj.edit99:setWidth(85);
    obj.edit99:setHeight(18);
    obj.edit99:setEnabled(false);
    obj.edit99:setType("float");
    obj.edit99:setField("CDA");
    obj.edit99:setName("edit99");

    obj.edit100 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit100:setParent(obj.POPCALCULO);
    obj.edit100:setLeft(150);
    obj.edit100:setTop(122);
    obj.edit100:setWidth(85);
    obj.edit100:setHeight(18);
    obj.edit100:setEnabled(false);
    obj.edit100:setType("float");
    obj.edit100:setField("CDE");
    obj.edit100:setName("edit100");

    obj.edit101 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit101:setParent(obj.POPCALCULO);
    obj.edit101:setLeft(150);
    obj.edit101:setTop(145);
    obj.edit101:setWidth(85);
    obj.edit101:setHeight(18);
    obj.edit101:setEnabled(false);
    obj.edit101:setType("float");
    obj.edit101:setField("CHP");
    obj.edit101:setName("edit101");

    obj.edit102 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit102:setParent(obj.POPCALCULO);
    obj.edit102:setLeft(150);
    obj.edit102:setTop(168);
    obj.edit102:setWidth(85);
    obj.edit102:setHeight(18);
    obj.edit102:setEnabled(false);
    obj.edit102:setType("float");
    obj.edit102:setField("CChakra");
    obj.edit102:setName("edit102");

    obj.edit103 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit103:setParent(obj.POPCALCULO);
    obj.edit103:setLeft(310);
    obj.edit103:setTop(210);
    obj.edit103:setWidth(85);
    obj.edit103:setHeight(18);
    obj.edit103:setEnabled(false);
    obj.edit103:setType("float");
    obj.edit103:setField("CReducao");
    obj.edit103:setName("edit103");

    obj.edit104 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit104:setParent(obj.POPCALCULO);
    obj.edit104:setLeft(350);
    obj.edit104:setTop(253);
    obj.edit104:setWidth(85);
    obj.edit104:setHeight(18);
    obj.edit104:setEnabled(false);
    obj.edit104:setType("float");
    obj.edit104:setField("CAtletismo");
    obj.edit104:setName("edit104");

    obj.edit105 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit105:setParent(obj.POPCALCULO);
    obj.edit105:setLeft(350);
    obj.edit105:setTop(274);
    obj.edit105:setWidth(85);
    obj.edit105:setHeight(18);
    obj.edit105:setEnabled(false);
    obj.edit105:setType("float");
    obj.edit105:setField("CRaciocineo");
    obj.edit105:setName("edit105");

    obj.edit106 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit106:setParent(obj.POPCALCULO);
    obj.edit106:setLeft(350);
    obj.edit106:setTop(295);
    obj.edit106:setWidth(85);
    obj.edit106:setHeight(18);
    obj.edit106:setEnabled(false);
    obj.edit106:setType("float");
    obj.edit106:setField("CPercepcao");
    obj.edit106:setName("edit106");

    obj.edit107 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit107:setParent(obj.POPCALCULO);
    obj.edit107:setLeft(350);
    obj.edit107:setTop(316);
    obj.edit107:setWidth(85);
    obj.edit107:setHeight(18);
    obj.edit107:setEnabled(false);
    obj.edit107:setType("float");
    obj.edit107:setField("CFurtividade");
    obj.edit107:setName("edit107");

    obj.edit108 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit108:setParent(obj.POPCALCULO);
    obj.edit108:setLeft(350);
    obj.edit108:setTop(337);
    obj.edit108:setWidth(85);
    obj.edit108:setHeight(18);
    obj.edit108:setEnabled(false);
    obj.edit108:setType("float");
    obj.edit108:setField("CVigor");
    obj.edit108:setName("edit108");

    obj.edit109 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit109:setParent(obj.POPCALCULO);
    obj.edit109:setLeft(280);
    obj.edit109:setTop(35);
    obj.edit109:setWidth(85);
    obj.edit109:setHeight(18);
    obj.edit109:setEnabled(false);
    obj.edit109:setType("float");
    obj.edit109:setField("Taijutsu");
    obj.edit109:setName("edit109");

    obj.edit110 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit110:setParent(obj.POPCALCULO);
    obj.edit110:setLeft(280);
    obj.edit110:setTop(58);
    obj.edit110:setWidth(85);
    obj.edit110:setHeight(18);
    obj.edit110:setEnabled(false);
    obj.edit110:setType("float");
    obj.edit110:setField("Ninjutsu");
    obj.edit110:setName("edit110");

    obj.edit111 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit111:setParent(obj.POPCALCULO);
    obj.edit111:setLeft(280);
    obj.edit111:setTop(81);
    obj.edit111:setWidth(85);
    obj.edit111:setHeight(18);
    obj.edit111:setEnabled(false);
    obj.edit111:setType("float");
    obj.edit111:setField("Genjutsu");
    obj.edit111:setName("edit111");

    obj.edit112 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit112:setParent(obj.POPCALCULO);
    obj.edit112:setLeft(280);
    obj.edit112:setTop(102);
    obj.edit112:setWidth(85);
    obj.edit112:setHeight(18);
    obj.edit112:setEnabled(false);
    obj.edit112:setType("float");
    obj.edit112:setField("DanoArmado");
    obj.edit112:setName("edit112");

    obj.edit113 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit113:setParent(obj.POPCALCULO);
    obj.edit113:setLeft(280);
    obj.edit113:setTop(122);
    obj.edit113:setWidth(85);
    obj.edit113:setHeight(18);
    obj.edit113:setEnabled(false);
    obj.edit113:setType("float");
    obj.edit113:setField("Elemental1");
    obj.edit113:setName("edit113");

    obj.edit114 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit114:setParent(obj.POPCALCULO);
    obj.edit114:setLeft(300);
    obj.edit114:setTop(145);
    obj.edit114:setWidth(85);
    obj.edit114:setHeight(18);
    obj.edit114:setType("float");
    obj.edit114:setEnabled(true);
    obj.edit114:setField("GHP");
    obj.edit114:setName("edit114");

    obj.edit115 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit115:setParent(obj.POPCALCULO);
    obj.edit115:setLeft(300);
    obj.edit115:setTop(168);
    obj.edit115:setWidth(85);
    obj.edit115:setHeight(18);
    obj.edit115:setEnabled(false);
    obj.edit115:setType("float");
    obj.edit115:setField("GChakra");
    obj.edit115:setName("edit115");

    obj.edit116 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit116:setParent(obj.POPCALCULO);
    obj.edit116:setLeft(150);
    obj.edit116:setTop(210);
    obj.edit116:setWidth(85);
    obj.edit116:setHeight(18);
    obj.edit116:setEnabled(false);
    obj.edit116:setType("float");
    obj.edit116:setField("CAT");
    obj.edit116:setName("edit116");

    obj.edit117 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit117:setParent(obj.POPCALCULO);
    obj.edit117:setLeft(150);
    obj.edit117:setTop(230);
    obj.edit117:setWidth(85);
    obj.edit117:setHeight(18);
    obj.edit117:setEnabled(false);
    obj.edit117:setType("float");
    obj.edit117:setField("CAN");
    obj.edit117:setName("edit117");

    obj.edit118 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit118:setParent(obj.POPCALCULO);
    obj.edit118:setLeft(150);
    obj.edit118:setTop(250);
    obj.edit118:setWidth(85);
    obj.edit118:setHeight(18);
    obj.edit118:setEnabled(false);
    obj.edit118:setType("float");
    obj.edit118:setField("CAG");
    obj.edit118:setName("edit118");

    obj.edit119 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit119:setParent(obj.POPCALCULO);
    obj.edit119:setLeft(150);
    obj.edit119:setTop(300);
    obj.edit119:setWidth(85);
    obj.edit119:setHeight(18);
    obj.edit119:setEnabled(false);
    obj.edit119:setType("float");
    obj.edit119:setField("CEsq");
    obj.edit119:setName("edit119");

    obj.edit120 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit120:setParent(obj.POPCALCULO);
    obj.edit120:setLeft(150);
    obj.edit120:setTop(320);
    obj.edit120:setWidth(85);
    obj.edit120:setHeight(18);
    obj.edit120:setEnabled(false);
    obj.edit120:setType("float");
    obj.edit120:setField("CBloq");
    obj.edit120:setName("edit120");

    obj.edit121 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit121:setParent(obj.POPCALCULO);
    obj.edit121:setLeft(150);
    obj.edit121:setTop(360);
    obj.edit121:setWidth(85);
    obj.edit121:setHeight(18);
    obj.edit121:setEnabled(false);
    obj.edit121:setType("float");
    obj.edit121:setField("CCRT");
    obj.edit121:setName("edit121");

    obj.edit122 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit122:setParent(obj.POPCALCULO);
    obj.edit122:setLeft(150);
    obj.edit122:setTop(380);
    obj.edit122:setWidth(85);
    obj.edit122:setHeight(18);
    obj.edit122:setEnabled(false);
    obj.edit122:setType("float");
    obj.edit122:setField("CCRN");
    obj.edit122:setName("edit122");

    obj.edit123 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit123:setParent(obj.POPCALCULO);
    obj.edit123:setLeft(150);
    obj.edit123:setTop(400);
    obj.edit123:setWidth(85);
    obj.edit123:setHeight(18);
    obj.edit123:setEnabled(false);
    obj.edit123:setType("float");
    obj.edit123:setField("CCRG");
    obj.edit123:setName("edit123");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.POPCALCULO);
    obj.dataLink24:setFields({'Level', 'Exp'});
    obj.dataLink24:setName("dataLink24");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.POPCALCULO);
    obj.dataLink25:setField("ExpPTreino");
    obj.dataLink25:setName("dataLink25");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.POPCALCULO);
    obj.dataLink26:setFields({'BandanaReducao', 'ColeteReducao', 'TReducao', 'CReducao', 'DReducao', 'Transformado', 'Transformado1', 'Transformado2', 'Transformado3', 'Transformado4', 'Transformado5', 'TransformadoTotal'});
    obj.dataLink26:setName("dataLink26");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj.POPCALCULO);
    obj.dataLink27:setFields({'Forca', 'Inteligencia', 'Sabedoria', 'Elemental', 'Habilidade', 'Resistencia', 'TaiTotal', 'NinTotal', 'GenTotal', 'EleTotal', 'DATotal', 'Level', 
					'ArmaDT', 'ArmaDN', 'ArmaDG', 'ArmaDE', 'ArmaDA', 'AcessorioDT', 'AcessorioDN', 'AcessorioDG', 'AcessorioDE', 'DTaijutsu', 'DNinjutsu', 'DGenjutsu', 'DDA', 'DDE', 'GraduacaoTreino'
					,'Nome', 'Elemento', 'Cla', 'Idade', 'HP', 'HPTotal', 'Chakra' ,'ChakraTotal', 'Reiatsu', 'ReiatsuTotal', 'Outros', 'OutrosTotal', 'DanoJutsu', 'DanoJutsu2', 'DanoJutsu3', 
					'Intensidade', 'Intensidade2','Intensidade3' ,'CustoJutsu' ,'CustoJutsu2' ,'CustoJutsu3' ,'LevelJutsu' ,'LevelJutsu2' ,'LevelJutsu3' ,'DanoKunai' ,'DanoShuriken' ,'DanoKunaiGigante' ,'DanoShurikenFuuma' ,'Marionete'
					,'PB' ,'GinsoExplosivo' ,'Veneno' ,'Bandagem' ,'BF','DTaijutsu','DNinjutsu','DGenjutsu','DDA','DDE','DHP','DChakra','DReiatsu','DOutro','DAcertoTai','DAcertoNin','DAcertoGen','DBloqueio','DCriticalTai','DCriticalNin','DCriticalGen'
					,'ChakraBiju','ChakraBranco','ChakraPreto','Hadou','HadouNegro','ChakraNatural','ChakraRoxo','IntensidadeP1','IntensidadeP2','IntensidadeP3','CustoPerga1','CustoPerga2','CustoPerga3','DEDC'
					,'Taijutsu','Ninjutsu','Genjutsu','DanoArmado','Elemental1','TipoOutro','TipoItens','Tipo','Tipo2','Tipo3'});
    obj.dataLink27:setName("dataLink27");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj.POPCALCULO);
    obj.dataLink28:setFields({'GraduacaoTreino', 'AcertoTaiTotal', 'AcertoNinTotal', 'AcertoGenTotal', 'EsquivaTotal','BloqueioTotal', 'TurnoTotal', 'CRTaiTotal',
					'CRNinTotal', 'CRGenTotal', 'GAcertoTai', 'GAcertoNin', 'GAcertoGen', 'GEsquiva', 'GBloqueio', 'GCRTai', 'GCRNin', 'GCRGen', 'GTurno'});
    obj.dataLink28:setName("dataLink28");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj.POPCALCULO);
    obj.dataLink29:setFields({'Forca', 'Inteligencia', 'Sabedoria', 'Elemental', 'Habilidade', 'Resistencia', 'TaiTotal', 'NinTotal', 'GenTotal', 'EleTotal', 'DATotal', 'Level', 
					'ArmaDT', 'ArmaDN', 'ArmaDG', 'ArmaDE', 'ArmaDA', 'AcessorioDT', 'AcessorioDN', 'AcessorioDG', 'AcessorioDE', 'DTaijutsu', 'DNinjutsu', 'DGenjutsu', 'DDA', 'DDE', 'GraduacaoTreino'});
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj.POPCALCULO);
    obj.dataLink30:setFields({'Forca', 'Inteligencia', 'Sabedoria', 'Elemental', 'Habilidade', 'Resistencia', 'Level', 'Taijutsu', 'Ninjutsu', 'Genjutsu', 'Elemental1', 'DanoArmado',
					'ArmaDT', 'ArmaDN', 'ArmaDG', 'ArmaDE', 'ArmaDA', 'AcessorioDT', 'AcessorioDN', 'AcessorioDG', 'AcessorioDE', 'DTaijutsu', 'DNinjutsu', 'DGenjutsu', 'DDA', 'DDE', 'GraduacaoTreino', 'Transformado', 'Transformado1', 'Transformado2', 'Transformado3', 'Transformado4', 'Transformado5', 'TransformadoTotal', 'Cla'});
    obj.dataLink30:setName("dataLink30");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj.POPCALCULO);
    obj.dataLink31:setFields({'Chakra', 'ChakraTotal', 'ArmaHP','ArmaChakra', 'BandanaChakra', 'Resistencia', 
					'BandanaHP', 'ColeteChakra', 'ColeteHP', 'AcessorioChakra', 'AcessorioHP', 'DHP', 'DChakra', 'CHP', 'GHP', 'Transformado',
					'Transformado1', 'Transformado2', 'Transformado3', 'Transformado4', 'Transformado5', 'TransformadoTotal'});
    obj.dataLink31:setName("dataLink31");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj.POPCALCULO);
    obj.dataLink32:setFields({'HP', 'Chakra', 'ChakraTotal', 'ArmaHP','ArmaChakra', 'BandanaChakra',
					'BandanaHP', 'ColeteChakra', 'ColeteHP', 'AcessorioChakra', 'AcessorioHP', 'DHP', 'DChakra', 'CChakra', 'GChakra', 'Idade', 
					'Transformado', 'Transformado1', 'Transformado2', 'Transformado3', 'Transformado4', 'Transformado5', 'TransformadoTotal'});
    obj.dataLink32:setName("dataLink32");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj.POPCALCULO);
    obj.dataLink33:setFields({'TaiTotal', 'NinTotal', 'GenTotal', 'DATotal','EleTotal', 'Level',
					'DReiatsu', 'AcessorioReiatsu', 'Transformado', 'Transformado1', 'Transformado2', 'Transformado3', 'Transformado4', 'Transformado5', 'TransformadoTotal', 'ArmaReiatsu'});
    obj.dataLink33:setName("dataLink33");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj.POPCALCULO);
    obj.dataLink34:setFields({'Level', 'DEnergia', 'Energia', 'Transformado', 'Transformado1', 'Transformado2', 'Transformado3', 'Transformado4', 'Transformado5', 'TransformadoTotal', 'TEnergia', 'TIEnergia', 'AcessorioEnergia'});
    obj.dataLink34:setName("dataLink34");

    obj.button20 = GUI.fromHandle(_obj_newObject("button"));
    obj.button20:setParent(obj.scrollBox2);
    obj.button20:setLeft(32);
    obj.button20:setTop(550);
    obj.button20:setWidth(105);
    obj.button20:setHeight(85);
    obj.button20:setOpacity(0.1);
    obj.button20:setText("");
    obj.button20:setName("button20");

    obj.POPKunai = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPKunai:setParent(obj.scrollBox2);
    obj.POPKunai:setName("POPKunai");
    obj.POPKunai:setVisible(false);
    obj.POPKunai:setLeft(1);
    obj.POPKunai:setTop(40);
    obj.POPKunai:setWidth(550);
    obj.POPKunai:setHeight(550);

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.POPKunai);
    obj.label53:setWidth(120);
    obj.label53:setHeight(40);
    obj.label53:setLeft(280);
    obj.label53:setTop(10);
    obj.label53:setFontColor("Red");
    obj.label53:setFontFamily("Nyala");
    obj.label53:setFontSize(20);
    obj.label53:setText("Danos");
    obj.label53:setName("label53");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.POPKunai);
    obj.label54:setWidth(120);
    obj.label54:setHeight(40);
    obj.label54:setLeft(420);
    obj.label54:setTop(10);
    obj.label54:setFontColor("Red");
    obj.label54:setFontFamily("Nyala");
    obj.label54:setFontSize(20);
    obj.label54:setText("Quantia/Limite");
    obj.label54:setName("label54");

    obj.image18 = GUI.fromHandle(_obj_newObject("image"));
    obj.image18:setParent(obj.POPKunai);
    obj.image18:setLeft(10);
    obj.image18:setTop(30);
    obj.image18:setWidth(100);
    obj.image18:setHeight(130);
    obj.image18:setSRC("/imagens/kunai.png");
    obj.image18:setName("image18");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.POPKunai);
    obj.label55:setWidth(120);
    obj.label55:setHeight(40);
    obj.label55:setLeft(130);
    obj.label55:setTop(60);
    obj.label55:setFontFamily("Nyala");
    obj.label55:setFontSize(20);
    obj.label55:setText("Dano Kunai");
    obj.label55:setName("label55");

    obj.edit124 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit124:setParent(obj.POPKunai);
    obj.edit124:setWidth(100);
    obj.edit124:setHeight(30);
    obj.edit124:setLeft(260);
    obj.edit124:setTop(65);
    obj.edit124:setEnabled(false);
    obj.edit124:setField("DanoKunai");
    obj.edit124:setName("edit124");

    obj.button21 = GUI.fromHandle(_obj_newObject("button"));
    obj.button21:setParent(obj.POPKunai);
    obj.button21:setLeft(8);
    obj.button21:setTop(40);
    obj.button21:setWidth(100);
    obj.button21:setHeight(90);
    obj.button21:setOpacity(0.3);
    obj.button21:setName("button21");


						local function UseKunai()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.AcertoTaiTotal = tonumber(sheet.AcertoTaiTotal or 0);  
							if sheet.KunaiQT > 0 then
								mesaDoPersonagem.chat:rolarDados("1d100 ","[§K3]Uso de Kunai no Alvo",
								function (rolado)								
									if sheet.AcertoTaiTotal >= rolado.resultado then
										sheet.KunaiQT = tonumber(sheet.KunaiQT or 0) - 1;
										mesaDoPersonagem.chat:enviarMensagem("[§I https://uploads.spiritfanfiction.com/fanfics/capitulos/202005/azuki-hashi-o-ninja-reencarnado-19473036-310520200131.gif]");
										mesaDoPersonagem.chat:enviarMensagem("[§K3]A Kunai acerta o Alvo Causando[§K4] " .. (sheet.DanoKunai) .. " DE DANO[§K3] restam apenas [§K14][" .. (sheet.KunaiQT) ..  "][§K3] Kunais na Bag");
									else
										mesaDoPersonagem.chat:enviarMensagem("[§K4]O Oponente esquivou da Kunai");
									end;								
								end); 
							else
								mesaDoPersonagem.chat:enviarMensagem("[§K4]VOCE ESTA SEM KUNAI [§I https://pbs.twimg.com/profile_images/1050841400407982082/BZRxaqpV_400x400.jpg]");
							end;
						end; 	   
					


    obj.image19 = GUI.fromHandle(_obj_newObject("image"));
    obj.image19:setParent(obj.POPKunai);
    obj.image19:setLeft(10);
    obj.image19:setTop(130);
    obj.image19:setWidth(100);
    obj.image19:setHeight(100);
    obj.image19:setSRC("/imagens/shuriken.png");
    obj.image19:setName("image19");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.POPKunai);
    obj.label56:setWidth(120);
    obj.label56:setHeight(40);
    obj.label56:setLeft(130);
    obj.label56:setTop(150);
    obj.label56:setFontFamily("Nyala");
    obj.label56:setFontSize(20);
    obj.label56:setText("Dano Shuriken");
    obj.label56:setName("label56");

    obj.edit125 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit125:setParent(obj.POPKunai);
    obj.edit125:setWidth(100);
    obj.edit125:setHeight(30);
    obj.edit125:setLeft(260);
    obj.edit125:setTop(155);
    obj.edit125:setEnabled(false);
    obj.edit125:setField("DanoShuriken");
    obj.edit125:setName("edit125");

    obj.button22 = GUI.fromHandle(_obj_newObject("button"));
    obj.button22:setParent(obj.POPKunai);
    obj.button22:setLeft(8);
    obj.button22:setTop(135);
    obj.button22:setWidth(100);
    obj.button22:setHeight(90);
    obj.button22:setOpacity(0.3);
    obj.button22:setName("button22");


						local function UseShuriken()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.AcertoTaiTotal = tonumber(sheet.AcertoTaiTotal or 0);  
							if sheet.ShurikenQT > 0 then
								mesaDoPersonagem.chat:rolarDados("1d100 ","[§K3]Uso de Shuriken no Alvo",
								function (rolado)								
									if sheet.AcertoTaiTotal >= rolado.resultado then
										sheet.ShurikenQT = tonumber(sheet.ShurikenQT or 0) - 1;
										mesaDoPersonagem.chat:enviarMensagem("[§I https://operator-front-static-cdn.winamax.fr/img/editorial/2019/03/05/shuriken.gif]");
										mesaDoPersonagem.chat:enviarMensagem("[§K3]A Shuriken acerta o Alvo Causando[§K4] " .. (sheet.DanoShuriken) .. " DE DANO[§K3] restam apenas [§K14][" .. (sheet.ShurikenQT) ..  "][§K3] Shuriken na Bag");
									else
										mesaDoPersonagem.chat:enviarMensagem("[§K4]O Oponente esquivou da Shuriken");
									end;								
								end); 
							else
								mesaDoPersonagem.chat:enviarMensagem("[§K4]VOCE ESTA SEM SHURIKEN [§I https://pbs.twimg.com/profile_images/1050841400407982082/BZRxaqpV_400x400.jpg]");
							end;
						end; 	   
					


    obj.image20 = GUI.fromHandle(_obj_newObject("image"));
    obj.image20:setParent(obj.POPKunai);
    obj.image20:setLeft(10);
    obj.image20:setTop(230);
    obj.image20:setWidth(100);
    obj.image20:setHeight(100);
    obj.image20:setSRC("/imagens/SFuuma.png");
    obj.image20:setName("image20");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.POPKunai);
    obj.label57:setWidth(120);
    obj.label57:setHeight(40);
    obj.label57:setLeft(130);
    obj.label57:setTop(250);
    obj.label57:setFontFamily("Nyala");
    obj.label57:setFontSize(20);
    obj.label57:setText("Shuriken Fuuma");
    obj.label57:setName("label57");

    obj.edit126 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit126:setParent(obj.POPKunai);
    obj.edit126:setWidth(100);
    obj.edit126:setHeight(30);
    obj.edit126:setLeft(260);
    obj.edit126:setTop(255);
    obj.edit126:setEnabled(false);
    obj.edit126:setField("DanoShurikenFuuma");
    obj.edit126:setName("edit126");

    obj.button23 = GUI.fromHandle(_obj_newObject("button"));
    obj.button23:setParent(obj.POPKunai);
    obj.button23:setLeft(8);
    obj.button23:setTop(230);
    obj.button23:setWidth(100);
    obj.button23:setHeight(90);
    obj.button23:setOpacity(0.3);
    obj.button23:setName("button23");


						local function UseShurikenFuuma()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.AcertoTaiTotal = tonumber(sheet.AcertoTaiTotal or 0);  
							if sheet.SFuumaQT > 0 then
								mesaDoPersonagem.chat:rolarDados("1d100 ","[§K3]Uso de Shuriken Fuuma no Alvo",
								function (rolado)								
									if sheet.AcertoTaiTotal >= rolado.resultado then
										sheet.SFuumaQT = tonumber(sheet.SFuumaQT or 0) - 1;
										mesaDoPersonagem.chat:enviarMensagem("[§I https://static.wikia.nocookie.net/a2a592ed-6791-4944-aa63-da2188d824ad]");
										mesaDoPersonagem.chat:enviarMensagem("[§K3]A Shuriken Fuuma acerta o Alvo Causando[§K4] " .. (sheet.DanoShurikenFuuma) .. " DE DANO[§K3] restam apenas [§K14][" .. (sheet.SFuumaQT) ..  "][§K3] Shuriken Fuuma na Bag");
									else
										mesaDoPersonagem.chat:enviarMensagem("[§K4]O Oponente esquivou da Shuriken Fuuma");
									end;								
								end); 
							else
								mesaDoPersonagem.chat:enviarMensagem("[§K4]VOCE ESTA SEM SHURIKEN FUUMA [§I https://pbs.twimg.com/profile_images/1050841400407982082/BZRxaqpV_400x400.jpg]");
							end;
						end; 	   
					


    obj.image21 = GUI.fromHandle(_obj_newObject("image"));
    obj.image21:setParent(obj.POPKunai);
    obj.image21:setLeft(10);
    obj.image21:setTop(330);
    obj.image21:setWidth(100);
    obj.image21:setHeight(100);
    obj.image21:setSRC("/imagens/Kgigante.png");
    obj.image21:setName("image21");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.POPKunai);
    obj.label58:setWidth(120);
    obj.label58:setHeight(40);
    obj.label58:setLeft(130);
    obj.label58:setTop(350);
    obj.label58:setFontFamily("Nyala");
    obj.label58:setFontSize(20);
    obj.label58:setText("Kunai Gigante");
    obj.label58:setName("label58");

    obj.edit127 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit127:setParent(obj.POPKunai);
    obj.edit127:setWidth(100);
    obj.edit127:setHeight(30);
    obj.edit127:setLeft(260);
    obj.edit127:setTop(355);
    obj.edit127:setEnabled(false);
    obj.edit127:setField("DanoKunaiGigante");
    obj.edit127:setName("edit127");

    obj.button24 = GUI.fromHandle(_obj_newObject("button"));
    obj.button24:setParent(obj.POPKunai);
    obj.button24:setLeft(8);
    obj.button24:setTop(325);
    obj.button24:setWidth(100);
    obj.button24:setHeight(105);
    obj.button24:setOpacity(0.3);
    obj.button24:setName("button24");


						local function UseKunaiGigante()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.AcertoTaiTotal = tonumber(sheet.AcertoTaiTotal or 0);  
							if sheet.KGiganteQT > 0 then
								mesaDoPersonagem.chat:rolarDados("1d100 ","[§K3]Uso de Kunai Gigante no Alvo",
								function (rolado)								
									if sheet.AcertoTaiTotal >= rolado.resultado then
										sheet.KGiganteQT = tonumber(sheet.KGiganteQT or 0) - 1;
										mesaDoPersonagem.chat:enviarMensagem("[§I https://pm1.narvii.com/6355/6390d40e5a2515f41d9146fd880c996c1ea23581_hq.jpg]");
										mesaDoPersonagem.chat:enviarMensagem("[§K3]A Kunai Gigante acerta o Alvo Causando[§K4] " .. (sheet.DanoKunaiGigante) .. " DE DANO[§K3] restam apenas [§K14][" .. (sheet.KGiganteQT) ..  "][§K3] Kunais Gigantes na Bag");
									else
										mesaDoPersonagem.chat:enviarMensagem("[§K4]O Oponente esquivou da Kunai Gigante");
									end;								
								end); 
							else
								mesaDoPersonagem.chat:enviarMensagem("[§K4]VOCE ESTA SEM KUNAI GIGANTES [§I https://pbs.twimg.com/profile_images/1050841400407982082/BZRxaqpV_400x400.jpg]");
							end;
						end; 	   
					


    obj.image22 = GUI.fromHandle(_obj_newObject("image"));
    obj.image22:setParent(obj.POPKunai);
    obj.image22:setLeft(10);
    obj.image22:setTop(430);
    obj.image22:setWidth(100);
    obj.image22:setHeight(100);
    obj.image22:setSRC("/imagens/Senbon.png");
    obj.image22:setName("image22");

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.POPKunai);
    obj.label59:setWidth(120);
    obj.label59:setHeight(40);
    obj.label59:setLeft(130);
    obj.label59:setTop(450);
    obj.label59:setFontFamily("Nyala");
    obj.label59:setFontSize(20);
    obj.label59:setText("Senbon");
    obj.label59:setName("label59");

    obj.edit128 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit128:setParent(obj.POPKunai);
    obj.edit128:setWidth(100);
    obj.edit128:setHeight(30);
    obj.edit128:setLeft(260);
    obj.edit128:setTop(455);
    obj.edit128:setEnabled(false);
    obj.edit128:setField("Senbon");
    obj.edit128:setName("edit128");

    obj.button25 = GUI.fromHandle(_obj_newObject("button"));
    obj.button25:setParent(obj.POPKunai);
    obj.button25:setLeft(8);
    obj.button25:setTop(435);
    obj.button25:setWidth(100);
    obj.button25:setHeight(90);
    obj.button25:setOpacity(0.3);
    obj.button25:setName("button25");


						local function UseSenbon()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.AcertoTaiTotal = tonumber(sheet.AcertoTaiTotal or 0);  
							if sheet.SenbonQT > 0 then
								mesaDoPersonagem.chat:rolarDados("1d100 ","[§K3]Uso de Senbo no Alvo",
								function (rolado)								
									if sheet.AcertoTaiTotal >= rolado.resultado then
										sheet.SenbonQT = tonumber(sheet.SenbonQT or 0) - 1;
										mesaDoPersonagem.chat:enviarMensagem("[§I https://pa1.narvii.com/6523/2a9df90eff540d3ce53af300fb7ef60883b7d2a4_hq.gif]");
										mesaDoPersonagem.chat:enviarMensagem("[§K3]A Senbon acerta o Alvo Causando[§K4] " .. (sheet.Senbon) .. " DE DANO[§K3] restam apenas [§K14][" .. (sheet.SenbonQT) ..  "][§K3] Senbon na Bag");
									else
										mesaDoPersonagem.chat:enviarMensagem("[§K4]O Oponente esquivou da Senbon");
									end;								
								end); 
							else
								mesaDoPersonagem.chat:enviarMensagem("[§K4]VOCE ESTA SEM SENBON [§I https://pbs.twimg.com/profile_images/1050841400407982082/BZRxaqpV_400x400.jpg]");
							end;
						end; 	   
					


    obj.edit129 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit129:setParent(obj.POPKunai);
    obj.edit129:setWidth(40);
    obj.edit129:setHeight(30);
    obj.edit129:setLeft(430);
    obj.edit129:setTop(65);
    obj.edit129:setEnabled(true);
    obj.edit129:setType("number");
    obj.edit129:setField("KunaiQT");
    obj.edit129:setName("edit129");

    obj.edit130 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit130:setParent(obj.POPKunai);
    obj.edit130:setWidth(40);
    obj.edit130:setHeight(30);
    obj.edit130:setLeft(430);
    obj.edit130:setTop(155);
    obj.edit130:setEnabled(true);
    obj.edit130:setType("number");
    obj.edit130:setField("ShurikenQT");
    obj.edit130:setName("edit130");

    obj.edit131 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit131:setParent(obj.POPKunai);
    obj.edit131:setWidth(40);
    obj.edit131:setHeight(30);
    obj.edit131:setLeft(430);
    obj.edit131:setTop(255);
    obj.edit131:setEnabled(true);
    obj.edit131:setType("number");
    obj.edit131:setField("SFuumaQT");
    obj.edit131:setName("edit131");

    obj.edit132 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit132:setParent(obj.POPKunai);
    obj.edit132:setWidth(40);
    obj.edit132:setHeight(30);
    obj.edit132:setLeft(430);
    obj.edit132:setTop(355);
    obj.edit132:setEnabled(true);
    obj.edit132:setType("number");
    obj.edit132:setField("KGiganteQT");
    obj.edit132:setName("edit132");

    obj.edit133 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit133:setParent(obj.POPKunai);
    obj.edit133:setWidth(40);
    obj.edit133:setHeight(30);
    obj.edit133:setLeft(430);
    obj.edit133:setTop(455);
    obj.edit133:setEnabled(true);
    obj.edit133:setType("number");
    obj.edit133:setFontColor("red");
    obj.edit133:setField("SenbonQT");
    obj.edit133:setName("edit133");

    obj.edit134 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit134:setParent(obj.POPKunai);
    obj.edit134:setWidth(40);
    obj.edit134:setHeight(30);
    obj.edit134:setLeft(485);
    obj.edit134:setTop(65);
    obj.edit134:setEnabled(false);
    obj.edit134:setType("number");
    obj.edit134:setField("KunaiLimite");
    obj.edit134:setName("edit134");

    obj.edit135 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit135:setParent(obj.POPKunai);
    obj.edit135:setWidth(40);
    obj.edit135:setHeight(30);
    obj.edit135:setLeft(485);
    obj.edit135:setTop(155);
    obj.edit135:setEnabled(false);
    obj.edit135:setType("number");
    obj.edit135:setField("ShurikenLimite");
    obj.edit135:setName("edit135");

    obj.edit136 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit136:setParent(obj.POPKunai);
    obj.edit136:setWidth(40);
    obj.edit136:setHeight(30);
    obj.edit136:setLeft(485);
    obj.edit136:setTop(255);
    obj.edit136:setEnabled(false);
    obj.edit136:setType("number");
    obj.edit136:setField("SFuumaLimite");
    obj.edit136:setName("edit136");

    obj.edit137 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit137:setParent(obj.POPKunai);
    obj.edit137:setWidth(40);
    obj.edit137:setHeight(30);
    obj.edit137:setLeft(485);
    obj.edit137:setTop(355);
    obj.edit137:setEnabled(false);
    obj.edit137:setType("number");
    obj.edit137:setField("KGiganteLimite");
    obj.edit137:setName("edit137");

    obj.edit138 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit138:setParent(obj.POPKunai);
    obj.edit138:setWidth(40);
    obj.edit138:setHeight(30);
    obj.edit138:setLeft(485);
    obj.edit138:setTop(455);
    obj.edit138:setEnabled(false);
    obj.edit138:setType("number");
    obj.edit138:setFontColor("blue");
    obj.edit138:setField("SemboLimite");
    obj.edit138:setName("edit138");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj.POPKunai);
    obj.dataLink35:setFields({'KunaiQT', 'ShurikenQT', 'SFuumaQT', 'KGiganteQT', 'SenbonQT', 'KunaiLimite', 'ShurikenLimite', 'SFuumaLimite', 'KGiganteLimite', 'SemboLimite',
					'PBombaQT', 'GExplosivoQT', 'VenenoQT', 'BandagemQT', 'BombaFumacaQT', 'PBombaLimite', 'GExplosivoLimite', 'VenenoLimite', 'BandagemLimite', 'BombaFumacaLimite'});
    obj.dataLink35:setName("dataLink35");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj.POPKunai);
    obj.dataLink36:setFields({'KunaiQT', 'ShurikenQT', 'SFuumaQT', 'KGiganteQT', 'SenbonQT', 'KunaiLimite', 'ShurikenLimite', 'SFuumaLimite', 'KGiganteLimite' ,'SemboLimite'});
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj.POPKunai);
    obj.dataLink37:setFields({'Forca', 'Inteligencia', 'Sabedoria', 'Habilidade', 'Resistencia'});
    obj.dataLink37:setName("dataLink37");

    obj.button26 = GUI.fromHandle(_obj_newObject("button"));
    obj.button26:setParent(obj.scrollBox2);
    obj.button26:setLeft(140);
    obj.button26:setTop(550);
    obj.button26:setWidth(105);
    obj.button26:setHeight(85);
    obj.button26:setOpacity(0.1);
    obj.button26:setText("");
    obj.button26:setName("button26");

    obj.POPPB = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPPB:setParent(obj.scrollBox2);
    obj.POPPB:setName("POPPB");
    obj.POPPB:setVisible(false);
    obj.POPPB:setLeft(1);
    obj.POPPB:setTop(40);
    obj.POPPB:setWidth(550);
    obj.POPPB:setHeight(550);

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.POPPB);
    obj.label60:setWidth(120);
    obj.label60:setHeight(40);
    obj.label60:setLeft(280);
    obj.label60:setTop(10);
    obj.label60:setFontColor("Red");
    obj.label60:setFontFamily("Nyala");
    obj.label60:setFontSize(20);
    obj.label60:setText("Danos");
    obj.label60:setName("label60");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.POPPB);
    obj.label61:setWidth(120);
    obj.label61:setHeight(40);
    obj.label61:setLeft(420);
    obj.label61:setTop(10);
    obj.label61:setFontColor("Red");
    obj.label61:setFontFamily("Nyala");
    obj.label61:setFontSize(20);
    obj.label61:setText("Quantia/Limite");
    obj.label61:setName("label61");

    obj.image23 = GUI.fromHandle(_obj_newObject("image"));
    obj.image23:setParent(obj.POPPB);
    obj.image23:setLeft(10);
    obj.image23:setTop(30);
    obj.image23:setWidth(100);
    obj.image23:setHeight(130);
    obj.image23:setSRC("/imagens/pb.png");
    obj.image23:setName("image23");

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.POPPB);
    obj.label62:setWidth(120);
    obj.label62:setHeight(40);
    obj.label62:setLeft(130);
    obj.label62:setTop(60);
    obj.label62:setFontFamily("Nyala");
    obj.label62:setFontSize(20);
    obj.label62:setText("Papel Bomba");
    obj.label62:setName("label62");

    obj.edit139 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit139:setParent(obj.POPPB);
    obj.edit139:setWidth(100);
    obj.edit139:setHeight(30);
    obj.edit139:setLeft(260);
    obj.edit139:setTop(65);
    obj.edit139:setEnabled(false);
    obj.edit139:setField("PB");
    obj.edit139:setName("edit139");

    obj.button27 = GUI.fromHandle(_obj_newObject("button"));
    obj.button27:setParent(obj.POPPB);
    obj.button27:setLeft(8);
    obj.button27:setTop(40);
    obj.button27:setWidth(100);
    obj.button27:setHeight(90);
    obj.button27:setOpacity(0.3);
    obj.button27:setName("button27");


						local function UsePB()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.AcertoNinTotal = tonumber(sheet.AcertoNinTotal or 0);  
							if sheet.PBombaQT > 0 then
								mesaDoPersonagem.chat:rolarDados("1d100 ","[§K3]Uso de Papel Bomba na Area",
									function (rolado)								
											if sheet.AcertoNinTotal >= rolado.resultado then
												sheet.PBombaQT = tonumber(sheet.PBombaQT or 0) - 1;
												mesaDoPersonagem.chat:enviarMensagem("[§I https://i.makeagif.com/media/9-24-2018/ySeYJn.gif]");
												mesaDoPersonagem.chat:enviarMensagem("[§K3]Executa com sucesso o Papel Bomba explode Causando[§K4] " .. (sheet.PB) .. " DE DANO[§K3] restam apenas [§K14][" .. (sheet.PBombaQT) ..  "][§K3] Papeis Bomba na Bag");
											else
												mesaDoPersonagem.chat:enviarMensagem("[§K4]Não fui possivel executar a explosão do papel bomba");
											end;								
								end); 
							else
								mesaDoPersonagem.chat:enviarMensagem("[§K4]VOCE ESTA SEM PAPEL BOMBA [§I https://pbs.twimg.com/profile_images/1050841400407982082/BZRxaqpV_400x400.jpg]");
							end;
						end; 	   
					


    obj.image24 = GUI.fromHandle(_obj_newObject("image"));
    obj.image24:setParent(obj.POPPB);
    obj.image24:setLeft(0);
    obj.image24:setTop(120);
    obj.image24:setWidth(130);
    obj.image24:setHeight(130);
    obj.image24:setSRC("/imagens/BE.png");
    obj.image24:setName("image24");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.POPPB);
    obj.label63:setWidth(120);
    obj.label63:setHeight(40);
    obj.label63:setLeft(130);
    obj.label63:setTop(150);
    obj.label63:setFontFamily("Nyala");
    obj.label63:setFontSize(20);
    obj.label63:setText("Ginso Explosivo");
    obj.label63:setName("label63");

    obj.edit140 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit140:setParent(obj.POPPB);
    obj.edit140:setWidth(100);
    obj.edit140:setHeight(30);
    obj.edit140:setLeft(260);
    obj.edit140:setTop(155);
    obj.edit140:setEnabled(false);
    obj.edit140:setField("GinsoExplosivo");
    obj.edit140:setName("edit140");

    obj.button28 = GUI.fromHandle(_obj_newObject("button"));
    obj.button28:setParent(obj.POPPB);
    obj.button28:setLeft(8);
    obj.button28:setTop(135);
    obj.button28:setWidth(100);
    obj.button28:setHeight(90);
    obj.button28:setOpacity(0.3);
    obj.button28:setName("button28");


						local function UseGinsoExplosivo()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.AcertoNinTotal = tonumber(sheet.AcertoNinTotal or 0);  
							if sheet.GExplosivoQT > 0 then
								mesaDoPersonagem.chat:rolarDados("1d100 ","[§K3]Uso do Ginso Explosivo na Area",
									function (rolado)								
											if sheet.AcertoNinTotal >= rolado.resultado then
												sheet.GExplosivoQT = tonumber(sheet.GExplosivoQT or 0) - 1;
												mesaDoPersonagem.chat:enviarMensagem("[§I https://2img.net/h/narutorpghabbogreg.weebly.com/uploads/3/1/1/9/31192459/460968437.png]");
												mesaDoPersonagem.chat:enviarMensagem("[§K3]Executa com sucesso o Ginso Explosivo Causando[§K4] " .. (sheet.GinsoExplosivo) .. " DE DANO[§K3] restam apenas [§K14][" .. (sheet.GExplosivoQT) ..  "][§K3] Ginsos na Bag");
											else
												mesaDoPersonagem.chat:enviarMensagem("[§K4]Não fui possivel executar a explosão do Ginso Explosivo");
											end;								
								end); 
							else
								mesaDoPersonagem.chat:enviarMensagem("[§K4]VOCE ESTA SEM GINSO EXPLOSIVO [§I https://pbs.twimg.com/profile_images/1050841400407982082/BZRxaqpV_400x400.jpg]");
							end;
						end; 	   
					


    obj.image25 = GUI.fromHandle(_obj_newObject("image"));
    obj.image25:setParent(obj.POPPB);
    obj.image25:setLeft(20);
    obj.image25:setTop(240);
    obj.image25:setWidth(100);
    obj.image25:setHeight(100);
    obj.image25:setSRC("/imagens/veneno.png");
    obj.image25:setName("image25");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.POPPB);
    obj.label64:setWidth(120);
    obj.label64:setHeight(40);
    obj.label64:setLeft(130);
    obj.label64:setTop(250);
    obj.label64:setFontFamily("Nyala");
    obj.label64:setFontSize(20);
    obj.label64:setText("Veneno");
    obj.label64:setName("label64");

    obj.edit141 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit141:setParent(obj.POPPB);
    obj.edit141:setWidth(100);
    obj.edit141:setHeight(30);
    obj.edit141:setLeft(260);
    obj.edit141:setTop(255);
    obj.edit141:setEnabled(false);
    obj.edit141:setField("Veneno");
    obj.edit141:setName("edit141");

    obj.button29 = GUI.fromHandle(_obj_newObject("button"));
    obj.button29:setParent(obj.POPPB);
    obj.button29:setLeft(8);
    obj.button29:setTop(230);
    obj.button29:setWidth(100);
    obj.button29:setHeight(90);
    obj.button29:setOpacity(0.3);
    obj.button29:setName("button29");


						local function UseVeneno()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.AcertoNinTotal = tonumber(sheet.AcertoNinTotal or 0);  
							if sheet.VenenoQT > 0 then
								mesaDoPersonagem.chat:rolarDados("1d100 ","[§K3]Uso do Veneno no alvo",
									function (rolado)								
											if sheet.AcertoNinTotal >= rolado.resultado then
												sheet.VenenoQT = tonumber(sheet.VenenoQT or 0) - 1;
												mesaDoPersonagem.chat:enviarMensagem("[§I https://2img.net/h/narutorpghabbogreg.weebly.com/uploads/3/1/1/9/31192459/460968437.png]");
												mesaDoPersonagem.chat:enviarMensagem("[§K3]Acerta o Veneno Causando[§K4] " .. (sheet.Veneno) .. " DE DANO[§K3] restam apenas [§K14][" .. (sheet.VenenoQT) ..  "][§K3] Venenos na Bag");
											else
												mesaDoPersonagem.chat:enviarMensagem("[§K4]Não fui possivel acertar o Veneno no Alvo");
											end;								
								end); 
							else
								mesaDoPersonagem.chat:enviarMensagem("[§K4]VOCE ESTA SEM VENENO [§I https://pbs.twimg.com/profile_images/1050841400407982082/BZRxaqpV_400x400.jpg]");
							end;
						end; 	   
					


    obj.image26 = GUI.fromHandle(_obj_newObject("image"));
    obj.image26:setParent(obj.POPPB);
    obj.image26:setLeft(10);
    obj.image26:setTop(330);
    obj.image26:setWidth(100);
    obj.image26:setHeight(100);
    obj.image26:setSRC("/imagens/bandagem.png");
    obj.image26:setName("image26");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.POPPB);
    obj.label65:setWidth(120);
    obj.label65:setHeight(40);
    obj.label65:setLeft(130);
    obj.label65:setTop(350);
    obj.label65:setFontFamily("Nyala");
    obj.label65:setFontSize(20);
    obj.label65:setText("Bandagem");
    obj.label65:setName("label65");

    obj.edit142 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit142:setParent(obj.POPPB);
    obj.edit142:setWidth(100);
    obj.edit142:setHeight(30);
    obj.edit142:setLeft(260);
    obj.edit142:setTop(355);
    obj.edit142:setEnabled(false);
    obj.edit142:setField("Bandagem");
    obj.edit142:setName("edit142");

    obj.button30 = GUI.fromHandle(_obj_newObject("button"));
    obj.button30:setParent(obj.POPPB);
    obj.button30:setLeft(8);
    obj.button30:setTop(325);
    obj.button30:setWidth(100);
    obj.button30:setHeight(105);
    obj.button30:setOpacity(0.3);
    obj.button30:setName("button30");


						local function UsoBandagem()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.AcertoNinTotal = tonumber(sheet.AcertoNinTotal or 0);  
							if sheet.BandagemQT > 0 then
								mesaDoPersonagem.chat:rolarDados("1d100 ","[§K3]Uso de Bandagegem",
									function (rolado)								
											if sheet.AcertoNinTotal >= rolado.resultado then
												sheet.BandagemQT = tonumber(sheet.BandagemQT or 0) - 1;
												mesaDoPersonagem.chat:enviarMensagem("[§I http://blob.firecast.com.br/blobs/QDFLARHA_1718619/Screenshot_2.png]");
												mesaDoPersonagem.chat:enviarMensagem("[§K3]Executa Chakra sobre a Bandagem de Cura Curando[§K8] " .. (sheet.Bandagem) .. " DE CURA[§K3] restam apenas [§K14][" .. (sheet.BandagemQT) ..  "][§K3] Bandagens na Bag");
											else
												mesaDoPersonagem.chat:enviarMensagem("[§K4]Não fui possivel executar o Chakra sobre a Bandagem cancelando a Execução");
											end;								
								end); 
							else
								mesaDoPersonagem.chat:enviarMensagem("[§K4]VOCE ESTA SEM BANDAGEM [§I https://pbs.twimg.com/profile_images/1050841400407982082/BZRxaqpV_400x400.jpg]");
							end;
						end; 	   
					


    obj.image27 = GUI.fromHandle(_obj_newObject("image"));
    obj.image27:setParent(obj.POPPB);
    obj.image27:setLeft(10);
    obj.image27:setTop(430);
    obj.image27:setWidth(100);
    obj.image27:setHeight(100);
    obj.image27:setSRC("/imagens/bombaf.png");
    obj.image27:setName("image27");

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.POPPB);
    obj.label66:setWidth(120);
    obj.label66:setHeight(40);
    obj.label66:setLeft(130);
    obj.label66:setTop(450);
    obj.label66:setFontFamily("Nyala");
    obj.label66:setFontSize(20);
    obj.label66:setText("Bomba Fumaça");
    obj.label66:setName("label66");

    obj.edit143 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit143:setParent(obj.POPPB);
    obj.edit143:setWidth(100);
    obj.edit143:setHeight(30);
    obj.edit143:setLeft(260);
    obj.edit143:setTop(455);
    obj.edit143:setEnabled(false);
    obj.edit143:setField("BF");
    obj.edit143:setName("edit143");

    obj.button31 = GUI.fromHandle(_obj_newObject("button"));
    obj.button31:setParent(obj.POPPB);
    obj.button31:setLeft(8);
    obj.button31:setTop(435);
    obj.button31:setWidth(100);
    obj.button31:setHeight(90);
    obj.button31:setOpacity(0.3);
    obj.button31:setName("button31");


						local function UseBombaFumaca()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.AcertoTaiTotal = tonumber(sheet.AcertoTaiTotal or 0);  
							if sheet.BombaFumacaQT > 0 then
								mesaDoPersonagem.chat:rolarDados("1d100 ","[§K3]Uso de Bomba de Fumaça",
									function (rolado)								
											if sheet.AcertoTaiTotal >= rolado.resultado then
												sheet.BombaFumacaQT = tonumber(sheet.BombaFumacaQT or 0) - 1;
												mesaDoPersonagem.chat:enviarMensagem("[§I https://2img.net/h/images2.wikia.nocookie.net/__cb20110428013205/naruto/es/images/5/5c/Burbujas_de_humo.jpg]");
												mesaDoPersonagem.chat:enviarMensagem("[§K3]Lançamento de Bomba de Fumaça,[§K3] restam apenas [§K14][" .. (sheet.BombaFumacaQT) ..  "][§K3] Bomba de Fumaça na Bag");
											else
												mesaDoPersonagem.chat:enviarMensagem("[§K4]Não conseguiu acertar a bomba de fumaça proximo oque fez ela explodir longe");
											end;								
								end); 
							else
								mesaDoPersonagem.chat:enviarMensagem("[§K4]VOCE ESTA SEM BOMBA DE FUMAÇA [§I https://pbs.twimg.com/profile_images/1050841400407982082/BZRxaqpV_400x400.jpg]");
							end;
						end; 	   
					


    obj.edit144 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit144:setParent(obj.POPPB);
    obj.edit144:setWidth(40);
    obj.edit144:setHeight(30);
    obj.edit144:setLeft(430);
    obj.edit144:setTop(65);
    obj.edit144:setEnabled(true);
    obj.edit144:setType("number");
    obj.edit144:setField("PBombaQT");
    obj.edit144:setName("edit144");

    obj.edit145 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit145:setParent(obj.POPPB);
    obj.edit145:setWidth(40);
    obj.edit145:setHeight(30);
    obj.edit145:setLeft(430);
    obj.edit145:setTop(155);
    obj.edit145:setEnabled(true);
    obj.edit145:setType("number");
    obj.edit145:setField("GExplosivoQT");
    obj.edit145:setName("edit145");

    obj.edit146 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit146:setParent(obj.POPPB);
    obj.edit146:setWidth(40);
    obj.edit146:setHeight(30);
    obj.edit146:setLeft(430);
    obj.edit146:setTop(255);
    obj.edit146:setEnabled(true);
    obj.edit146:setType("number");
    obj.edit146:setField("VenenoQT");
    obj.edit146:setName("edit146");

    obj.edit147 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit147:setParent(obj.POPPB);
    obj.edit147:setWidth(40);
    obj.edit147:setHeight(30);
    obj.edit147:setLeft(430);
    obj.edit147:setTop(355);
    obj.edit147:setEnabled(true);
    obj.edit147:setType("number");
    obj.edit147:setField("BandagemQT");
    obj.edit147:setName("edit147");

    obj.edit148 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit148:setParent(obj.POPPB);
    obj.edit148:setWidth(40);
    obj.edit148:setHeight(30);
    obj.edit148:setLeft(430);
    obj.edit148:setTop(455);
    obj.edit148:setEnabled(true);
    obj.edit148:setType("number");
    obj.edit148:setField("BombaFumacaQT");
    obj.edit148:setName("edit148");

    obj.edit149 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit149:setParent(obj.POPPB);
    obj.edit149:setWidth(40);
    obj.edit149:setHeight(30);
    obj.edit149:setLeft(485);
    obj.edit149:setTop(65);
    obj.edit149:setEnabled(false);
    obj.edit149:setType("number");
    obj.edit149:setField("PBombaLimite");
    obj.edit149:setName("edit149");

    obj.edit150 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit150:setParent(obj.POPPB);
    obj.edit150:setWidth(40);
    obj.edit150:setHeight(30);
    obj.edit150:setLeft(485);
    obj.edit150:setTop(155);
    obj.edit150:setEnabled(false);
    obj.edit150:setType("number");
    obj.edit150:setField("GExplosivoLimite");
    obj.edit150:setName("edit150");

    obj.edit151 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit151:setParent(obj.POPPB);
    obj.edit151:setWidth(40);
    obj.edit151:setHeight(30);
    obj.edit151:setLeft(485);
    obj.edit151:setTop(255);
    obj.edit151:setEnabled(false);
    obj.edit151:setType("number");
    obj.edit151:setField("VenenoLimite");
    obj.edit151:setName("edit151");

    obj.edit152 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit152:setParent(obj.POPPB);
    obj.edit152:setWidth(40);
    obj.edit152:setHeight(30);
    obj.edit152:setLeft(485);
    obj.edit152:setTop(355);
    obj.edit152:setEnabled(false);
    obj.edit152:setType("number");
    obj.edit152:setField("BandagemLimite");
    obj.edit152:setName("edit152");

    obj.edit153 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit153:setParent(obj.POPPB);
    obj.edit153:setWidth(40);
    obj.edit153:setHeight(30);
    obj.edit153:setLeft(485);
    obj.edit153:setTop(455);
    obj.edit153:setEnabled(false);
    obj.edit153:setType("number");
    obj.edit153:setField("BombaFumacaLimite");
    obj.edit153:setName("edit153");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj.POPPB);
    obj.dataLink38:setFields({'PBombaQT', 'GExplosivoQT', 'VenenoQT', 'BandagemQT', 'BombaFumacaQT', 'PBombaLimite', 'GExplosivoLimite', 'VenenoLimite', 'BandagemLimite', 'BombaFumacaLimite'});
    obj.dataLink38:setName("dataLink38");

    obj.button32 = GUI.fromHandle(_obj_newObject("button"));
    obj.button32:setParent(obj.scrollBox2);
    obj.button32:setLeft(385);
    obj.button32:setTop(575);
    obj.button32:setWidth(65);
    obj.button32:setHeight(80);
    obj.button32:setOpacity(0.0);
    obj.button32:setText("");
    obj.button32:setName("button32");

    obj.POPPergaminho1 = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPPergaminho1:setParent(obj.scrollBox2);
    obj.POPPergaminho1:setName("POPPergaminho1");
    obj.POPPergaminho1:setVisible(false);
    obj.POPPergaminho1:setLeft(1);
    obj.POPPergaminho1:setTop(40);
    obj.POPPergaminho1:setWidth(450);
    obj.POPPergaminho1:setHeight(520);

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.POPPergaminho1);
    obj.label67:setWidth(120);
    obj.label67:setHeight(40);
    obj.label67:setLeft(10);
    obj.label67:setTop(10);
    obj.label67:setFontFamily("Nyala");
    obj.label67:setFontSize(20);
    obj.label67:setText("Selado :");
    obj.label67:setName("label67");

    obj.edit154 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit154:setParent(obj.POPPergaminho1);
    obj.edit154:setWidth(310);
    obj.edit154:setHeight(30);
    obj.edit154:setLeft(100);
    obj.edit154:setTop(15);
    obj.edit154:setField("NomePergaminho1");
    obj.edit154:setName("edit154");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.POPPergaminho1);
    obj.textEditor4:setLeft(10);
    obj.textEditor4:setTop(60);
    obj.textEditor4:setWidth(430);
    obj.textEditor4:setHeight(280);
    obj.textEditor4:setField("DescriPergaminho1");
    obj.textEditor4:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor4:setName("textEditor4");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.POPPergaminho1);
    obj.label68:setWidth(120);
    obj.label68:setHeight(40);
    obj.label68:setLeft(10);
    obj.label68:setTop(350);
    obj.label68:setFontFamily("Nyala");
    obj.label68:setFontSize(20);
    obj.label68:setText("Intensidade");
    obj.label68:setName("label68");

    obj.edit155 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit155:setParent(obj.POPPergaminho1);
    obj.edit155:setWidth(120);
    obj.edit155:setHeight(30);
    obj.edit155:setLeft(100);
    obj.edit155:setTop(355);
    obj.edit155:setType("number");
    obj.edit155:setEnabled(false);
    obj.edit155:setField("IntensidadeP1");
    obj.edit155:setName("edit155");

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.POPPergaminho1);
    obj.label69:setWidth(60);
    obj.label69:setHeight(40);
    obj.label69:setLeft(340);
    obj.label69:setTop(350);
    obj.label69:setFontFamily("Nyala");
    obj.label69:setFontSize(20);
    obj.label69:setText("Chakra");
    obj.label69:setName("label69");

    obj.edit156 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit156:setParent(obj.POPPergaminho1);
    obj.edit156:setWidth(40);
    obj.edit156:setHeight(30);
    obj.edit156:setLeft(400);
    obj.edit156:setTop(355);
    obj.edit156:setType("number");
    obj.edit156:setField("CustoPerga1");
    obj.edit156:setName("edit156");

    obj.edit157 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit157:setParent(obj.POPPergaminho1);
    obj.edit157:setWidth(40);
    obj.edit157:setHeight(30);
    obj.edit157:setLeft(390);
    obj.edit157:setTop(380);
    obj.edit157:setVisible(false);
    obj.edit157:setType("number");
    obj.edit157:setField("ChakraPerga1");
    obj.edit157:setName("edit157");

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.POPPergaminho1);
    obj.label70:setWidth(60);
    obj.label70:setHeight(40);
    obj.label70:setLeft(230);
    obj.label70:setTop(350);
    obj.label70:setFontFamily("Nyala");
    obj.label70:setFontSize(20);
    obj.label70:setText("Tipo");
    obj.label70:setName("label70");

    obj.comboBox16 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox16:setParent(obj.POPPergaminho1);
    obj.comboBox16:setLeft(275);
    obj.comboBox16:setTop(363);
    obj.comboBox16:setWidth(50);
    obj.comboBox16:setHeight(18);
    obj.comboBox16:setField("TipoPergaminho1");
    obj.comboBox16:setItems({'A', 'B', 'C', 'D', 'E' , 'Outros'});
    obj.comboBox16:setName("comboBox16");

    obj.image28 = GUI.fromHandle(_obj_newObject("image"));
    obj.image28:setParent(obj.POPPergaminho1);
    obj.image28:setLeft(20);
    obj.image28:setTop(380);
    obj.image28:setOpacity(1.0);
    obj.image28:setWidth(150);
    obj.image28:setHeight(150);
    obj.image28:setSRC("/imagens/Pergamin.png");
    obj.image28:setName("image28");

    obj.button33 = GUI.fromHandle(_obj_newObject("button"));
    obj.button33:setParent(obj.POPPergaminho1);
    obj.button33:setLeft(20);
    obj.button33:setTop(390);
    obj.button33:setFontSize(20);
    obj.button33:setOpacity(0.0);
    obj.button33:setHeight(120);
    obj.button33:setWidth(150);
    obj.button33:setText("");
    obj.button33:setFontColor("White");
    obj.button33:setName("button33");

 
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
						


    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.scrollBox2);
    obj.label71:setLeft(545);
    obj.label71:setTop(625);
    obj.label71:setWidth(88);
    obj.label71:setHeight(80);
    obj.label71:setScale(1.0);
    obj.label71:setHorzTextAlign("center");
    obj.label71:setText("Pergaminho Grande");
    obj.label71:setName("label71");

    obj.button34 = GUI.fromHandle(_obj_newObject("button"));
    obj.button34:setParent(obj.scrollBox2);
    obj.button34:setLeft(455);
    obj.button34:setTop(575);
    obj.button34:setWidth(75);
    obj.button34:setHeight(80);
    obj.button34:setOpacity(0.0);
    obj.button34:setText("");
    obj.button34:setName("button34");

    obj.POPPergaminho2 = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPPergaminho2:setParent(obj.scrollBox2);
    obj.POPPergaminho2:setName("POPPergaminho2");
    obj.POPPergaminho2:setVisible(false);
    obj.POPPergaminho2:setLeft(1);
    obj.POPPergaminho2:setTop(40);
    obj.POPPergaminho2:setWidth(450);
    obj.POPPergaminho2:setHeight(520);

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.POPPergaminho2);
    obj.label72:setWidth(120);
    obj.label72:setHeight(40);
    obj.label72:setLeft(10);
    obj.label72:setTop(10);
    obj.label72:setFontFamily("Nyala");
    obj.label72:setFontSize(20);
    obj.label72:setText("Selado :");
    obj.label72:setName("label72");

    obj.edit158 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit158:setParent(obj.POPPergaminho2);
    obj.edit158:setWidth(310);
    obj.edit158:setHeight(30);
    obj.edit158:setLeft(100);
    obj.edit158:setTop(15);
    obj.edit158:setField("NomePergaminho2");
    obj.edit158:setName("edit158");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.POPPergaminho2);
    obj.textEditor5:setLeft(10);
    obj.textEditor5:setTop(60);
    obj.textEditor5:setWidth(430);
    obj.textEditor5:setHeight(280);
    obj.textEditor5:setField("DescriPergaminho2");
    obj.textEditor5:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor5:setName("textEditor5");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.POPPergaminho2);
    obj.label73:setWidth(120);
    obj.label73:setHeight(40);
    obj.label73:setLeft(10);
    obj.label73:setTop(350);
    obj.label73:setFontFamily("Nyala");
    obj.label73:setFontSize(20);
    obj.label73:setText("Intensidade");
    obj.label73:setName("label73");

    obj.edit159 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit159:setParent(obj.POPPergaminho2);
    obj.edit159:setWidth(120);
    obj.edit159:setHeight(30);
    obj.edit159:setLeft(100);
    obj.edit159:setTop(355);
    obj.edit159:setEnabled(false);
    obj.edit159:setType("number");
    obj.edit159:setField("IntensidadeP2");
    obj.edit159:setName("edit159");

    obj.label74 = GUI.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.POPPergaminho2);
    obj.label74:setWidth(60);
    obj.label74:setHeight(40);
    obj.label74:setLeft(340);
    obj.label74:setTop(350);
    obj.label74:setFontFamily("Nyala");
    obj.label74:setFontSize(20);
    obj.label74:setText("Chakra");
    obj.label74:setName("label74");

    obj.edit160 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit160:setParent(obj.POPPergaminho2);
    obj.edit160:setWidth(40);
    obj.edit160:setHeight(30);
    obj.edit160:setLeft(400);
    obj.edit160:setTop(355);
    obj.edit160:setType("number");
    obj.edit160:setField("CustoPerga2");
    obj.edit160:setName("edit160");

    obj.edit161 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit161:setParent(obj.POPPergaminho2);
    obj.edit161:setWidth(40);
    obj.edit161:setHeight(30);
    obj.edit161:setLeft(390);
    obj.edit161:setTop(380);
    obj.edit161:setVisible(false);
    obj.edit161:setType("number");
    obj.edit161:setField("ChakraPerga2");
    obj.edit161:setName("edit161");

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.POPPergaminho2);
    obj.label75:setWidth(60);
    obj.label75:setHeight(40);
    obj.label75:setLeft(230);
    obj.label75:setTop(350);
    obj.label75:setFontFamily("Nyala");
    obj.label75:setFontSize(20);
    obj.label75:setText("Tipo");
    obj.label75:setName("label75");

    obj.comboBox17 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox17:setParent(obj.POPPergaminho2);
    obj.comboBox17:setLeft(275);
    obj.comboBox17:setTop(363);
    obj.comboBox17:setWidth(50);
    obj.comboBox17:setHeight(18);
    obj.comboBox17:setField("TipoPergaminho2");
    obj.comboBox17:setItems({'X', 'SS', 'S', 'Outros'});
    obj.comboBox17:setName("comboBox17");

    obj.image29 = GUI.fromHandle(_obj_newObject("image"));
    obj.image29:setParent(obj.POPPergaminho2);
    obj.image29:setLeft(20);
    obj.image29:setTop(380);
    obj.image29:setOpacity(1.0);
    obj.image29:setWidth(150);
    obj.image29:setHeight(150);
    obj.image29:setSRC("/imagens/Pergamin.png");
    obj.image29:setName("image29");

    obj.button35 = GUI.fromHandle(_obj_newObject("button"));
    obj.button35:setParent(obj.POPPergaminho2);
    obj.button35:setLeft(20);
    obj.button35:setTop(390);
    obj.button35:setFontSize(20);
    obj.button35:setOpacity(0.0);
    obj.button35:setHeight(120);
    obj.button35:setWidth(150);
    obj.button35:setText("");
    obj.button35:setFontColor("White");
    obj.button35:setName("button35");

 
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
						


    obj.label76 = GUI.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.scrollBox2);
    obj.label76:setLeft(450);
    obj.label76:setTop(628);
    obj.label76:setWidth(88);
    obj.label76:setHeight(80);
    obj.label76:setScale(1.0);
    obj.label76:setText("Selo Grande");
    obj.label76:setName("label76");

    obj.button36 = GUI.fromHandle(_obj_newObject("button"));
    obj.button36:setParent(obj.scrollBox2);
    obj.button36:setLeft(545);
    obj.button36:setTop(575);
    obj.button36:setWidth(85);
    obj.button36:setHeight(80);
    obj.button36:setOpacity(0.0);
    obj.button36:setText("");
    obj.button36:setName("button36");

    obj.POPPergaminho3 = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPPergaminho3:setParent(obj.scrollBox2);
    obj.POPPergaminho3:setName("POPPergaminho3");
    obj.POPPergaminho3:setVisible(false);
    obj.POPPergaminho3:setLeft(1);
    obj.POPPergaminho3:setTop(40);
    obj.POPPergaminho3:setWidth(450);
    obj.POPPergaminho3:setHeight(520);

    obj.label77 = GUI.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.POPPergaminho3);
    obj.label77:setWidth(120);
    obj.label77:setHeight(40);
    obj.label77:setLeft(10);
    obj.label77:setTop(10);
    obj.label77:setFontFamily("Nyala");
    obj.label77:setFontSize(20);
    obj.label77:setText("Selado :");
    obj.label77:setName("label77");

    obj.edit162 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit162:setParent(obj.POPPergaminho3);
    obj.edit162:setWidth(310);
    obj.edit162:setHeight(30);
    obj.edit162:setLeft(100);
    obj.edit162:setTop(15);
    obj.edit162:setField("NomePergaminho3");
    obj.edit162:setName("edit162");

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.POPPergaminho3);
    obj.textEditor6:setLeft(10);
    obj.textEditor6:setTop(60);
    obj.textEditor6:setWidth(430);
    obj.textEditor6:setHeight(280);
    obj.textEditor6:setField("DescriPergaminho3");
    obj.textEditor6:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor6:setName("textEditor6");

    obj.label78 = GUI.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.POPPergaminho3);
    obj.label78:setWidth(120);
    obj.label78:setHeight(40);
    obj.label78:setLeft(10);
    obj.label78:setTop(350);
    obj.label78:setFontFamily("Nyala");
    obj.label78:setFontSize(20);
    obj.label78:setText("Intensidade");
    obj.label78:setName("label78");

    obj.edit163 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit163:setParent(obj.POPPergaminho3);
    obj.edit163:setWidth(120);
    obj.edit163:setHeight(30);
    obj.edit163:setLeft(100);
    obj.edit163:setTop(355);
    obj.edit163:setEnabled(false);
    obj.edit163:setType("number");
    obj.edit163:setField("IntensidadeP3");
    obj.edit163:setName("edit163");

    obj.label79 = GUI.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.POPPergaminho3);
    obj.label79:setWidth(60);
    obj.label79:setHeight(40);
    obj.label79:setLeft(340);
    obj.label79:setTop(350);
    obj.label79:setFontFamily("Nyala");
    obj.label79:setFontSize(20);
    obj.label79:setText("Chakra");
    obj.label79:setName("label79");

    obj.edit164 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit164:setParent(obj.POPPergaminho3);
    obj.edit164:setWidth(40);
    obj.edit164:setHeight(30);
    obj.edit164:setLeft(400);
    obj.edit164:setTop(355);
    obj.edit164:setType("number");
    obj.edit164:setField("CustoPerga3");
    obj.edit164:setName("edit164");

    obj.edit165 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit165:setParent(obj.POPPergaminho3);
    obj.edit165:setWidth(40);
    obj.edit165:setHeight(30);
    obj.edit165:setLeft(390);
    obj.edit165:setTop(380);
    obj.edit165:setVisible(false);
    obj.edit165:setType("number");
    obj.edit165:setField("ChakraPerga3");
    obj.edit165:setName("edit165");

    obj.label80 = GUI.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.POPPergaminho3);
    obj.label80:setWidth(60);
    obj.label80:setHeight(40);
    obj.label80:setLeft(230);
    obj.label80:setTop(350);
    obj.label80:setFontFamily("Nyala");
    obj.label80:setFontSize(20);
    obj.label80:setText("Tipo");
    obj.label80:setName("label80");

    obj.comboBox18 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox18:setParent(obj.POPPergaminho3);
    obj.comboBox18:setLeft(275);
    obj.comboBox18:setTop(363);
    obj.comboBox18:setWidth(50);
    obj.comboBox18:setHeight(18);
    obj.comboBox18:setField("TipoPergaminho3");
    obj.comboBox18:setItems({'X','SS','S','A','B','C','D','E','Outros'});
    obj.comboBox18:setName("comboBox18");

    obj.image30 = GUI.fromHandle(_obj_newObject("image"));
    obj.image30:setParent(obj.POPPergaminho3);
    obj.image30:setLeft(20);
    obj.image30:setTop(380);
    obj.image30:setOpacity(1.0);
    obj.image30:setWidth(150);
    obj.image30:setHeight(150);
    obj.image30:setSRC("/imagens/Pergamin.png");
    obj.image30:setName("image30");

    obj.button37 = GUI.fromHandle(_obj_newObject("button"));
    obj.button37:setParent(obj.POPPergaminho3);
    obj.button37:setLeft(20);
    obj.button37:setTop(390);
    obj.button37:setFontSize(20);
    obj.button37:setOpacity(0.0);
    obj.button37:setHeight(120);
    obj.button37:setWidth(150);
    obj.button37:setText("");
    obj.button37:setFontColor("White");
    obj.button37:setName("button37");

 
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
						


    obj.label81 = GUI.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.scrollBox2);
    obj.label81:setLeft(390);
    obj.label81:setTop(620);
    obj.label81:setWidth(85);
    obj.label81:setHeight(80);
    obj.label81:setScale(1.2);
    obj.label81:setText("Selo");
    obj.label81:setName("label81");

    obj.button38 = GUI.fromHandle(_obj_newObject("button"));
    obj.button38:setParent(obj.scrollBox2);
    obj.button38:setLeft(250);
    obj.button38:setTop(550);
    obj.button38:setWidth(105);
    obj.button38:setHeight(85);
    obj.button38:setOpacity(0.1);
    obj.button38:setText("");
    obj.button38:setName("button38");

    obj.POPDiverso = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPDiverso:setParent(obj.tab1);
    obj.POPDiverso:setName("POPDiverso");
    obj.POPDiverso:setVisible(false);
    obj.POPDiverso:setLeft(1);
    obj.POPDiverso:setTop(40);
    obj.POPDiverso:setWidth(1130);
    obj.POPDiverso:setHeight(400);

    obj.image31 = GUI.fromHandle(_obj_newObject("image"));
    obj.image31:setParent(obj.POPDiverso);
    obj.image31:setLeft(1);
    obj.image31:setTop(1);
    obj.image31:setWidth(1110);
    obj.image31:setHeight(350);
    obj.image31:setSRC("/imagens/6.png");
    obj.image31:setName("image31");

    obj.edit166 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit166:setParent(obj.POPDiverso);
    obj.edit166:setWidth(120);
    obj.edit166:setHeight(18);
    obj.edit166:setLeft(320);
    obj.edit166:setTop(70);
    obj.edit166:setCanFocus(false);
    obj.edit166:setScale(1.2);
    obj.edit166:setHorzTextAlign("center");
    obj.edit166:setField("NomeEDC");
    obj.edit166:setName("edit166");

    obj.edit167 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit167:setParent(obj.POPDiverso);
    obj.edit167:setWidth(60);
    obj.edit167:setHeight(22);
    obj.edit167:setLeft(535);
    obj.edit167:setTop(70);
    obj.edit167:setCanFocus(false);
    obj.edit167:setHorzTextAlign("center");
    obj.edit167:setType("number");
    obj.edit167:setField("EstilodeCombateNivel");
    obj.edit167:setName("edit167");

    obj.edit168 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit168:setParent(obj.POPDiverso);
    obj.edit168:setWidth(60);
    obj.edit168:setHeight(18);
    obj.edit168:setLeft(185);
    obj.edit168:setTop(106);
    obj.edit168:setCanFocus(false);
    obj.edit168:setType("number");
    obj.edit168:setField("DTaijutsu");
    obj.edit168:setName("edit168");

    obj.edit169 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit169:setParent(obj.POPDiverso);
    obj.edit169:setWidth(60);
    obj.edit169:setHeight(18);
    obj.edit169:setLeft(185);
    obj.edit169:setTop(126);
    obj.edit169:setCanFocus(false);
    obj.edit169:setType("number");
    obj.edit169:setField("DNinjutsu");
    obj.edit169:setName("edit169");

    obj.edit170 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit170:setParent(obj.POPDiverso);
    obj.edit170:setWidth(60);
    obj.edit170:setHeight(18);
    obj.edit170:setLeft(185);
    obj.edit170:setTop(146);
    obj.edit170:setCanFocus(false);
    obj.edit170:setType("number");
    obj.edit170:setField("DGenjutsu");
    obj.edit170:setName("edit170");

    obj.edit171 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit171:setParent(obj.POPDiverso);
    obj.edit171:setWidth(60);
    obj.edit171:setHeight(18);
    obj.edit171:setLeft(185);
    obj.edit171:setTop(166);
    obj.edit171:setCanFocus(false);
    obj.edit171:setType("number");
    obj.edit171:setField("DDA");
    obj.edit171:setName("edit171");

    obj.edit172 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit172:setParent(obj.POPDiverso);
    obj.edit172:setWidth(60);
    obj.edit172:setHeight(18);
    obj.edit172:setLeft(185);
    obj.edit172:setTop(186);
    obj.edit172:setCanFocus(false);
    obj.edit172:setType("number");
    obj.edit172:setField("DDE");
    obj.edit172:setName("edit172");

    obj.edit173 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit173:setParent(obj.POPDiverso);
    obj.edit173:setWidth(60);
    obj.edit173:setHeight(18);
    obj.edit173:setLeft(185);
    obj.edit173:setTop(206);
    obj.edit173:setCanFocus(false);
    obj.edit173:setType("number");
    obj.edit173:setField("DHP");
    obj.edit173:setName("edit173");

    obj.edit174 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit174:setParent(obj.POPDiverso);
    obj.edit174:setWidth(60);
    obj.edit174:setHeight(18);
    obj.edit174:setLeft(185);
    obj.edit174:setTop(226);
    obj.edit174:setCanFocus(false);
    obj.edit174:setType("number");
    obj.edit174:setField("DChakra");
    obj.edit174:setName("edit174");

    obj.edit175 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit175:setParent(obj.POPDiverso);
    obj.edit175:setWidth(60);
    obj.edit175:setHeight(18);
    obj.edit175:setLeft(185);
    obj.edit175:setTop(246);
    obj.edit175:setCanFocus(false);
    obj.edit175:setType("number");
    obj.edit175:setField("DReiatsu");
    obj.edit175:setName("edit175");

    obj.edit176 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit176:setParent(obj.POPDiverso);
    obj.edit176:setWidth(60);
    obj.edit176:setHeight(18);
    obj.edit176:setLeft(185);
    obj.edit176:setTop(266);
    obj.edit176:setCanFocus(false);
    obj.edit176:setType("number");
    obj.edit176:setField("DOutro");
    obj.edit176:setName("edit176");

    obj.edit177 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit177:setParent(obj.POPDiverso);
    obj.edit177:setWidth(60);
    obj.edit177:setHeight(18);
    obj.edit177:setLeft(365);
    obj.edit177:setTop(106);
    obj.edit177:setCanFocus(false);
    obj.edit177:setType("number");
    obj.edit177:setField("DAcertoTai");
    obj.edit177:setName("edit177");

    obj.edit178 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit178:setParent(obj.POPDiverso);
    obj.edit178:setWidth(60);
    obj.edit178:setHeight(18);
    obj.edit178:setLeft(365);
    obj.edit178:setTop(126);
    obj.edit178:setCanFocus(false);
    obj.edit178:setType("number");
    obj.edit178:setField("DAcertoNin");
    obj.edit178:setName("edit178");

    obj.edit179 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit179:setParent(obj.POPDiverso);
    obj.edit179:setWidth(60);
    obj.edit179:setHeight(18);
    obj.edit179:setLeft(365);
    obj.edit179:setTop(146);
    obj.edit179:setCanFocus(false);
    obj.edit179:setType("number");
    obj.edit179:setField("DAcertoGen");
    obj.edit179:setName("edit179");

    obj.edit180 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit180:setParent(obj.POPDiverso);
    obj.edit180:setWidth(60);
    obj.edit180:setHeight(18);
    obj.edit180:setLeft(365);
    obj.edit180:setTop(166);
    obj.edit180:setCanFocus(false);
    obj.edit180:setType("number");
    obj.edit180:setField("DBloqueio");
    obj.edit180:setName("edit180");

    obj.edit181 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit181:setParent(obj.POPDiverso);
    obj.edit181:setWidth(60);
    obj.edit181:setHeight(18);
    obj.edit181:setLeft(365);
    obj.edit181:setTop(186);
    obj.edit181:setCanFocus(false);
    obj.edit181:setType("number");
    obj.edit181:setField("DEsquiva");
    obj.edit181:setName("edit181");

    obj.edit182 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit182:setParent(obj.POPDiverso);
    obj.edit182:setWidth(60);
    obj.edit182:setHeight(18);
    obj.edit182:setLeft(365);
    obj.edit182:setTop(206);
    obj.edit182:setCanFocus(false);
    obj.edit182:setType("number");
    obj.edit182:setField("DCriticalTai");
    obj.edit182:setName("edit182");

    obj.edit183 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit183:setParent(obj.POPDiverso);
    obj.edit183:setWidth(60);
    obj.edit183:setHeight(18);
    obj.edit183:setLeft(365);
    obj.edit183:setTop(226);
    obj.edit183:setCanFocus(false);
    obj.edit183:setType("number");
    obj.edit183:setField("DCriticalNin");
    obj.edit183:setName("edit183");

    obj.edit184 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit184:setParent(obj.POPDiverso);
    obj.edit184:setWidth(60);
    obj.edit184:setHeight(18);
    obj.edit184:setLeft(365);
    obj.edit184:setTop(246);
    obj.edit184:setCanFocus(false);
    obj.edit184:setType("number");
    obj.edit184:setField("DCriticalGen");
    obj.edit184:setName("edit184");

    obj.edit185 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit185:setParent(obj.POPDiverso);
    obj.edit185:setWidth(60);
    obj.edit185:setHeight(18);
    obj.edit185:setLeft(365);
    obj.edit185:setTop(266);
    obj.edit185:setCanFocus(false);
    obj.edit185:setType("number");
    obj.edit185:setField("DTurnos");
    obj.edit185:setName("edit185");

    obj.edit186 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit186:setParent(obj.POPDiverso);
    obj.edit186:setWidth(60);
    obj.edit186:setHeight(18);
    obj.edit186:setLeft(560);
    obj.edit186:setTop(106);
    obj.edit186:setCanFocus(false);
    obj.edit186:setType("number");
    obj.edit186:setField("ChakraBiju");
    obj.edit186:setName("edit186");

    obj.edit187 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit187:setParent(obj.POPDiverso);
    obj.edit187:setWidth(60);
    obj.edit187:setHeight(18);
    obj.edit187:setLeft(560);
    obj.edit187:setTop(126);
    obj.edit187:setCanFocus(false);
    obj.edit187:setType("number");
    obj.edit187:setField("ChakraBranco");
    obj.edit187:setName("edit187");

    obj.edit188 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit188:setParent(obj.POPDiverso);
    obj.edit188:setWidth(60);
    obj.edit188:setHeight(18);
    obj.edit188:setLeft(560);
    obj.edit188:setTop(146);
    obj.edit188:setCanFocus(false);
    obj.edit188:setType("number");
    obj.edit188:setField("ChakraPreto");
    obj.edit188:setName("edit188");

    obj.edit189 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit189:setParent(obj.POPDiverso);
    obj.edit189:setWidth(60);
    obj.edit189:setHeight(18);
    obj.edit189:setLeft(560);
    obj.edit189:setTop(166);
    obj.edit189:setCanFocus(false);
    obj.edit189:setType("number");
    obj.edit189:setField("Hadou");
    obj.edit189:setName("edit189");

    obj.edit190 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit190:setParent(obj.POPDiverso);
    obj.edit190:setWidth(60);
    obj.edit190:setHeight(18);
    obj.edit190:setLeft(560);
    obj.edit190:setTop(186);
    obj.edit190:setCanFocus(false);
    obj.edit190:setType("number");
    obj.edit190:setField("HadouNegro");
    obj.edit190:setName("edit190");

    obj.edit191 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit191:setParent(obj.POPDiverso);
    obj.edit191:setWidth(60);
    obj.edit191:setHeight(18);
    obj.edit191:setLeft(560);
    obj.edit191:setTop(206);
    obj.edit191:setCanFocus(false);
    obj.edit191:setType("number");
    obj.edit191:setField("ChakraNaturalBonus");
    obj.edit191:setName("edit191");

    obj.edit192 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit192:setParent(obj.POPDiverso);
    obj.edit192:setWidth(60);
    obj.edit192:setHeight(18);
    obj.edit192:setLeft(560);
    obj.edit192:setTop(226);
    obj.edit192:setCanFocus(false);
    obj.edit192:setType("number");
    obj.edit192:setField("ChakraRoxo");
    obj.edit192:setName("edit192");

    obj.edit193 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit193:setParent(obj.POPDiverso);
    obj.edit193:setWidth(60);
    obj.edit193:setHeight(18);
    obj.edit193:setLeft(560);
    obj.edit193:setTop(246);
    obj.edit193:setCanFocus(false);
    obj.edit193:setType("number");
    obj.edit193:setField("DReducao");
    obj.edit193:setName("edit193");

    obj.edit194 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit194:setParent(obj.POPDiverso);
    obj.edit194:setWidth(60);
    obj.edit194:setHeight(18);
    obj.edit194:setLeft(560);
    obj.edit194:setTop(266);
    obj.edit194:setCanFocus(false);
    obj.edit194:setType("number");
    obj.edit194:setField("DEnergia");
    obj.edit194:setName("edit194");

    obj.edit195 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit195:setParent(obj.POPDiverso);
    obj.edit195:setWidth(120);
    obj.edit195:setHeight(18);
    obj.edit195:setLeft(655);
    obj.edit195:setTop(133);
    obj.edit195:setHitTest(false);
    obj.edit195:setHorzTextAlign("center");
    obj.edit195:setFontColor("Violet");
    obj.edit195:setCanFocus(false);
    obj.edit195:setField("ChakraNatural");
    obj.edit195:setName("edit195");

    obj.edit196 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit196:setParent(obj.POPDiverso);
    obj.edit196:setWidth(120);
    obj.edit196:setHeight(18);
    obj.edit196:setLeft(655);
    obj.edit196:setTop(70);
    obj.edit196:setHitTest(true);
    obj.edit196:setHorzTextAlign("center");
    obj.edit196:setVisible(false);
    obj.edit196:setFontColor("green");
    obj.edit196:setField("DRegeneradorEnergia");
    obj.edit196:setName("edit196");

    obj.edit197 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit197:setParent(obj.POPDiverso);
    obj.edit197:setWidth(60);
    obj.edit197:setHeight(13);
    obj.edit197:setLeft(720);
    obj.edit197:setTop(162);
    obj.edit197:setFontSize(9);
    obj.edit197:setHorzTextAlign("center");
    obj.edit197:setFontColor("red");
    obj.edit197:setCanFocus(false);
    obj.edit197:setType("number");
    obj.edit197:setField("DIntensidade");
    obj.edit197:setName("edit197");

    obj.edit198 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit198:setParent(obj.POPDiverso);
    obj.edit198:setWidth(60);
    obj.edit198:setHeight(13);
    obj.edit198:setLeft(720);
    obj.edit198:setTop(177);
    obj.edit198:setFontSize(9);
    obj.edit198:setHorzTextAlign("center");
    obj.edit198:setFontColor("cyan");
    obj.edit198:setCanFocus(false);
    obj.edit198:setType("number");
    obj.edit198:setField("DCustoReal");
    obj.edit198:setName("edit198");

    obj.edit199 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit199:setParent(obj.POPDiverso);
    obj.edit199:setWidth(60);
    obj.edit199:setHeight(13);
    obj.edit199:setLeft(720);
    obj.edit199:setTop(192);
    obj.edit199:setFontSize(9);
    obj.edit199:setHorzTextAlign("center");
    obj.edit199:setFontColor("green");
    obj.edit199:setCanFocus(false);
    obj.edit199:setType("number");
    obj.edit199:setField("DEnergiaCusto");
    obj.edit199:setName("edit199");

    obj.edit200 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit200:setParent(obj.POPDiverso);
    obj.edit200:setWidth(60);
    obj.edit200:setHeight(13);
    obj.edit200:setLeft(720);
    obj.edit200:setTop(207);
    obj.edit200:setFontSize(9);
    obj.edit200:setHorzTextAlign("center");
    obj.edit200:setCanFocus(false);
    obj.edit200:setField("DTipo");
    obj.edit200:setName("edit200");

    obj.button39 = GUI.fromHandle(_obj_newObject("button"));
    obj.button39:setParent(obj.POPDiverso);
    obj.button39:setLeft(675);
    obj.button39:setTop(223);
    obj.button39:setFontSize(20);
    obj.button39:setOpacity(0.5);
    obj.button39:setHeight(65);
    obj.button39:setWidth(70);
    obj.button39:setFontColor("White");
    obj.button39:setName("button39");

    obj.image32 = GUI.fromHandle(_obj_newObject("image"));
    obj.image32:setParent(obj.POPDiverso);
    obj.image32:setLeft(675);
    obj.image32:setTop(220);
    obj.image32:setWidth(70);
    obj.image32:setHeight(70);
    obj.image32:setSRC("/imagens/Jutsu.png");
    obj.image32:setName("image32");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj.POPDiverso);
    obj.dataLink39:setFields({'ChakraTotal', 'ChakraNaturalBonus'});
    obj.dataLink39:setName("dataLink39");

    obj.textEditor7 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.POPDiverso);
    obj.textEditor7:setLeft(800);
    obj.textEditor7:setTop(106);
    obj.textEditor7:setWidth(245);
    obj.textEditor7:setCanFocus(false);
    obj.textEditor7:setHeight(170);
    obj.textEditor7:setField("DEDC");
    obj.textEditor7:setName("textEditor7");

    obj.button40 = GUI.fromHandle(_obj_newObject("button"));
    obj.button40:setParent(obj.POPDiverso);
    obj.button40:setLeft(975);
    obj.button40:setTop(235);
    obj.button40:setScale(1.0);
    obj.button40:setWidth(70);
    obj.button40:setHeight(40);
    obj.button40:setOpacity(1.0);
    obj.button40:setVisible(true);
    obj.button40:setText("Passiva");
    obj.button40:setName("button40");

    obj.button41 = GUI.fromHandle(_obj_newObject("button"));
    obj.button41:setParent(obj.tab1);
    obj.button41:setLeft(650);
    obj.button41:setTop(570);
    obj.button41:setWidth(146);
    obj.button41:setHeight(100);
    obj.button41:setOpacity(0.0);
    obj.button41:setText("");
    obj.button41:setName("button41");

    obj.EstilodeCombate = GUI.fromHandle(_obj_newObject("popup"));
    obj.EstilodeCombate:setParent(obj.tab1);
    obj.EstilodeCombate:setName("EstilodeCombate");
    obj.EstilodeCombate:setVisible(false);
    obj.EstilodeCombate:setLeft(1);
    obj.EstilodeCombate:setTop(40);
    obj.EstilodeCombate:setWidth(1000);
    obj.EstilodeCombate:setHeight(620);

    obj.scrollBox6 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox6:setParent(obj.EstilodeCombate);
    obj.scrollBox6:setAlign("client");
    obj.scrollBox6:setName("scrollBox6");

    obj.button42 = GUI.fromHandle(_obj_newObject("button"));
    obj.button42:setParent(obj.scrollBox6);
    obj.button42:setText("Novo Estilo de combate");
    obj.button42:setWidth(125);
    obj.button42:setHeight(40);
    obj.button42:setLeft(10);
    obj.button42:setTop(10);
    obj.button42:setName("button42");

    obj.rclEstiloCombate = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclEstiloCombate:setParent(obj.scrollBox6);
    obj.rclEstiloCombate:setName("rclEstiloCombate");
    obj.rclEstiloCombate:setField("ListaEstiloCombate");
    obj.rclEstiloCombate:setTemplateForm("frmListaEstiloCombate");
    obj.rclEstiloCombate:setWidth(880);
    obj.rclEstiloCombate:setHeight(570);
    obj.rclEstiloCombate:setLeft(10);
    obj.rclEstiloCombate:setTop(60);
    obj.rclEstiloCombate:setSelectable(true);

    obj.dscEstiloCombate = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.dscEstiloCombate:setParent(obj.scrollBox6);
    obj.dscEstiloCombate:setName("dscEstiloCombate");
    obj.dscEstiloCombate:setVisible(false);
    obj.dscEstiloCombate:setWidth(820);
    obj.dscEstiloCombate:setHeight(620);
    obj.dscEstiloCombate:setLeft(200);
    obj.dscEstiloCombate:setTop(1);

    obj.scrollBox7 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox7:setParent(obj.dscEstiloCombate);
    obj.scrollBox7:setAlign("client");
    obj.scrollBox7:setName("scrollBox7");

    obj.image33 = GUI.fromHandle(_obj_newObject("image"));
    obj.image33:setParent(obj.scrollBox7);
    obj.image33:setLeft(1);
    obj.image33:setTop(1);
    obj.image33:setWidth(800);
    obj.image33:setHeight(600);
    obj.image33:setEditable(false);
    obj.image33:setSRC("/imagens/13.png");
    obj.image33:setName("image33");

    obj.edit201 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit201:setParent(obj.scrollBox7);
    obj.edit201:setLeft(100);
    obj.edit201:setTop(7);
    obj.edit201:setVisible(false);
    obj.edit201:setWidth(160);
    obj.edit201:setHeight(25);
    obj.edit201:setField("PrefixoEDC");
    obj.edit201:setName("edit201");

    obj.edit202 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit202:setParent(obj.scrollBox7);
    obj.edit202:setLeft(200);
    obj.edit202:setTop(7);
    obj.edit202:setWidth(160);
    obj.edit202:setHeight(25);
    obj.edit202:setField("NomeEDC");
    obj.edit202:setName("edit202");

    obj.button43 = GUI.fromHandle(_obj_newObject("button"));
    obj.button43:setParent(obj.scrollBox7);
    obj.button43:setWidth(80);
    obj.button43:setHeight(25);
    obj.button43:setLeft(500);
    obj.button43:setTop(7);
    obj.button43:setFontColor("red");
    obj.button43:setText("DELETAR");
    obj.button43:setName("button43");

    obj.edit203 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit203:setParent(obj.scrollBox7);
    obj.edit203:setLeft(440);
    obj.edit203:setTop(7);
    obj.edit203:setWidth(40);
    obj.edit203:setHeight(25);
    obj.edit203:setField("LevelEDC");
    obj.edit203:setName("edit203");

    obj.edit204 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit204:setParent(obj.scrollBox7);
    obj.edit204:setLeft(140);
    obj.edit204:setTop(37);
    obj.edit204:setWidth(55);
    obj.edit204:setHeight(18);
    obj.edit204:setField("TaiEDC");
    obj.edit204:setName("edit204");

    obj.edit205 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit205:setParent(obj.scrollBox7);
    obj.edit205:setLeft(140);
    obj.edit205:setTop(57);
    obj.edit205:setWidth(55);
    obj.edit205:setHeight(18);
    obj.edit205:setField("NinEDC");
    obj.edit205:setName("edit205");

    obj.edit206 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit206:setParent(obj.scrollBox7);
    obj.edit206:setLeft(140);
    obj.edit206:setTop(77);
    obj.edit206:setWidth(55);
    obj.edit206:setHeight(18);
    obj.edit206:setField("GenEDC");
    obj.edit206:setName("edit206");

    obj.edit207 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit207:setParent(obj.scrollBox7);
    obj.edit207:setLeft(140);
    obj.edit207:setTop(97);
    obj.edit207:setWidth(55);
    obj.edit207:setHeight(18);
    obj.edit207:setField("DAEDC");
    obj.edit207:setName("edit207");

    obj.edit208 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit208:setParent(obj.scrollBox7);
    obj.edit208:setLeft(140);
    obj.edit208:setTop(117);
    obj.edit208:setWidth(55);
    obj.edit208:setHeight(18);
    obj.edit208:setField("EleEDC");
    obj.edit208:setName("edit208");

    obj.edit209 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit209:setParent(obj.scrollBox7);
    obj.edit209:setLeft(140);
    obj.edit209:setTop(137);
    obj.edit209:setWidth(55);
    obj.edit209:setHeight(18);
    obj.edit209:setField("HPEDC");
    obj.edit209:setName("edit209");

    obj.edit210 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit210:setParent(obj.scrollBox7);
    obj.edit210:setLeft(140);
    obj.edit210:setTop(157);
    obj.edit210:setWidth(55);
    obj.edit210:setHeight(18);
    obj.edit210:setField("ChakraEDC");
    obj.edit210:setName("edit210");

    obj.edit211 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit211:setParent(obj.scrollBox7);
    obj.edit211:setLeft(140);
    obj.edit211:setTop(177);
    obj.edit211:setWidth(55);
    obj.edit211:setHeight(18);
    obj.edit211:setField("ReiatsuEDC");
    obj.edit211:setName("edit211");

    obj.edit212 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit212:setParent(obj.scrollBox7);
    obj.edit212:setLeft(140);
    obj.edit212:setTop(197);
    obj.edit212:setWidth(55);
    obj.edit212:setHeight(18);
    obj.edit212:setField("OutroEDC");
    obj.edit212:setName("edit212");

    obj.edit213 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit213:setParent(obj.scrollBox7);
    obj.edit213:setLeft(320);
    obj.edit213:setTop(37);
    obj.edit213:setWidth(55);
    obj.edit213:setHeight(18);
    obj.edit213:setField("ATEDC");
    obj.edit213:setName("edit213");

    obj.edit214 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit214:setParent(obj.scrollBox7);
    obj.edit214:setLeft(320);
    obj.edit214:setTop(57);
    obj.edit214:setWidth(55);
    obj.edit214:setHeight(18);
    obj.edit214:setField("ANEDC");
    obj.edit214:setName("edit214");

    obj.edit215 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit215:setParent(obj.scrollBox7);
    obj.edit215:setLeft(320);
    obj.edit215:setTop(77);
    obj.edit215:setWidth(55);
    obj.edit215:setHeight(18);
    obj.edit215:setField("AGEDC");
    obj.edit215:setName("edit215");

    obj.edit216 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit216:setParent(obj.scrollBox7);
    obj.edit216:setLeft(320);
    obj.edit216:setTop(97);
    obj.edit216:setWidth(55);
    obj.edit216:setHeight(18);
    obj.edit216:setField("BloqEDC");
    obj.edit216:setName("edit216");

    obj.edit217 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit217:setParent(obj.scrollBox7);
    obj.edit217:setLeft(320);
    obj.edit217:setTop(117);
    obj.edit217:setWidth(55);
    obj.edit217:setHeight(18);
    obj.edit217:setField("EsqEDC");
    obj.edit217:setName("edit217");

    obj.edit218 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit218:setParent(obj.scrollBox7);
    obj.edit218:setLeft(320);
    obj.edit218:setTop(137);
    obj.edit218:setWidth(55);
    obj.edit218:setHeight(18);
    obj.edit218:setField("CRTaiEDC");
    obj.edit218:setName("edit218");

    obj.edit219 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit219:setParent(obj.scrollBox7);
    obj.edit219:setLeft(320);
    obj.edit219:setTop(157);
    obj.edit219:setWidth(55);
    obj.edit219:setHeight(18);
    obj.edit219:setField("CRNinEDC");
    obj.edit219:setName("edit219");

    obj.edit220 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit220:setParent(obj.scrollBox7);
    obj.edit220:setLeft(320);
    obj.edit220:setTop(177);
    obj.edit220:setWidth(55);
    obj.edit220:setHeight(18);
    obj.edit220:setField("CRGenEDC");
    obj.edit220:setName("edit220");

    obj.edit221 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit221:setParent(obj.scrollBox7);
    obj.edit221:setLeft(320);
    obj.edit221:setTop(197);
    obj.edit221:setWidth(55);
    obj.edit221:setHeight(18);
    obj.edit221:setField("TurnosEDC");
    obj.edit221:setName("edit221");

    obj.edit222 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit222:setParent(obj.scrollBox7);
    obj.edit222:setLeft(500);
    obj.edit222:setTop(37);
    obj.edit222:setWidth(55);
    obj.edit222:setHeight(18);
    obj.edit222:setField("ChakraBijuEDC");
    obj.edit222:setName("edit222");

    obj.edit223 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit223:setParent(obj.scrollBox7);
    obj.edit223:setLeft(500);
    obj.edit223:setTop(57);
    obj.edit223:setWidth(55);
    obj.edit223:setHeight(18);
    obj.edit223:setField("ChakraBrancoEDC");
    obj.edit223:setName("edit223");

    obj.edit224 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit224:setParent(obj.scrollBox7);
    obj.edit224:setLeft(500);
    obj.edit224:setTop(77);
    obj.edit224:setWidth(55);
    obj.edit224:setHeight(18);
    obj.edit224:setField("ChakraPretoEDC");
    obj.edit224:setName("edit224");

    obj.edit225 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit225:setParent(obj.scrollBox7);
    obj.edit225:setLeft(500);
    obj.edit225:setTop(97);
    obj.edit225:setWidth(55);
    obj.edit225:setHeight(18);
    obj.edit225:setField("HadouEDC");
    obj.edit225:setName("edit225");

    obj.edit226 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit226:setParent(obj.scrollBox7);
    obj.edit226:setLeft(500);
    obj.edit226:setTop(117);
    obj.edit226:setWidth(55);
    obj.edit226:setHeight(18);
    obj.edit226:setField("HadouNegroEDC");
    obj.edit226:setName("edit226");

    obj.edit227 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit227:setParent(obj.scrollBox7);
    obj.edit227:setLeft(500);
    obj.edit227:setTop(137);
    obj.edit227:setWidth(55);
    obj.edit227:setHeight(18);
    obj.edit227:setField("ChakraNaturalEDC");
    obj.edit227:setName("edit227");

    obj.edit228 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit228:setParent(obj.scrollBox7);
    obj.edit228:setLeft(500);
    obj.edit228:setTop(157);
    obj.edit228:setWidth(55);
    obj.edit228:setHeight(18);
    obj.edit228:setField("ChakraRoxoEDC");
    obj.edit228:setName("edit228");

    obj.edit229 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit229:setParent(obj.scrollBox7);
    obj.edit229:setLeft(500);
    obj.edit229:setTop(177);
    obj.edit229:setWidth(55);
    obj.edit229:setHeight(18);
    obj.edit229:setField("ReducaoEDC");
    obj.edit229:setName("edit229");

    obj.edit230 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit230:setParent(obj.scrollBox7);
    obj.edit230:setLeft(500);
    obj.edit230:setTop(197);
    obj.edit230:setWidth(55);
    obj.edit230:setHeight(18);
    obj.edit230:setField("EnergiaEDC");
    obj.edit230:setName("edit230");

    obj.edit231 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit231:setParent(obj.scrollBox7);
    obj.edit231:setLeft(600);
    obj.edit231:setTop(70);
    obj.edit231:setWidth(120);
    obj.edit231:setHeight(18);
    obj.edit231:setFontColor("Purple");
    obj.edit231:setHorzTextAlign("center");
    obj.edit231:setCanFocus(false);
    obj.edit231:setField("ChakraNaturalTotalEDC");
    obj.edit231:setName("edit231");

    obj.edit232 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit232:setParent(obj.scrollBox7);
    obj.edit232:setWidth(180);
    obj.edit232:setHeight(18);
    obj.edit232:setLeft(595);
    obj.edit232:setTop(197);
    obj.edit232:setHitTest(true);
    obj.edit232:setHorzTextAlign("center");
    obj.edit232:setFontColor("green");
    obj.edit232:setField("RegeneradorEnergiaEDC");
    obj.edit232:setName("edit232");

    obj.button44 = GUI.fromHandle(_obj_newObject("button"));
    obj.button44:setParent(obj.scrollBox7);
    obj.button44:setLeft(20);
    obj.button44:setTop(450);
    obj.button44:setHeight(30);
    obj.button44:setWidth(180);
    obj.button44:setText("Passiva Estilo de Combate");
    obj.button44:setName("button44");

    obj.label82 = GUI.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.scrollBox7);
    obj.label82:setLeft(460);
    obj.label82:setTop(270);
    obj.label82:setWidth(55);
    obj.label82:setHeight(20);
    obj.label82:setFontSize(16);
    obj.label82:setText("Dano");
    obj.label82:setName("label82");

    obj.edit233 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit233:setParent(obj.scrollBox7);
    obj.edit233:setLeft(505);
    obj.edit233:setTop(270);
    obj.edit233:setWidth(70);
    obj.edit233:setHeight(20);
    obj.edit233:setFontSize(12);
    obj.edit233:setField("DanoEDC");
    obj.edit233:setName("edit233");

    obj.label83 = GUI.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.scrollBox7);
    obj.label83:setLeft(580);
    obj.label83:setTop(270);
    obj.label83:setWidth(140);
    obj.label83:setHeight(20);
    obj.label83:setFontSize(16);
    obj.label83:setText("Dano Verdadeiro");
    obj.label83:setName("label83");

    obj.edit234 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit234:setParent(obj.scrollBox7);
    obj.edit234:setLeft(705);
    obj.edit234:setTop(270);
    obj.edit234:setWidth(70);
    obj.edit234:setHeight(20);
    obj.edit234:setFontSize(12);
    obj.edit234:setCanFocus(false);
    obj.edit234:setField("DanoVerdadeiroEDC");
    obj.edit234:setName("edit234");

    obj.label84 = GUI.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.scrollBox7);
    obj.label84:setLeft(460);
    obj.label84:setTop(300);
    obj.label84:setWidth(55);
    obj.label84:setHeight(20);
    obj.label84:setFontSize(14);
    obj.label84:setText("Tipo 1");
    obj.label84:setName("label84");

    obj.comboBox19 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox19:setParent(obj.scrollBox7);
    obj.comboBox19:setLeft(505);
    obj.comboBox19:setTop(300);
    obj.comboBox19:setWidth(100);
    obj.comboBox19:setHeight(18);
    obj.comboBox19:setField("Tipo1EDC");
    obj.comboBox19:setVisible(true);
    obj.comboBox19:setItems({'Nulo', 'Tai', 'Nin', 'Gen', 'Elemental', 'DanoArmado', 'Defensivo', 'Selamento', 'Outros','M/Tai', 'M/Nin', 'M/Gen', 'M/Elemental', 'M/DA', 'Kunai', 'Shuriken', 'Shuriken Fuuma', 'Kunai Gigante', 'Senbon', 'Papel Bomba', 'Ginso Explosivo', 'Veneno', 'Bandagem'});
    obj.comboBox19:setName("comboBox19");

    obj.label85 = GUI.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.scrollBox7);
    obj.label85:setLeft(610);
    obj.label85:setTop(300);
    obj.label85:setWidth(55);
    obj.label85:setHeight(20);
    obj.label85:setFontSize(14);
    obj.label85:setText("Tipo 2");
    obj.label85:setName("label85");

    obj.comboBox20 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox20:setParent(obj.scrollBox7);
    obj.comboBox20:setLeft(655);
    obj.comboBox20:setTop(300);
    obj.comboBox20:setWidth(100);
    obj.comboBox20:setHeight(18);
    obj.comboBox20:setField("Tipo2EDC");
    obj.comboBox20:setVisible(true);
    obj.comboBox20:setItems({'Nulo', 'Tai', 'Nin', 'Gen', 'Elemental', 'DanoArmado', 'Defensivo', 'Selamento', 'Outros','M/Tai', 'M/Nin', 'M/Gen', 'M/Elemental', 'M/DA', 'Kunai', 'Shuriken', 'Shuriken Fuuma', 'Kunai Gigante', 'Senbon', 'Papel Bomba', 'Ginso Explosivo', 'Veneno', 'Bandagem'});
    obj.comboBox20:setName("comboBox20");

    obj.label86 = GUI.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.scrollBox7);
    obj.label86:setLeft(460);
    obj.label86:setTop(330);
    obj.label86:setWidth(55);
    obj.label86:setHeight(20);
    obj.label86:setFontSize(16);
    obj.label86:setText("Custo");
    obj.label86:setName("label86");

    obj.edit235 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit235:setParent(obj.scrollBox7);
    obj.edit235:setLeft(505);
    obj.edit235:setTop(330);
    obj.edit235:setWidth(70);
    obj.edit235:setHeight(20);
    obj.edit235:setFontSize(12);
    obj.edit235:setField("CustoEDC");
    obj.edit235:setName("edit235");

    obj.label87 = GUI.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.scrollBox7);
    obj.label87:setLeft(580);
    obj.label87:setTop(330);
    obj.label87:setWidth(140);
    obj.label87:setHeight(20);
    obj.label87:setFontSize(16);
    obj.label87:setText("Custo Real");
    obj.label87:setName("label87");

    obj.edit236 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit236:setParent(obj.scrollBox7);
    obj.edit236:setLeft(665);
    obj.edit236:setTop(330);
    obj.edit236:setWidth(70);
    obj.edit236:setHeight(20);
    obj.edit236:setFontSize(12);
    obj.edit236:setCanFocus(false);
    obj.edit236:setField("CustoRealEDC");
    obj.edit236:setName("edit236");

    obj.label88 = GUI.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.scrollBox7);
    obj.label88:setLeft(460);
    obj.label88:setTop(360);
    obj.label88:setWidth(55);
    obj.label88:setHeight(22);
    obj.label88:setFontSize(16);
    obj.label88:setText("Energia");
    obj.label88:setName("label88");

    obj.edit237 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit237:setParent(obj.scrollBox7);
    obj.edit237:setLeft(520);
    obj.edit237:setTop(360);
    obj.edit237:setWidth(70);
    obj.edit237:setHeight(20);
    obj.edit237:setFontSize(12);
    obj.edit237:setField("EnergiaCustoEDC");
    obj.edit237:setName("edit237");

    obj.label89 = GUI.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.scrollBox7);
    obj.label89:setLeft(600);
    obj.label89:setTop(360);
    obj.label89:setWidth(80);
    obj.label89:setHeight(22);
    obj.label89:setFontColor("red");
    obj.label89:setFontSize(14);
    obj.label89:setText("Intensidade");
    obj.label89:setName("label89");

    obj.edit238 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit238:setParent(obj.scrollBox7);
    obj.edit238:setLeft(680);
    obj.edit238:setTop(360);
    obj.edit238:setWidth(70);
    obj.edit238:setHeight(20);
    obj.edit238:setCanFocus(false);
    obj.edit238:setFontColor("red");
    obj.edit238:setFontSize(12);
    obj.edit238:setField("IntensidadeEDC");
    obj.edit238:setName("edit238");

    obj.label90 = GUI.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.scrollBox7);
    obj.label90:setLeft(460);
    obj.label90:setTop(390);
    obj.label90:setWidth(55);
    obj.label90:setHeight(22);
    obj.label90:setFontSize(16);
    obj.label90:setText("Level");
    obj.label90:setName("label90");

    obj.edit239 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit239:setParent(obj.scrollBox7);
    obj.edit239:setLeft(520);
    obj.edit239:setTop(390);
    obj.edit239:setWidth(40);
    obj.edit239:setHeight(20);
    obj.edit239:setCanFocus(false);
    obj.edit239:setFontSize(12);
    obj.edit239:setField("LevelEDC");
    obj.edit239:setName("edit239");

    obj.textEditor8 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.scrollBox7);
    obj.textEditor8:setLeft(20);
    obj.textEditor8:setTop(265);
    obj.textEditor8:setWidth(430);
    obj.textEditor8:setHeight(180);
    obj.textEditor8:setField("DEDC");
    obj.textEditor8:setName("textEditor8");

    obj.image34 = GUI.fromHandle(_obj_newObject("image"));
    obj.image34:setParent(obj.scrollBox7);
    obj.image34:setLeft(350);
    obj.image34:setTop(450);
    obj.image34:setWidth(100);
    obj.image34:setHeight(100);
    obj.image34:setSRC("/imagens/Jutsu.png");
    obj.image34:setName("image34");

    obj.button45 = GUI.fromHandle(_obj_newObject("button"));
    obj.button45:setParent(obj.scrollBox7);
    obj.button45:setLeft(350);
    obj.button45:setTop(450);
    obj.button45:setFontSize(20);
    obj.button45:setOpacity(0.0);
    obj.button45:setHeight(100);
    obj.button45:setWidth(100);
    obj.button45:setText("Usar");
    obj.button45:setFontColor("White");
    obj.button45:setName("button45");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj.scrollBox7);
    obj.dataLink40:setFields({'Tipo1EDC', 'Tipo2EDC', 'DanoEDC', 'DanoVerdadeiroEDC', 'CustoEDC', 'LevelEDC'});
    obj.dataLink40:setName("dataLink40");

    obj.label91 = GUI.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.scrollBox7);
    obj.label91:setLeft(30);
    obj.label91:setTop(490);
    obj.label91:setWidth(230);
    obj.label91:setHeight(40);
    obj.label91:setFontFamily("Nyala");
    obj.label91:setFontSize(18);
    obj.label91:setText("Fortificação de jutsu 3D10 e 1d20");
    obj.label91:setName("label91");

    obj.edit240 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit240:setParent(obj.scrollBox7);
    obj.edit240:setLeft(30);
    obj.edit240:setTop(530);
    obj.edit240:setWidth(50);
    obj.edit240:setHeight(30);
    obj.edit240:setType("number");
    obj.edit240:setMin(1);
    obj.edit240:setMax(9);
    obj.edit240:setEnabled(false);
    obj.edit240:setVisible(true);
    obj.edit240:setHorzTextAlign("center");
    obj.edit240:setField("Upa1d10");
    obj.edit240:setName("edit240");

    obj.edit241 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit241:setParent(obj.scrollBox7);
    obj.edit241:setLeft(90);
    obj.edit241:setTop(530);
    obj.edit241:setWidth(50);
    obj.edit241:setHeight(30);
    obj.edit241:setType("number");
    obj.edit241:setMin(1);
    obj.edit241:setMax(9);
    obj.edit241:setEnabled(false);
    obj.edit241:setVisible(true);
    obj.edit241:setHorzTextAlign("center");
    obj.edit241:setField("Upa2d10");
    obj.edit241:setName("edit241");

    obj.edit242 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit242:setParent(obj.scrollBox7);
    obj.edit242:setLeft(150);
    obj.edit242:setTop(530);
    obj.edit242:setWidth(50);
    obj.edit242:setHeight(30);
    obj.edit242:setType("number");
    obj.edit242:setMin(1);
    obj.edit242:setMax(9);
    obj.edit242:setEnabled(false);
    obj.edit242:setVisible(true);
    obj.edit242:setHorzTextAlign("center");
    obj.edit242:setField("Upa3d10");
    obj.edit242:setName("edit242");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.scrollBox7);
    obj.rectangle7:setLeft(210);
    obj.rectangle7:setTop(530);
    obj.rectangle7:setWidth(50);
    obj.rectangle7:setHeight(30);
    obj.rectangle7:setColor("black");
    obj.rectangle7:setStrokeColor("red");
    obj.rectangle7:setStrokeSize(3);
    obj.rectangle7:setName("rectangle7");

    obj.edit243 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit243:setParent(obj.scrollBox7);
    obj.edit243:setLeft(210);
    obj.edit243:setTop(530);
    obj.edit243:setWidth(50);
    obj.edit243:setHeight(30);
    obj.edit243:setType("number");
    obj.edit243:setMin(1);
    obj.edit243:setMax(18);
    obj.edit243:setEnabled(false);
    obj.edit243:setVisible(true);
    obj.edit243:setTransparent(true);
    obj.edit243:setHorzTextAlign("center");
    obj.edit243:setField("Upa1d20");
    obj.edit243:setName("edit243");

    obj.btnUpaEDC = GUI.fromHandle(_obj_newObject("button"));
    obj.btnUpaEDC:setParent(obj.scrollBox7);
    obj.btnUpaEDC:setName("btnUpaEDC");
    obj.btnUpaEDC:setLeft(30);
    obj.btnUpaEDC:setTop(570);
    obj.btnUpaEDC:setWidth(230);
    obj.btnUpaEDC:setHeight(30);
    obj.btnUpaEDC:setFontFamily("Nyala");
    obj.btnUpaEDC:setFontSize(18);
    obj.btnUpaEDC:setText("Treinar");

    obj.edit244 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit244:setParent(obj.scrollBox7);
    obj.edit244:setLeft(560);
    obj.edit244:setTop(197);
    obj.edit244:setWidth(55);
    obj.edit244:setHeight(18);
    obj.edit244:setVisible(false);
    obj.edit244:setField("ATIVOEDC");
    obj.edit244:setName("edit244");

    obj.AtivaEDC = GUI.fromHandle(_obj_newObject("button"));
    obj.AtivaEDC:setParent(obj.scrollBox7);
    obj.AtivaEDC:setName("AtivaEDC");
    obj.AtivaEDC:setLeft(560);
    obj.AtivaEDC:setTop(120);
    obj.AtivaEDC:setHeight(30);
    obj.AtivaEDC:setWidth(240);
    obj.AtivaEDC:setText("Ativar");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj.scrollBox7);
    obj.dataLink41:setFields({'ATIVOEDC', 'NomeEDC'});
    obj.dataLink41:setName("dataLink41");

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj.scrollBox7);
    obj.dataLink42:setFields({'DanoEDC', 'LevelEDC'});
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj.scrollBox7);
    obj.dataLink43:setFields({'DanoEDC', 'LevelEDC', 'Dificuldade1d10EDC', 'Dificuldade2d10EDC', 'Dificuldade3d10EDC', 'Dificuldade1d20EDC', 'Upa1d10', 'Upa2d10', 'Upa3d10', 'Upa1d20'});
    obj.dataLink43:setName("dataLink43");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Chances");
    obj.tab2:setName("tab2");

    obj.scrollBox8 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox8:setParent(obj.tab2);
    obj.scrollBox8:setAlign("client");
    obj.scrollBox8:setName("scrollBox8");

    obj.image35 = GUI.fromHandle(_obj_newObject("image"));
    obj.image35:setParent(obj.scrollBox8);
    obj.image35:setLeft(1);
    obj.image35:setTop(1);
    obj.image35:setWidth(1000);
    obj.image35:setHeight(700);
    obj.image35:setSRC("/imagens/2.png");
    obj.image35:setName("image35");

    obj.edit245 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit245:setParent(obj.scrollBox8);
    obj.edit245:setLeft(230);
    obj.edit245:setTop(45);
    obj.edit245:setWidth(75);
    obj.edit245:setHeight(18);
    obj.edit245:setEnabled(false);
    obj.edit245:setHorzTextAlign("center");
    obj.edit245:setFontColor("#00FFFF");
    obj.edit245:setType("number");
    obj.edit245:setField("AcertoTaiTotal");
    obj.edit245:setName("edit245");

    obj.edit246 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit246:setParent(obj.scrollBox8);
    obj.edit246:setLeft(230);
    obj.edit246:setTop(70);
    obj.edit246:setWidth(75);
    obj.edit246:setHeight(18);
    obj.edit246:setEnabled(false);
    obj.edit246:setHorzTextAlign("center");
    obj.edit246:setFontColor("#00FFFF");
    obj.edit246:setType("number");
    obj.edit246:setField("AcertoNinTotal");
    obj.edit246:setName("edit246");

    obj.edit247 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit247:setParent(obj.scrollBox8);
    obj.edit247:setLeft(230);
    obj.edit247:setTop(95);
    obj.edit247:setWidth(75);
    obj.edit247:setHeight(18);
    obj.edit247:setEnabled(false);
    obj.edit247:setHorzTextAlign("center");
    obj.edit247:setFontColor("#00FFFF");
    obj.edit247:setType("number");
    obj.edit247:setField("AcertoGenTotal");
    obj.edit247:setName("edit247");

    obj.edit248 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit248:setParent(obj.scrollBox8);
    obj.edit248:setLeft(230);
    obj.edit248:setTop(145);
    obj.edit248:setWidth(75);
    obj.edit248:setHeight(18);
    obj.edit248:setEnabled(false);
    obj.edit248:setHorzTextAlign("center");
    obj.edit248:setFontColor("#00FFFF");
    obj.edit248:setType("number");
    obj.edit248:setField("EsquivaTotal");
    obj.edit248:setName("edit248");

    obj.edit249 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit249:setParent(obj.scrollBox8);
    obj.edit249:setLeft(230);
    obj.edit249:setTop(170);
    obj.edit249:setWidth(75);
    obj.edit249:setHeight(18);
    obj.edit249:setEnabled(false);
    obj.edit249:setHorzTextAlign("center");
    obj.edit249:setFontColor("#00FFFF");
    obj.edit249:setType("number");
    obj.edit249:setField("BloqueioTotal");
    obj.edit249:setName("edit249");

    obj.edit250 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit250:setParent(obj.scrollBox8);
    obj.edit250:setLeft(440	);
    obj.edit250:setTop(170);
    obj.edit250:setWidth(75);
    obj.edit250:setHeight(18);
    obj.edit250:setEnabled(false);
    obj.edit250:setHorzTextAlign("center");
    obj.edit250:setFontColor("#00FFFF");
    obj.edit250:setField("BloqueioReducaoForca");
    obj.edit250:setName("edit250");

    obj.edit251 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit251:setParent(obj.scrollBox8);
    obj.edit251:setLeft(230);
    obj.edit251:setTop(220);
    obj.edit251:setWidth(75);
    obj.edit251:setHeight(18);
    obj.edit251:setEnabled(false);
    obj.edit251:setHorzTextAlign("center");
    obj.edit251:setFontColor("#00FFFF");
    obj.edit251:setType("number");
    obj.edit251:setField("CRTaiTotal");
    obj.edit251:setName("edit251");

    obj.edit252 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit252:setParent(obj.scrollBox8);
    obj.edit252:setLeft(230);
    obj.edit252:setTop(245);
    obj.edit252:setWidth(75);
    obj.edit252:setHeight(18);
    obj.edit252:setEnabled(false);
    obj.edit252:setHorzTextAlign("center");
    obj.edit252:setFontColor("#00FFFF");
    obj.edit252:setType("number");
    obj.edit252:setField("CRNinTotal");
    obj.edit252:setName("edit252");

    obj.edit253 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit253:setParent(obj.scrollBox8);
    obj.edit253:setLeft(230);
    obj.edit253:setTop(270);
    obj.edit253:setWidth(75);
    obj.edit253:setHeight(18);
    obj.edit253:setEnabled(false);
    obj.edit253:setHorzTextAlign("center");
    obj.edit253:setFontColor("#00FFFF");
    obj.edit253:setType("number");
    obj.edit253:setField("CRGenTotal");
    obj.edit253:setName("edit253");

    obj.edit254 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit254:setParent(obj.scrollBox8);
    obj.edit254:setLeft(230);
    obj.edit254:setTop(320);
    obj.edit254:setWidth(75);
    obj.edit254:setHeight(18);
    obj.edit254:setEnabled(false);
    obj.edit254:setHorzTextAlign("center");
    obj.edit254:setFontColor("#00FFFF");
    obj.edit254:setType("number");
    obj.edit254:setField("TurnoTotal");
    obj.edit254:setName("edit254");

    obj.edit255 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit255:setParent(obj.scrollBox8);
    obj.edit255:setLeft(230);
    obj.edit255:setTop(370);
    obj.edit255:setWidth(75);
    obj.edit255:setHeight(18);
    obj.edit255:setEnabled(true);
    obj.edit255:setHorzTextAlign("center");
    obj.edit255:setFontColor("#00FFFF");
    obj.edit255:setType("number");
    obj.edit255:setField("Atletismo");
    obj.edit255:setName("edit255");

    obj.edit256 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit256:setParent(obj.scrollBox8);
    obj.edit256:setLeft(230);
    obj.edit256:setTop(395);
    obj.edit256:setWidth(75);
    obj.edit256:setHeight(18);
    obj.edit256:setEnabled(true);
    obj.edit256:setHorzTextAlign("center");
    obj.edit256:setFontColor("#00FFFF");
    obj.edit256:setType("number");
    obj.edit256:setField("Raciocinio");
    obj.edit256:setName("edit256");

    obj.edit257 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit257:setParent(obj.scrollBox8);
    obj.edit257:setLeft(230);
    obj.edit257:setTop(420);
    obj.edit257:setWidth(75);
    obj.edit257:setHeight(18);
    obj.edit257:setEnabled(true);
    obj.edit257:setHorzTextAlign("center");
    obj.edit257:setFontColor("#00FFFF");
    obj.edit257:setType("number");
    obj.edit257:setField("Percepcao");
    obj.edit257:setName("edit257");

    obj.edit258 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit258:setParent(obj.scrollBox8);
    obj.edit258:setLeft(230);
    obj.edit258:setTop(445);
    obj.edit258:setWidth(75);
    obj.edit258:setHeight(18);
    obj.edit258:setEnabled(true);
    obj.edit258:setHorzTextAlign("center");
    obj.edit258:setFontColor("#00FFFF");
    obj.edit258:setType("number");
    obj.edit258:setField("Furtividade");
    obj.edit258:setName("edit258");

    obj.edit259 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit259:setParent(obj.scrollBox8);
    obj.edit259:setLeft(230);
    obj.edit259:setTop(470);
    obj.edit259:setWidth(75);
    obj.edit259:setHeight(18);
    obj.edit259:setEnabled(true);
    obj.edit259:setHorzTextAlign("center");
    obj.edit259:setFontColor("#00FFFF");
    obj.edit259:setType("number");
    obj.edit259:setField("Vigor");
    obj.edit259:setName("edit259");

    obj.edit260 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit260:setParent(obj.scrollBox8);
    obj.edit260:setLeft(430);
    obj.edit260:setTop(370);
    obj.edit260:setWidth(75);
    obj.edit260:setHeight(18);
    obj.edit260:setVisible(false);
    obj.edit260:setEnabled(false);
    obj.edit260:setHorzTextAlign("center");
    obj.edit260:setFontColor("#00FFFF");
    obj.edit260:setType("number");
    obj.edit260:setField("GAtletismo");
    obj.edit260:setName("edit260");

    obj.edit261 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit261:setParent(obj.scrollBox8);
    obj.edit261:setLeft(430);
    obj.edit261:setTop(395);
    obj.edit261:setWidth(75);
    obj.edit261:setHeight(18);
    obj.edit261:setVisible(false);
    obj.edit261:setEnabled(false);
    obj.edit261:setHorzTextAlign("center");
    obj.edit261:setFontColor("#00FFFF");
    obj.edit261:setType("number");
    obj.edit261:setField("GRaciocinio");
    obj.edit261:setName("edit261");

    obj.edit262 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit262:setParent(obj.scrollBox8);
    obj.edit262:setLeft(430);
    obj.edit262:setTop(420);
    obj.edit262:setWidth(75);
    obj.edit262:setHeight(18);
    obj.edit262:setVisible(false);
    obj.edit262:setEnabled(false);
    obj.edit262:setHorzTextAlign("center");
    obj.edit262:setFontColor("#00FFFF");
    obj.edit262:setType("number");
    obj.edit262:setField("GPercepcao");
    obj.edit262:setName("edit262");

    obj.edit263 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit263:setParent(obj.scrollBox8);
    obj.edit263:setLeft(430);
    obj.edit263:setTop(445);
    obj.edit263:setWidth(75);
    obj.edit263:setHeight(18);
    obj.edit263:setVisible(false);
    obj.edit263:setEnabled(false);
    obj.edit263:setHorzTextAlign("center");
    obj.edit263:setFontColor("#00FFFF");
    obj.edit263:setType("number");
    obj.edit263:setField("GFurtividade");
    obj.edit263:setName("edit263");

    obj.edit264 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit264:setParent(obj.scrollBox8);
    obj.edit264:setLeft(430);
    obj.edit264:setTop(470);
    obj.edit264:setWidth(75);
    obj.edit264:setHeight(18);
    obj.edit264:setVisible(false);
    obj.edit264:setEnabled(false);
    obj.edit264:setHorzTextAlign("center");
    obj.edit264:setFontColor("#00FFFF");
    obj.edit264:setType("number");
    obj.edit264:setField("GVigor");
    obj.edit264:setName("edit264");

    obj.edit265 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit265:setParent(obj.scrollBox8);
    obj.edit265:setLeft(330);
    obj.edit265:setTop(370);
    obj.edit265:setWidth(75);
    obj.edit265:setHeight(18);
    obj.edit265:setEnabled(false);
    obj.edit265:setHorzTextAlign("center");
    obj.edit265:setFontColor("#00FFFF");
    obj.edit265:setType("number");
    obj.edit265:setField("AtletismoTotal");
    obj.edit265:setName("edit265");

    obj.edit266 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit266:setParent(obj.scrollBox8);
    obj.edit266:setLeft(330);
    obj.edit266:setTop(395);
    obj.edit266:setWidth(75);
    obj.edit266:setHeight(18);
    obj.edit266:setEnabled(false);
    obj.edit266:setHorzTextAlign("center");
    obj.edit266:setFontColor("#00FFFF");
    obj.edit266:setType("number");
    obj.edit266:setField("RaciocinioTotal");
    obj.edit266:setName("edit266");

    obj.edit267 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit267:setParent(obj.scrollBox8);
    obj.edit267:setLeft(330);
    obj.edit267:setTop(420);
    obj.edit267:setWidth(75);
    obj.edit267:setHeight(18);
    obj.edit267:setEnabled(false);
    obj.edit267:setHorzTextAlign("center");
    obj.edit267:setFontColor("#00FFFF");
    obj.edit267:setType("number");
    obj.edit267:setField("PercepcaoTotal");
    obj.edit267:setName("edit267");

    obj.edit268 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit268:setParent(obj.scrollBox8);
    obj.edit268:setLeft(330);
    obj.edit268:setTop(445);
    obj.edit268:setWidth(75);
    obj.edit268:setHeight(18);
    obj.edit268:setEnabled(false);
    obj.edit268:setHorzTextAlign("center");
    obj.edit268:setFontColor("#00FFFF");
    obj.edit268:setType("number");
    obj.edit268:setField("FurtividadeTotal");
    obj.edit268:setName("edit268");

    obj.edit269 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit269:setParent(obj.scrollBox8);
    obj.edit269:setLeft(330);
    obj.edit269:setTop(470);
    obj.edit269:setWidth(75);
    obj.edit269:setHeight(18);
    obj.edit269:setEnabled(false);
    obj.edit269:setHorzTextAlign("center");
    obj.edit269:setFontColor("#00FFFF");
    obj.edit269:setType("number");
    obj.edit269:setField("VigorTotal");
    obj.edit269:setName("edit269");

    obj.edit270 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit270:setParent(obj.scrollBox8);
    obj.edit270:setLeft(530);
    obj.edit270:setTop(370);
    obj.edit270:setWidth(75);
    obj.edit270:setHeight(18);
    obj.edit270:setVisible(false);
    obj.edit270:setEnabled(false);
    obj.edit270:setHorzTextAlign("center");
    obj.edit270:setFontColor("#00FFFF");
    obj.edit270:setType("number");
    obj.edit270:setField("SAtletismo");
    obj.edit270:setName("edit270");

    obj.edit271 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit271:setParent(obj.scrollBox8);
    obj.edit271:setLeft(530);
    obj.edit271:setTop(395);
    obj.edit271:setWidth(75);
    obj.edit271:setHeight(18);
    obj.edit271:setVisible(false);
    obj.edit271:setEnabled(false);
    obj.edit271:setHorzTextAlign("center");
    obj.edit271:setFontColor("#00FFFF");
    obj.edit271:setType("number");
    obj.edit271:setField("SRaciocinio");
    obj.edit271:setName("edit271");

    obj.edit272 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit272:setParent(obj.scrollBox8);
    obj.edit272:setLeft(530);
    obj.edit272:setTop(420);
    obj.edit272:setWidth(75);
    obj.edit272:setHeight(18);
    obj.edit272:setVisible(false);
    obj.edit272:setEnabled(false);
    obj.edit272:setHorzTextAlign("center");
    obj.edit272:setFontColor("#00FFFF");
    obj.edit272:setType("number");
    obj.edit272:setField("SPercepcao");
    obj.edit272:setName("edit272");

    obj.edit273 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit273:setParent(obj.scrollBox8);
    obj.edit273:setLeft(530);
    obj.edit273:setTop(445);
    obj.edit273:setWidth(75);
    obj.edit273:setHeight(18);
    obj.edit273:setVisible(false);
    obj.edit273:setEnabled(false);
    obj.edit273:setHorzTextAlign("center");
    obj.edit273:setFontColor("#00FFFF");
    obj.edit273:setType("number");
    obj.edit273:setField("SFurtividade");
    obj.edit273:setName("edit273");

    obj.edit274 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit274:setParent(obj.scrollBox8);
    obj.edit274:setLeft(530);
    obj.edit274:setTop(470);
    obj.edit274:setWidth(75);
    obj.edit274:setHeight(18);
    obj.edit274:setVisible(false);
    obj.edit274:setEnabled(false);
    obj.edit274:setHorzTextAlign("center");
    obj.edit274:setFontColor("#00FFFF");
    obj.edit274:setType("number");
    obj.edit274:setField("SVigor");
    obj.edit274:setName("edit274");

    obj.edit275 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit275:setParent(obj.scrollBox8);
    obj.edit275:setLeft(330);
    obj.edit275:setTop(45);
    obj.edit275:setWidth(85);
    obj.edit275:setHeight(18);
    obj.edit275:setEnabled(false);
    obj.edit275:setVisible(false);
    obj.edit275:setType("number");
    obj.edit275:setField("GAcertoTai");
    obj.edit275:setName("edit275");

    obj.edit276 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit276:setParent(obj.scrollBox8);
    obj.edit276:setLeft(330);
    obj.edit276:setTop(70);
    obj.edit276:setWidth(85);
    obj.edit276:setHeight(18);
    obj.edit276:setEnabled(false);
    obj.edit276:setVisible(false);
    obj.edit276:setType("number");
    obj.edit276:setField("GAcertoNin");
    obj.edit276:setName("edit276");

    obj.edit277 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit277:setParent(obj.scrollBox8);
    obj.edit277:setLeft(330);
    obj.edit277:setTop(95);
    obj.edit277:setWidth(85);
    obj.edit277:setHeight(18);
    obj.edit277:setEnabled(false);
    obj.edit277:setVisible(false);
    obj.edit277:setType("number");
    obj.edit277:setField("GAcertoGen");
    obj.edit277:setName("edit277");

    obj.edit278 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit278:setParent(obj.scrollBox8);
    obj.edit278:setLeft(330);
    obj.edit278:setTop(145);
    obj.edit278:setWidth(85);
    obj.edit278:setHeight(18);
    obj.edit278:setEnabled(false);
    obj.edit278:setVisible(false);
    obj.edit278:setType("number");
    obj.edit278:setField("GEsquiva");
    obj.edit278:setName("edit278");

    obj.edit279 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit279:setParent(obj.scrollBox8);
    obj.edit279:setLeft(330);
    obj.edit279:setTop(170);
    obj.edit279:setWidth(85);
    obj.edit279:setHeight(18);
    obj.edit279:setEnabled(false);
    obj.edit279:setVisible(false);
    obj.edit279:setType("number");
    obj.edit279:setField("GBloqueio");
    obj.edit279:setName("edit279");

    obj.edit280 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit280:setParent(obj.scrollBox8);
    obj.edit280:setLeft(330);
    obj.edit280:setTop(220);
    obj.edit280:setWidth(85);
    obj.edit280:setHeight(18);
    obj.edit280:setEnabled(false);
    obj.edit280:setVisible(false);
    obj.edit280:setType("number");
    obj.edit280:setField("GCRTai");
    obj.edit280:setName("edit280");

    obj.edit281 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit281:setParent(obj.scrollBox8);
    obj.edit281:setLeft(330);
    obj.edit281:setTop(245);
    obj.edit281:setWidth(85);
    obj.edit281:setHeight(18);
    obj.edit281:setEnabled(false);
    obj.edit281:setVisible(false);
    obj.edit281:setType("number");
    obj.edit281:setField("GCRNin");
    obj.edit281:setName("edit281");

    obj.edit282 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit282:setParent(obj.scrollBox8);
    obj.edit282:setLeft(330);
    obj.edit282:setTop(270);
    obj.edit282:setWidth(85);
    obj.edit282:setHeight(18);
    obj.edit282:setEnabled(false);
    obj.edit282:setVisible(false);
    obj.edit282:setType("number");
    obj.edit282:setField("GCRGen");
    obj.edit282:setName("edit282");

    obj.edit283 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit283:setParent(obj.scrollBox8);
    obj.edit283:setLeft(330);
    obj.edit283:setTop(320);
    obj.edit283:setWidth(85);
    obj.edit283:setHeight(18);
    obj.edit283:setEnabled(false);
    obj.edit283:setVisible(false);
    obj.edit283:setType("number");
    obj.edit283:setField("GTurno");
    obj.edit283:setName("edit283");

    obj.button46 = GUI.fromHandle(_obj_newObject("button"));
    obj.button46:setParent(obj.scrollBox8);
    obj.button46:setLeft(430);
    obj.button46:setTop(370);
    obj.button46:setWidth(85);
    obj.button46:setHeight(20);
    obj.button46:setFontSize(12);
    obj.button46:setFontColor("#00FFFF");
    obj.button46:setText("Atletismo");
    obj.button46:setName("button46");


							local function RolarTesteAtletismo()      
								local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
								sheet.AtletismoTotal = sheet.AtletismoTotal or 0;                        
								mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.AtletismoTotal, "[§K2]Teste de Atletismo"); 
							end; 	   
						


    obj.button47 = GUI.fromHandle(_obj_newObject("button"));
    obj.button47:setParent(obj.scrollBox8);
    obj.button47:setLeft(430);
    obj.button47:setTop(395);
    obj.button47:setWidth(85);
    obj.button47:setHeight(20);
    obj.button47:setFontSize(12);
    obj.button47:setFontColor("#00FFFF");
    obj.button47:setText("Raciocinio");
    obj.button47:setName("button47");


							local function RolarTesteSabedoria()      
								local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
								sheet.RaciocinioTotal = sheet.RaciocinioTotal or 0;                        
								mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.RaciocinioTotal, "[§K2]Teste de Raciocinio"); 
							end; 	   
						


    obj.button48 = GUI.fromHandle(_obj_newObject("button"));
    obj.button48:setParent(obj.scrollBox8);
    obj.button48:setLeft(430);
    obj.button48:setTop(420);
    obj.button48:setWidth(85);
    obj.button48:setHeight(20);
    obj.button48:setFontSize(12);
    obj.button48:setFontColor("#00FFFF");
    obj.button48:setText("Percepção");
    obj.button48:setName("button48");


							local function RolarTestePercepcao()      
								local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
								sheet.PercepcaoTotal = sheet.PercepcaoTotal or 0;                        
								mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.PercepcaoTotal, "[§K2]Teste de Percepcao"); 
							end; 	   
						


    obj.button49 = GUI.fromHandle(_obj_newObject("button"));
    obj.button49:setParent(obj.scrollBox8);
    obj.button49:setLeft(430);
    obj.button49:setTop(445);
    obj.button49:setWidth(85);
    obj.button49:setHeight(20);
    obj.button49:setFontSize(12);
    obj.button49:setFontColor("#00FFFF");
    obj.button49:setText("Furtividade");
    obj.button49:setName("button49");


							local function RolarTesteAcrobacia()      
								local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
								sheet.FurtividadeTotal = sheet.FurtividadeTotal or 0;                        
								mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.FurtividadeTotal, "[§K2]Teste de Furtividade"); 
							end; 	   
						


    obj.button50 = GUI.fromHandle(_obj_newObject("button"));
    obj.button50:setParent(obj.scrollBox8);
    obj.button50:setLeft(430);
    obj.button50:setTop(470);
    obj.button50:setWidth(85);
    obj.button50:setHeight(20);
    obj.button50:setFontSize(12);
    obj.button50:setFontColor("#00FFFF");
    obj.button50:setText("Vigor");
    obj.button50:setName("button50");


							local function RolarTesteVigor()      
								local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
								sheet.VigorTotal = sheet.VigorTotal or 0;                      
								mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.VigorTotal, "[§K2]Teste de Vigor"); 
							end; 	   
						


    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj.scrollBox8);
    obj.dataLink44:setFields({'GraduacaoTreino', 'Forca', 'Inteligencia', 'Sabedoria', 'Habilidade', 'Resistencia', 'Atletismo', 'Raciocinio', 'Percepcao', 'Furtividade', 'Vigor', 'Cla'});
    obj.dataLink44:setName("dataLink44");

    obj.dataLink45 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink45:setParent(obj.scrollBox8);
    obj.dataLink45:setFields({'GAcertoTai', 'GAcertoNin', 'GAcertoGen', 'GEsquiva', 'GBloqueio', 'GCRTai', 'GCRNin', 'GCRGen', 'GTurno', 'AcessorioAcertoTai', 'AcessorioAcertoNin', 'AcessorioAcertoGen',
					'CAT', 'CAN', 'CAG', 'CEsq', 'CBloq', 'CCRT', 'CCRN', 'CCRG', 'DAcertoTai', 'DAcertoNin', 'DAcertoGen', 'DEsquiva', 'DBloqueio', 'DCriticalTai', 'DCriticalNin', 'DCriticalGen', 'BandanaEsquiva', 'BandanaBloqueio',
					'Transformado', 'Transformado1', 'Transformado2', 'Transformado3', 'Transformado4', 'Transformado5', 'TransformadoTotal', 'TATai', 'TANin', 'TAGen', 'TEsquiva', 'TBloqueio', 'TCTai', 'TCNin', 'TCGen', 'DTurnos'});
    obj.dataLink45:setName("dataLink45");

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Personagem");
    obj.tab3:setName("tab3");

    obj.scrollBox9 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox9:setParent(obj.tab3);
    obj.scrollBox9:setAlign("client");
    obj.scrollBox9:setName("scrollBox9");

    obj.image36 = GUI.fromHandle(_obj_newObject("image"));
    obj.image36:setParent(obj.scrollBox9);
    obj.image36:setLeft(1);
    obj.image36:setTop(1);
    obj.image36:setWidth(1000);
    obj.image36:setHeight(700);
    obj.image36:setSRC("/imagens/3.png");
    obj.image36:setName("image36");

    obj.button51 = GUI.fromHandle(_obj_newObject("button"));
    obj.button51:setParent(obj.scrollBox9);
    obj.button51:setLeft(55);
    obj.button51:setTop(110);
    obj.button51:setWidth(100);
    obj.button51:setHeight(150);
    obj.button51:setOpacity(0.0);
    obj.button51:setName("button51");

    obj.PopHollowTransformation = GUI.fromHandle(_obj_newObject("popup"));
    obj.PopHollowTransformation:setParent(obj.scrollBox9);
    obj.PopHollowTransformation:setName("PopHollowTransformation");
    obj.PopHollowTransformation:setVisible(false);
    obj.PopHollowTransformation:setLeft(1);
    obj.PopHollowTransformation:setTop(10);
    obj.PopHollowTransformation:setWidth(1020);
    obj.PopHollowTransformation:setHeight(580);

    obj.image37 = GUI.fromHandle(_obj_newObject("image"));
    obj.image37:setParent(obj.PopHollowTransformation);
    obj.image37:setLeft(10);
    obj.image37:setTop(10);
    obj.image37:setWidth(1000);
    obj.image37:setHeight(563);
    obj.image37:setSRC("/imagens/11.png");
    obj.image37:setName("image37");

    obj.edit284 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit284:setParent(obj.PopHollowTransformation);
    obj.edit284:setLeft(190);
    obj.edit284:setTop(43);
    obj.edit284:setWidth(100);
    obj.edit284:setHeight(20);
    obj.edit284:setType("number");
    obj.edit284:setField("TransHollowTaijutsu");
    obj.edit284:setName("edit284");

    obj.edit285 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit285:setParent(obj.PopHollowTransformation);
    obj.edit285:setLeft(190);
    obj.edit285:setTop(72);
    obj.edit285:setWidth(100);
    obj.edit285:setHeight(20);
    obj.edit285:setType("number");
    obj.edit285:setField("TransHollowNinjutsu");
    obj.edit285:setName("edit285");

    obj.edit286 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit286:setParent(obj.PopHollowTransformation);
    obj.edit286:setLeft(190);
    obj.edit286:setTop(101);
    obj.edit286:setWidth(100);
    obj.edit286:setHeight(20);
    obj.edit286:setType("number");
    obj.edit286:setField("TransHollowGenjutsu");
    obj.edit286:setName("edit286");

    obj.edit287 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit287:setParent(obj.PopHollowTransformation);
    obj.edit287:setLeft(190);
    obj.edit287:setTop(130);
    obj.edit287:setWidth(100);
    obj.edit287:setHeight(20);
    obj.edit287:setType("number");
    obj.edit287:setField("TransHollowDA");
    obj.edit287:setName("edit287");

    obj.edit288 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit288:setParent(obj.PopHollowTransformation);
    obj.edit288:setLeft(190);
    obj.edit288:setTop(159);
    obj.edit288:setWidth(100);
    obj.edit288:setHeight(20);
    obj.edit288:setType("number");
    obj.edit288:setField("TransHollowElemental");
    obj.edit288:setName("edit288");

    obj.edit289 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit289:setParent(obj.PopHollowTransformation);
    obj.edit289:setLeft(190);
    obj.edit289:setTop(217);
    obj.edit289:setWidth(100);
    obj.edit289:setHeight(20);
    obj.edit289:setType("number");
    obj.edit289:setField("TransHollowHP");
    obj.edit289:setName("edit289");

    obj.edit290 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit290:setParent(obj.PopHollowTransformation);
    obj.edit290:setLeft(190);
    obj.edit290:setTop(245);
    obj.edit290:setWidth(100);
    obj.edit290:setHeight(20);
    obj.edit290:setType("number");
    obj.edit290:setField("TransHollowChakra");
    obj.edit290:setName("edit290");

    obj.edit291 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit291:setParent(obj.PopHollowTransformation);
    obj.edit291:setLeft(190);
    obj.edit291:setTop(273);
    obj.edit291:setWidth(100);
    obj.edit291:setHeight(20);
    obj.edit291:setType("number");
    obj.edit291:setField("TransHollowReiatsu");
    obj.edit291:setName("edit291");

    obj.edit292 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit292:setParent(obj.PopHollowTransformation);
    obj.edit292:setLeft(190);
    obj.edit292:setTop(301);
    obj.edit292:setWidth(100);
    obj.edit292:setHeight(20);
    obj.edit292:setType("number");
    obj.edit292:setField("TransHollowOutros");
    obj.edit292:setName("edit292");

    obj.edit293 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit293:setParent(obj.PopHollowTransformation);
    obj.edit293:setLeft(190);
    obj.edit293:setTop(329);
    obj.edit293:setWidth(100);
    obj.edit293:setHeight(20);
    obj.edit293:setType("number");
    obj.edit293:setField("TransHollowEnergia");
    obj.edit293:setName("edit293");

    obj.edit294 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit294:setParent(obj.PopHollowTransformation);
    obj.edit294:setLeft(190);
    obj.edit294:setTop(357);
    obj.edit294:setWidth(100);
    obj.edit294:setHeight(20);
    obj.edit294:setType("number");
    obj.edit294:setField("TransHollowReducao");
    obj.edit294:setName("edit294");

    obj.edit295 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit295:setParent(obj.PopHollowTransformation);
    obj.edit295:setLeft(820);
    obj.edit295:setTop(43);
    obj.edit295:setWidth(100);
    obj.edit295:setHeight(20);
    obj.edit295:setType("number");
    obj.edit295:setField("TransHollowATai");
    obj.edit295:setName("edit295");

    obj.edit296 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit296:setParent(obj.PopHollowTransformation);
    obj.edit296:setLeft(820);
    obj.edit296:setTop(72);
    obj.edit296:setWidth(100);
    obj.edit296:setHeight(20);
    obj.edit296:setType("number");
    obj.edit296:setField("TransHollowANin");
    obj.edit296:setName("edit296");

    obj.edit297 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit297:setParent(obj.PopHollowTransformation);
    obj.edit297:setLeft(820);
    obj.edit297:setTop(101);
    obj.edit297:setWidth(100);
    obj.edit297:setHeight(20);
    obj.edit297:setType("number");
    obj.edit297:setField("TransHollowAGen");
    obj.edit297:setName("edit297");

    obj.edit298 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit298:setParent(obj.PopHollowTransformation);
    obj.edit298:setLeft(820);
    obj.edit298:setTop(130);
    obj.edit298:setWidth(100);
    obj.edit298:setHeight(20);
    obj.edit298:setType("number");
    obj.edit298:setField("TransHollowEsquiva");
    obj.edit298:setName("edit298");

    obj.edit299 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit299:setParent(obj.PopHollowTransformation);
    obj.edit299:setLeft(820);
    obj.edit299:setTop(159);
    obj.edit299:setWidth(100);
    obj.edit299:setHeight(20);
    obj.edit299:setType("number");
    obj.edit299:setField("TransHollowBloqueio");
    obj.edit299:setName("edit299");

    obj.edit300 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit300:setParent(obj.PopHollowTransformation);
    obj.edit300:setLeft(820);
    obj.edit300:setTop(187);
    obj.edit300:setWidth(100);
    obj.edit300:setHeight(20);
    obj.edit300:setType("number");
    obj.edit300:setField("TransHollowCTai");
    obj.edit300:setName("edit300");

    obj.edit301 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit301:setParent(obj.PopHollowTransformation);
    obj.edit301:setLeft(820);
    obj.edit301:setTop(215);
    obj.edit301:setWidth(100);
    obj.edit301:setHeight(20);
    obj.edit301:setType("number");
    obj.edit301:setField("TransHollowCNin");
    obj.edit301:setName("edit301");

    obj.edit302 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit302:setParent(obj.PopHollowTransformation);
    obj.edit302:setLeft(820);
    obj.edit302:setTop(243);
    obj.edit302:setWidth(100);
    obj.edit302:setHeight(20);
    obj.edit302:setType("number");
    obj.edit302:setField("TransHollowCGen");
    obj.edit302:setName("edit302");

    obj.edit303 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit303:setParent(obj.PopHollowTransformation);
    obj.edit303:setLeft(820);
    obj.edit303:setTop(271);
    obj.edit303:setWidth(100);
    obj.edit303:setHeight(20);
    obj.edit303:setType("number");
    obj.edit303:setField("TransHollowTurnos");
    obj.edit303:setName("edit303");

    obj.ControlaTransHollow = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.ControlaTransHollow:setParent(obj.scrollBox9);
    obj.ControlaTransHollow:setName("ControlaTransHollow");
    obj.ControlaTransHollow:setVisible(true);
    obj.ControlaTransHollow:setLeft(30);
    obj.ControlaTransHollow:setTop(93);
    obj.ControlaTransHollow:setText("Ativar Transformação");
    obj.ControlaTransHollow:setField("Transformado3");

    obj.dataLink46 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink46:setParent(obj.scrollBox9);
    obj.dataLink46:setFields({'TransHollowTaijutsu', 'TransHollowNinjutsu' , 'TransHollowGenjutsu', 'TransHollowDA', 'TransHollowElemental', 'TransHollowHP', 'TransHollowChakra', 
					'TransHollowReiatsu', 'TransHollowOutros' ,TransHollowEnergia, 'TransHollowReducao', 'TransHollowATai', 'TransHollowANin', 'TransHollowAGen', 'TransHollowEsquiva', 'TransHollowBloqueio', 'TransHollowCTai',
					'TransHollowCNin', 'TransHollowCGen', 'TransHollowTurnos', 'Transformado3'});
    obj.dataLink46:setName("dataLink46");

    obj.button52 = GUI.fromHandle(_obj_newObject("button"));
    obj.button52:setParent(obj.scrollBox9);
    obj.button52:setLeft(210);
    obj.button52:setTop(110);
    obj.button52:setWidth(100);
    obj.button52:setHeight(150);
    obj.button52:setOpacity(0.0);
    obj.button52:setName("button52");

    obj.POPBijuTransformation = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPBijuTransformation:setParent(obj.scrollBox9);
    obj.POPBijuTransformation:setName("POPBijuTransformation");
    obj.POPBijuTransformation:setVisible(false);
    obj.POPBijuTransformation:setLeft(1);
    obj.POPBijuTransformation:setTop(10);
    obj.POPBijuTransformation:setWidth(1020);
    obj.POPBijuTransformation:setHeight(580);

    obj.image38 = GUI.fromHandle(_obj_newObject("image"));
    obj.image38:setParent(obj.POPBijuTransformation);
    obj.image38:setLeft(10);
    obj.image38:setTop(10);
    obj.image38:setWidth(1000);
    obj.image38:setHeight(563);
    obj.image38:setSRC("/imagens/12.png");
    obj.image38:setName("image38");

    obj.edit304 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit304:setParent(obj.POPBijuTransformation);
    obj.edit304:setLeft(190);
    obj.edit304:setTop(43);
    obj.edit304:setWidth(100);
    obj.edit304:setHeight(20);
    obj.edit304:setType("number");
    obj.edit304:setField("TransBijuModeTaijutsu");
    obj.edit304:setName("edit304");

    obj.edit305 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit305:setParent(obj.POPBijuTransformation);
    obj.edit305:setLeft(190);
    obj.edit305:setTop(72);
    obj.edit305:setWidth(100);
    obj.edit305:setHeight(20);
    obj.edit305:setType("number");
    obj.edit305:setField("TransBijuModeNinjutsu");
    obj.edit305:setName("edit305");

    obj.edit306 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit306:setParent(obj.POPBijuTransformation);
    obj.edit306:setLeft(190);
    obj.edit306:setTop(101);
    obj.edit306:setWidth(100);
    obj.edit306:setHeight(20);
    obj.edit306:setType("number");
    obj.edit306:setField("TransBijuModeGenjutsu");
    obj.edit306:setName("edit306");

    obj.edit307 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit307:setParent(obj.POPBijuTransformation);
    obj.edit307:setLeft(190);
    obj.edit307:setTop(130);
    obj.edit307:setWidth(100);
    obj.edit307:setHeight(20);
    obj.edit307:setType("number");
    obj.edit307:setField("TransBijuModeDA");
    obj.edit307:setName("edit307");

    obj.edit308 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit308:setParent(obj.POPBijuTransformation);
    obj.edit308:setLeft(190);
    obj.edit308:setTop(159);
    obj.edit308:setWidth(100);
    obj.edit308:setHeight(20);
    obj.edit308:setType("number");
    obj.edit308:setField("TransBijuModeElemental");
    obj.edit308:setName("edit308");

    obj.edit309 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit309:setParent(obj.POPBijuTransformation);
    obj.edit309:setLeft(190);
    obj.edit309:setTop(217);
    obj.edit309:setWidth(100);
    obj.edit309:setHeight(20);
    obj.edit309:setType("number");
    obj.edit309:setField("TransBijuModeHP");
    obj.edit309:setName("edit309");

    obj.edit310 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit310:setParent(obj.POPBijuTransformation);
    obj.edit310:setLeft(190);
    obj.edit310:setTop(245);
    obj.edit310:setWidth(100);
    obj.edit310:setHeight(20);
    obj.edit310:setType("number");
    obj.edit310:setField("TransBijuModeChakra");
    obj.edit310:setName("edit310");

    obj.edit311 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit311:setParent(obj.POPBijuTransformation);
    obj.edit311:setLeft(190);
    obj.edit311:setTop(273);
    obj.edit311:setWidth(100);
    obj.edit311:setHeight(20);
    obj.edit311:setType("number");
    obj.edit311:setField("TransBijuModeReiatsu");
    obj.edit311:setName("edit311");

    obj.edit312 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit312:setParent(obj.POPBijuTransformation);
    obj.edit312:setLeft(190);
    obj.edit312:setTop(301);
    obj.edit312:setWidth(100);
    obj.edit312:setHeight(20);
    obj.edit312:setType("number");
    obj.edit312:setField("TransBijuModeOutros");
    obj.edit312:setName("edit312");

    obj.edit313 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit313:setParent(obj.POPBijuTransformation);
    obj.edit313:setLeft(190);
    obj.edit313:setTop(357);
    obj.edit313:setWidth(100);
    obj.edit313:setHeight(20);
    obj.edit313:setType("number");
    obj.edit313:setField("TransBijuModeReducao");
    obj.edit313:setName("edit313");

    obj.edit314 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit314:setParent(obj.POPBijuTransformation);
    obj.edit314:setLeft(820);
    obj.edit314:setTop(43);
    obj.edit314:setWidth(100);
    obj.edit314:setHeight(20);
    obj.edit314:setType("number");
    obj.edit314:setField("TransBijuModeATai");
    obj.edit314:setName("edit314");

    obj.edit315 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit315:setParent(obj.POPBijuTransformation);
    obj.edit315:setLeft(820);
    obj.edit315:setTop(72);
    obj.edit315:setWidth(100);
    obj.edit315:setHeight(20);
    obj.edit315:setType("number");
    obj.edit315:setField("TransBijuModeANin");
    obj.edit315:setName("edit315");

    obj.edit316 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit316:setParent(obj.POPBijuTransformation);
    obj.edit316:setLeft(820);
    obj.edit316:setTop(101);
    obj.edit316:setWidth(100);
    obj.edit316:setHeight(20);
    obj.edit316:setType("number");
    obj.edit316:setField("TransBijuModeAGen");
    obj.edit316:setName("edit316");

    obj.edit317 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit317:setParent(obj.POPBijuTransformation);
    obj.edit317:setLeft(820);
    obj.edit317:setTop(130);
    obj.edit317:setWidth(100);
    obj.edit317:setHeight(20);
    obj.edit317:setType("number");
    obj.edit317:setField("TransBijuModeEsquiva");
    obj.edit317:setName("edit317");

    obj.edit318 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit318:setParent(obj.POPBijuTransformation);
    obj.edit318:setLeft(820);
    obj.edit318:setTop(159);
    obj.edit318:setWidth(100);
    obj.edit318:setHeight(20);
    obj.edit318:setType("number");
    obj.edit318:setField("TransBijuModeBloqueio");
    obj.edit318:setName("edit318");

    obj.edit319 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit319:setParent(obj.POPBijuTransformation);
    obj.edit319:setLeft(820);
    obj.edit319:setTop(187);
    obj.edit319:setWidth(100);
    obj.edit319:setHeight(20);
    obj.edit319:setType("number");
    obj.edit319:setField("TransBijuModeCTai");
    obj.edit319:setName("edit319");

    obj.edit320 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit320:setParent(obj.POPBijuTransformation);
    obj.edit320:setLeft(820);
    obj.edit320:setTop(215);
    obj.edit320:setWidth(100);
    obj.edit320:setHeight(20);
    obj.edit320:setType("number");
    obj.edit320:setField("TransBijuModeCNin");
    obj.edit320:setName("edit320");

    obj.edit321 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit321:setParent(obj.POPBijuTransformation);
    obj.edit321:setLeft(820);
    obj.edit321:setTop(243);
    obj.edit321:setWidth(100);
    obj.edit321:setHeight(20);
    obj.edit321:setType("number");
    obj.edit321:setField("TransBijuModeCGen");
    obj.edit321:setName("edit321");

    obj.edit322 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit322:setParent(obj.POPBijuTransformation);
    obj.edit322:setLeft(820);
    obj.edit322:setTop(271);
    obj.edit322:setWidth(100);
    obj.edit322:setHeight(20);
    obj.edit322:setType("number");
    obj.edit322:setField("TransBijuModeTurnos");
    obj.edit322:setName("edit322");

    obj.ControlaTransMantoBiju = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.ControlaTransMantoBiju:setParent(obj.scrollBox9);
    obj.ControlaTransMantoBiju:setName("ControlaTransMantoBiju");
    obj.ControlaTransMantoBiju:setVisible(true);
    obj.ControlaTransMantoBiju:setLeft(190);
    obj.ControlaTransMantoBiju:setTop(93);
    obj.ControlaTransMantoBiju:setText("Ativar Transformação");
    obj.ControlaTransMantoBiju:setField("Transformado4");

    obj.dataLink47 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink47:setParent(obj.scrollBox9);
    obj.dataLink47:setFields({'TransBijuModeTaijutsu', 'TransBijuModeNinjutsu' , 'TransBijuModeGenjutsu', 'TransBijuModeDA', 'TransBijuModeElemental', 'TransBijuModeHP', 'TransBijuModeChakra', 
					'TransBijuModeReiatsu', 'TransBijuModeOutros', 'TransBijuModeReducao', 'TransBijuModeATai', 'TransBijuModeANin', 'TransBijuModeAGen', 'TransBijuModeEsquiva', 'TransBijuModeBloqueio', 'TransBijuModeCTai',
					'TransBijuModeCNin', 'TransBijuModeCGen', 'TransBijuModeTurnos', 'Transformado4'});
    obj.dataLink47:setName("dataLink47");

    obj.button53 = GUI.fromHandle(_obj_newObject("button"));
    obj.button53:setParent(obj.scrollBox9);
    obj.button53:setLeft(40);
    obj.button53:setTop(270);
    obj.button53:setWidth(130);
    obj.button53:setHeight(150);
    obj.button53:setOpacity(0.0);
    obj.button53:setName("button53");

    obj.button54 = GUI.fromHandle(_obj_newObject("button"));
    obj.button54:setParent(obj.scrollBox9);
    obj.button54:setLeft(195);
    obj.button54:setTop(270);
    obj.button54:setWidth(130);
    obj.button54:setHeight(150);
    obj.button54:setOpacity(0.0);
    obj.button54:setName("button54");

    obj.PopSenninTransformation = GUI.fromHandle(_obj_newObject("popup"));
    obj.PopSenninTransformation:setParent(obj.scrollBox9);
    obj.PopSenninTransformation:setName("PopSenninTransformation");
    obj.PopSenninTransformation:setVisible(false);
    obj.PopSenninTransformation:setLeft(1);
    obj.PopSenninTransformation:setTop(10);
    obj.PopSenninTransformation:setWidth(1020);
    obj.PopSenninTransformation:setHeight(580);

    obj.image39 = GUI.fromHandle(_obj_newObject("image"));
    obj.image39:setParent(obj.PopSenninTransformation);
    obj.image39:setLeft(10);
    obj.image39:setTop(10);
    obj.image39:setWidth(1000);
    obj.image39:setHeight(563);
    obj.image39:setSRC("/imagens/10.png");
    obj.image39:setName("image39");

    obj.edit323 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit323:setParent(obj.PopSenninTransformation);
    obj.edit323:setLeft(190);
    obj.edit323:setTop(43);
    obj.edit323:setWidth(100);
    obj.edit323:setHeight(20);
    obj.edit323:setType("number");
    obj.edit323:setField("TransSenninTaijutsu");
    obj.edit323:setName("edit323");

    obj.edit324 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit324:setParent(obj.PopSenninTransformation);
    obj.edit324:setLeft(190);
    obj.edit324:setTop(72);
    obj.edit324:setWidth(100);
    obj.edit324:setHeight(20);
    obj.edit324:setType("number");
    obj.edit324:setField("TransSenninNinjutsu");
    obj.edit324:setName("edit324");

    obj.edit325 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit325:setParent(obj.PopSenninTransformation);
    obj.edit325:setLeft(190);
    obj.edit325:setTop(101);
    obj.edit325:setWidth(100);
    obj.edit325:setHeight(20);
    obj.edit325:setType("number");
    obj.edit325:setField("TransSenninGenjutsu");
    obj.edit325:setName("edit325");

    obj.edit326 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit326:setParent(obj.PopSenninTransformation);
    obj.edit326:setLeft(190);
    obj.edit326:setTop(130);
    obj.edit326:setWidth(100);
    obj.edit326:setHeight(20);
    obj.edit326:setType("number");
    obj.edit326:setField("TransSenninDA");
    obj.edit326:setName("edit326");

    obj.edit327 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit327:setParent(obj.PopSenninTransformation);
    obj.edit327:setLeft(190);
    obj.edit327:setTop(159);
    obj.edit327:setWidth(100);
    obj.edit327:setHeight(20);
    obj.edit327:setType("number");
    obj.edit327:setField("TransSenninElemental");
    obj.edit327:setName("edit327");

    obj.edit328 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit328:setParent(obj.PopSenninTransformation);
    obj.edit328:setLeft(190);
    obj.edit328:setTop(217);
    obj.edit328:setWidth(100);
    obj.edit328:setHeight(20);
    obj.edit328:setType("number");
    obj.edit328:setField("TransSenninHP");
    obj.edit328:setName("edit328");

    obj.edit329 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit329:setParent(obj.PopSenninTransformation);
    obj.edit329:setLeft(190);
    obj.edit329:setTop(245);
    obj.edit329:setWidth(100);
    obj.edit329:setHeight(20);
    obj.edit329:setType("number");
    obj.edit329:setField("TransSenninChakra");
    obj.edit329:setName("edit329");

    obj.edit330 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit330:setParent(obj.PopSenninTransformation);
    obj.edit330:setLeft(190);
    obj.edit330:setTop(273);
    obj.edit330:setWidth(100);
    obj.edit330:setHeight(20);
    obj.edit330:setType("number");
    obj.edit330:setField("TransSenninReiatsu");
    obj.edit330:setName("edit330");

    obj.edit331 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit331:setParent(obj.PopSenninTransformation);
    obj.edit331:setLeft(190);
    obj.edit331:setTop(301);
    obj.edit331:setWidth(100);
    obj.edit331:setHeight(20);
    obj.edit331:setType("number");
    obj.edit331:setField("TransSenninOutros");
    obj.edit331:setName("edit331");

    obj.edit332 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit332:setParent(obj.PopSenninTransformation);
    obj.edit332:setLeft(190);
    obj.edit332:setTop(357);
    obj.edit332:setWidth(100);
    obj.edit332:setHeight(20);
    obj.edit332:setType("number");
    obj.edit332:setField("TransSenninReducao");
    obj.edit332:setName("edit332");

    obj.edit333 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit333:setParent(obj.PopSenninTransformation);
    obj.edit333:setLeft(820);
    obj.edit333:setTop(43);
    obj.edit333:setWidth(100);
    obj.edit333:setHeight(20);
    obj.edit333:setType("number");
    obj.edit333:setField("TransSenninATai");
    obj.edit333:setName("edit333");

    obj.edit334 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit334:setParent(obj.PopSenninTransformation);
    obj.edit334:setLeft(820);
    obj.edit334:setTop(72);
    obj.edit334:setWidth(100);
    obj.edit334:setHeight(20);
    obj.edit334:setType("number");
    obj.edit334:setField("TransSenninANin");
    obj.edit334:setName("edit334");

    obj.edit335 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit335:setParent(obj.PopSenninTransformation);
    obj.edit335:setLeft(820);
    obj.edit335:setTop(101);
    obj.edit335:setWidth(100);
    obj.edit335:setHeight(20);
    obj.edit335:setType("number");
    obj.edit335:setField("TransSenninAGen");
    obj.edit335:setName("edit335");

    obj.edit336 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit336:setParent(obj.PopSenninTransformation);
    obj.edit336:setLeft(820);
    obj.edit336:setTop(130);
    obj.edit336:setWidth(100);
    obj.edit336:setHeight(20);
    obj.edit336:setType("number");
    obj.edit336:setField("TransSenninEsquiva");
    obj.edit336:setName("edit336");

    obj.edit337 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit337:setParent(obj.PopSenninTransformation);
    obj.edit337:setLeft(820);
    obj.edit337:setTop(159);
    obj.edit337:setWidth(100);
    obj.edit337:setHeight(20);
    obj.edit337:setType("number");
    obj.edit337:setField("TransSenninBloqueio");
    obj.edit337:setName("edit337");

    obj.edit338 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit338:setParent(obj.PopSenninTransformation);
    obj.edit338:setLeft(820);
    obj.edit338:setTop(187);
    obj.edit338:setWidth(100);
    obj.edit338:setHeight(20);
    obj.edit338:setType("number");
    obj.edit338:setField("TransSenninCTai");
    obj.edit338:setName("edit338");

    obj.edit339 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit339:setParent(obj.PopSenninTransformation);
    obj.edit339:setLeft(820);
    obj.edit339:setTop(215);
    obj.edit339:setWidth(100);
    obj.edit339:setHeight(20);
    obj.edit339:setType("number");
    obj.edit339:setField("TransSenninCNin");
    obj.edit339:setName("edit339");

    obj.edit340 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit340:setParent(obj.PopSenninTransformation);
    obj.edit340:setLeft(820);
    obj.edit340:setTop(243);
    obj.edit340:setWidth(100);
    obj.edit340:setHeight(20);
    obj.edit340:setType("number");
    obj.edit340:setField("TransSenninCGen");
    obj.edit340:setName("edit340");

    obj.edit341 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit341:setParent(obj.PopSenninTransformation);
    obj.edit341:setLeft(820);
    obj.edit341:setTop(271);
    obj.edit341:setWidth(100);
    obj.edit341:setHeight(20);
    obj.edit341:setType("number");
    obj.edit341:setField("TransSenninTurnos");
    obj.edit341:setName("edit341");

    obj.ControlaTransSennin = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.ControlaTransSennin:setParent(obj.scrollBox9);
    obj.ControlaTransSennin:setName("ControlaTransSennin");
    obj.ControlaTransSennin:setLeft(185);
    obj.ControlaTransSennin:setTop(400);
    obj.ControlaTransSennin:setText("Ativar Transformação");
    obj.ControlaTransSennin:setField("Transformado5");

    obj.dataLink48 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink48:setParent(obj.scrollBox9);
    obj.dataLink48:setFields({'TransSenninTaijutsu', 'TransSenninNinjutsu' , 'TransSenninGenjutsu', 'TransSenninDA', 'TransSenninElemental', 'TransSenninHP', 'TransSenninChakra', 
					'TransSenninReiatsu', 'TransSenninOutros', 'TransSenninReducao', 'TransSenninATai', 'TransSenninANin', 'TransSenninAGen', 'TransSenninEsquiva', 'TransSenninBloqueio', 'TransSenninCTai',
					'TransSenninCNin', 'TransSenninCGen', 'TransSenninTurnos', 'Transformado5'});
    obj.dataLink48:setName("dataLink48");

    obj.button55 = GUI.fromHandle(_obj_newObject("button"));
    obj.button55:setParent(obj.scrollBox9);
    obj.button55:setLeft(430);
    obj.button55:setTop(120);
    obj.button55:setWidth(120);
    obj.button55:setHeight(100);
    obj.button55:setOpacity(0.0);
    obj.button55:setText("");
    obj.button55:setName("button55");

    obj.POPArma = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPArma:setParent(obj.scrollBox9);
    obj.POPArma:setName("POPArma");
    obj.POPArma:setVisible(false);
    obj.POPArma:setLeft(1);
    obj.POPArma:setTop(40);
    obj.POPArma:setWidth(500);
    obj.POPArma:setHeight(550);

    obj.label92 = GUI.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.POPArma);
    obj.label92:setLeft(20);
    obj.label92:setTop(20);
    obj.label92:setFontFamily("Nyala");
    obj.label92:setFontSize(20);
    obj.label92:setText("Arma Nome");
    obj.label92:setName("label92");

    obj.edit342 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit342:setParent(obj.POPArma);
    obj.edit342:setLeft(135);
    obj.edit342:setTop(16);
    obj.edit342:setWidth(310);
    obj.edit342:setHeight(25);
    obj.edit342:setField("ArmaNome");
    obj.edit342:setName("edit342");

    obj.label93 = GUI.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.POPArma);
    obj.label93:setLeft(20);
    obj.label93:setTop(60);
    obj.label93:setFontFamily("Nyala");
    obj.label93:setFontSize(20);
    obj.label93:setText("Dano Tai");
    obj.label93:setName("label93");

    obj.label94 = GUI.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.POPArma);
    obj.label94:setLeft(20);
    obj.label94:setTop(100);
    obj.label94:setFontFamily("Nyala");
    obj.label94:setFontSize(20);
    obj.label94:setText("Dano Nin");
    obj.label94:setName("label94");

    obj.label95 = GUI.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.POPArma);
    obj.label95:setLeft(20);
    obj.label95:setTop(140);
    obj.label95:setFontFamily("Nyala");
    obj.label95:setFontSize(20);
    obj.label95:setText("Dano Gen");
    obj.label95:setName("label95");

    obj.label96 = GUI.fromHandle(_obj_newObject("label"));
    obj.label96:setParent(obj.POPArma);
    obj.label96:setLeft(20);
    obj.label96:setTop(180);
    obj.label96:setFontFamily("Nyala");
    obj.label96:setFontSize(20);
    obj.label96:setText("Dano Armado");
    obj.label96:setName("label96");

    obj.label97 = GUI.fromHandle(_obj_newObject("label"));
    obj.label97:setParent(obj.POPArma);
    obj.label97:setLeft(200);
    obj.label97:setTop(60);
    obj.label97:setFontFamily("Nyala");
    obj.label97:setFontSize(20);
    obj.label97:setText("Dano Elemental");
    obj.label97:setName("label97");

    obj.label98 = GUI.fromHandle(_obj_newObject("label"));
    obj.label98:setParent(obj.POPArma);
    obj.label98:setLeft(200);
    obj.label98:setTop(100);
    obj.label98:setFontFamily("Nyala");
    obj.label98:setFontSize(20);
    obj.label98:setText("HP");
    obj.label98:setName("label98");

    obj.label99 = GUI.fromHandle(_obj_newObject("label"));
    obj.label99:setParent(obj.POPArma);
    obj.label99:setLeft(200);
    obj.label99:setTop(140);
    obj.label99:setFontFamily("Nyala");
    obj.label99:setFontSize(20);
    obj.label99:setText("Chakra");
    obj.label99:setName("label99");

    obj.label100 = GUI.fromHandle(_obj_newObject("label"));
    obj.label100:setParent(obj.POPArma);
    obj.label100:setLeft(200);
    obj.label100:setTop(180);
    obj.label100:setFontFamily("Nyala");
    obj.label100:setFontSize(20);
    obj.label100:setText("Reiatsu");
    obj.label100:setName("label100");

    obj.label101 = GUI.fromHandle(_obj_newObject("label"));
    obj.label101:setParent(obj.POPArma);
    obj.label101:setLeft(20);
    obj.label101:setTop(220);
    obj.label101:setWidth(300);
    obj.label101:setFontFamily("Nyala");
    obj.label101:setFontSize(20);
    obj.label101:setText("Habilidade da Espada");
    obj.label101:setName("label101");

    obj.label102 = GUI.fromHandle(_obj_newObject("label"));
    obj.label102:setParent(obj.POPArma);
    obj.label102:setLeft(20);
    obj.label102:setTop(320);
    obj.label102:setFontFamily("Nyala");
    obj.label102:setFontSize(20);
    obj.label102:setText("Shinkai");
    obj.label102:setName("label102");

    obj.label103 = GUI.fromHandle(_obj_newObject("label"));
    obj.label103:setParent(obj.POPArma);
    obj.label103:setLeft(20);
    obj.label103:setTop(420);
    obj.label103:setFontFamily("Nyala");
    obj.label103:setFontSize(20);
    obj.label103:setText("Bankai");
    obj.label103:setName("label103");

    obj.edit343 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit343:setParent(obj.POPArma);
    obj.edit343:setLeft(110);
    obj.edit343:setTop(56);
    obj.edit343:setWidth(85);
    obj.edit343:setHeight(25);
    obj.edit343:setType("number");
    obj.edit343:setField("ArmaDT");
    obj.edit343:setName("edit343");

    obj.edit344 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit344:setParent(obj.POPArma);
    obj.edit344:setLeft(110);
    obj.edit344:setTop(96);
    obj.edit344:setWidth(85);
    obj.edit344:setHeight(25);
    obj.edit344:setType("number");
    obj.edit344:setField("ArmaDN");
    obj.edit344:setName("edit344");

    obj.edit345 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit345:setParent(obj.POPArma);
    obj.edit345:setLeft(110);
    obj.edit345:setTop(136);
    obj.edit345:setWidth(85);
    obj.edit345:setHeight(25);
    obj.edit345:setType("number");
    obj.edit345:setField("ArmaDG");
    obj.edit345:setName("edit345");

    obj.edit346 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit346:setParent(obj.POPArma);
    obj.edit346:setLeft(130);
    obj.edit346:setTop(176);
    obj.edit346:setWidth(65);
    obj.edit346:setHeight(25);
    obj.edit346:setType("number");
    obj.edit346:setField("ArmaDA");
    obj.edit346:setName("edit346");

    obj.edit347 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit347:setParent(obj.POPArma);
    obj.edit347:setLeft(360);
    obj.edit347:setTop(56);
    obj.edit347:setWidth(85);
    obj.edit347:setHeight(25);
    obj.edit347:setType("number");
    obj.edit347:setField("ArmaDE");
    obj.edit347:setName("edit347");

    obj.edit348 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit348:setParent(obj.POPArma);
    obj.edit348:setLeft(360);
    obj.edit348:setTop(96);
    obj.edit348:setWidth(85);
    obj.edit348:setHeight(25);
    obj.edit348:setType("number");
    obj.edit348:setField("ArmaHP");
    obj.edit348:setName("edit348");

    obj.edit349 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit349:setParent(obj.POPArma);
    obj.edit349:setLeft(360);
    obj.edit349:setTop(136);
    obj.edit349:setWidth(85);
    obj.edit349:setHeight(25);
    obj.edit349:setType("number");
    obj.edit349:setField("ArmaChakra");
    obj.edit349:setName("edit349");

    obj.edit350 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit350:setParent(obj.POPArma);
    obj.edit350:setLeft(360);
    obj.edit350:setTop(176);
    obj.edit350:setWidth(85);
    obj.edit350:setHeight(25);
    obj.edit350:setType("number");
    obj.edit350:setField("ArmaReiatsu");
    obj.edit350:setName("edit350");

    obj.textEditor9 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.POPArma);
    obj.textEditor9:setLeft(20);
    obj.textEditor9:setTop(243);
    obj.textEditor9:setWidth(440);
    obj.textEditor9:setHeight(70);
    obj.textEditor9:setField("HDE");
    obj.textEditor9:setName("textEditor9");

    obj.textEditor10 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor10:setParent(obj.POPArma);
    obj.textEditor10:setLeft(20);
    obj.textEditor10:setTop(340);
    obj.textEditor10:setWidth(440);
    obj.textEditor10:setHeight(70);
    obj.textEditor10:setField("Shinkai");
    obj.textEditor10:setName("textEditor10");

    obj.textEditor11 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor11:setParent(obj.POPArma);
    obj.textEditor11:setLeft(20);
    obj.textEditor11:setTop(440);
    obj.textEditor11:setWidth(440);
    obj.textEditor11:setHeight(100);
    obj.textEditor11:setField("Bankai");
    obj.textEditor11:setName("textEditor11");

    obj.button56 = GUI.fromHandle(_obj_newObject("button"));
    obj.button56:setParent(obj.scrollBox9);
    obj.button56:setLeft(610);
    obj.button56:setTop(120);
    obj.button56:setWidth(160);
    obj.button56:setHeight(100);
    obj.button56:setOpacity(0.0);
    obj.button56:setText("");
    obj.button56:setName("button56");

    obj.POPBandana = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPBandana:setParent(obj.scrollBox9);
    obj.POPBandana:setName("POPBandana");
    obj.POPBandana:setVisible(false);
    obj.POPBandana:setLeft(1);
    obj.POPBandana:setTop(40);
    obj.POPBandana:setWidth(480);
    obj.POPBandana:setHeight(320);

    obj.label104 = GUI.fromHandle(_obj_newObject("label"));
    obj.label104:setParent(obj.POPBandana);
    obj.label104:setLeft(20);
    obj.label104:setTop(20);
    obj.label104:setFontFamily("Nyala");
    obj.label104:setFontSize(20);
    obj.label104:setText("Bandana Nome");
    obj.label104:setName("label104");

    obj.edit351 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit351:setParent(obj.POPBandana);
    obj.edit351:setLeft(135);
    obj.edit351:setTop(16);
    obj.edit351:setWidth(270);
    obj.edit351:setHeight(25);
    obj.edit351:setField("BandanaNome");
    obj.edit351:setName("edit351");

    obj.label105 = GUI.fromHandle(_obj_newObject("label"));
    obj.label105:setParent(obj.POPBandana);
    obj.label105:setLeft(20);
    obj.label105:setTop(60);
    obj.label105:setFontFamily("Nyala");
    obj.label105:setFontSize(20);
    obj.label105:setText("HP");
    obj.label105:setName("label105");

    obj.label106 = GUI.fromHandle(_obj_newObject("label"));
    obj.label106:setParent(obj.POPBandana);
    obj.label106:setLeft(20);
    obj.label106:setTop(100);
    obj.label106:setFontFamily("Nyala");
    obj.label106:setFontSize(20);
    obj.label106:setText("Chakra");
    obj.label106:setName("label106");

    obj.label107 = GUI.fromHandle(_obj_newObject("label"));
    obj.label107:setParent(obj.POPBandana);
    obj.label107:setLeft(20);
    obj.label107:setTop(140);
    obj.label107:setFontFamily("Nyala");
    obj.label107:setFontSize(20);
    obj.label107:setText("Redução");
    obj.label107:setName("label107");

    obj.label108 = GUI.fromHandle(_obj_newObject("label"));
    obj.label108:setParent(obj.POPBandana);
    obj.label108:setLeft(20);
    obj.label108:setTop(180);
    obj.label108:setWidth(300);
    obj.label108:setFontFamily("Nyala");
    obj.label108:setFontSize(20);
    obj.label108:setText("Passiva");
    obj.label108:setName("label108");

    obj.edit352 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit352:setParent(obj.POPBandana);
    obj.edit352:setLeft(110);
    obj.edit352:setTop(56);
    obj.edit352:setWidth(85);
    obj.edit352:setHeight(25);
    obj.edit352:setType("number");
    obj.edit352:setField("BandanaHP");
    obj.edit352:setName("edit352");

    obj.edit353 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit353:setParent(obj.POPBandana);
    obj.edit353:setLeft(110);
    obj.edit353:setTop(96);
    obj.edit353:setWidth(85);
    obj.edit353:setHeight(25);
    obj.edit353:setType("number");
    obj.edit353:setField("BandanaChakra");
    obj.edit353:setName("edit353");

    obj.edit354 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit354:setParent(obj.POPBandana);
    obj.edit354:setLeft(110);
    obj.edit354:setTop(136);
    obj.edit354:setWidth(85);
    obj.edit354:setHeight(25);
    obj.edit354:setType("number");
    obj.edit354:setField("BandanaReducao");
    obj.edit354:setName("edit354");

    obj.label109 = GUI.fromHandle(_obj_newObject("label"));
    obj.label109:setParent(obj.POPBandana);
    obj.label109:setLeft(230);
    obj.label109:setTop(60);
    obj.label109:setFontFamily("Nyala");
    obj.label109:setFontSize(20);
    obj.label109:setText("Esquiva");
    obj.label109:setName("label109");

    obj.edit355 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit355:setParent(obj.POPBandana);
    obj.edit355:setLeft(320);
    obj.edit355:setTop(56);
    obj.edit355:setWidth(85);
    obj.edit355:setHeight(25);
    obj.edit355:setType("number");
    obj.edit355:setField("BandanaEsquiva");
    obj.edit355:setName("edit355");

    obj.label110 = GUI.fromHandle(_obj_newObject("label"));
    obj.label110:setParent(obj.POPBandana);
    obj.label110:setLeft(230);
    obj.label110:setTop(100);
    obj.label110:setFontFamily("Nyala");
    obj.label110:setFontSize(20);
    obj.label110:setText("Bloqueio");
    obj.label110:setName("label110");

    obj.edit356 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit356:setParent(obj.POPBandana);
    obj.edit356:setLeft(320);
    obj.edit356:setTop(96);
    obj.edit356:setWidth(85);
    obj.edit356:setHeight(25);
    obj.edit356:setType("number");
    obj.edit356:setField("BandanaBloqueio");
    obj.edit356:setName("edit356");

    obj.textEditor12 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor12:setParent(obj.POPBandana);
    obj.textEditor12:setLeft(20);
    obj.textEditor12:setTop(200);
    obj.textEditor12:setWidth(385);
    obj.textEditor12:setHeight(110);
    obj.textEditor12:setField("BandanaPassiva");
    obj.textEditor12:setName("textEditor12");

    obj.button57 = GUI.fromHandle(_obj_newObject("button"));
    obj.button57:setParent(obj.scrollBox9);
    obj.button57:setLeft(430);
    obj.button57:setTop(225);
    obj.button57:setWidth(120);
    obj.button57:setHeight(115);
    obj.button57:setOpacity(0.0);
    obj.button57:setText("");
    obj.button57:setName("button57");

    obj.POPColete = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPColete:setParent(obj.scrollBox9);
    obj.POPColete:setName("POPColete");
    obj.POPColete:setVisible(false);
    obj.POPColete:setLeft(1);
    obj.POPColete:setTop(40);
    obj.POPColete:setWidth(300);
    obj.POPColete:setHeight(320);

    obj.label111 = GUI.fromHandle(_obj_newObject("label"));
    obj.label111:setParent(obj.POPColete);
    obj.label111:setLeft(20);
    obj.label111:setTop(20);
    obj.label111:setFontFamily("Nyala");
    obj.label111:setFontSize(20);
    obj.label111:setText("Colete Nome");
    obj.label111:setName("label111");

    obj.edit357 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit357:setParent(obj.POPColete);
    obj.edit357:setLeft(130);
    obj.edit357:setTop(16);
    obj.edit357:setWidth(150);
    obj.edit357:setHeight(25);
    obj.edit357:setField("ColeteNome");
    obj.edit357:setName("edit357");

    obj.label112 = GUI.fromHandle(_obj_newObject("label"));
    obj.label112:setParent(obj.POPColete);
    obj.label112:setLeft(20);
    obj.label112:setTop(60);
    obj.label112:setFontFamily("Nyala");
    obj.label112:setFontSize(20);
    obj.label112:setText("HP");
    obj.label112:setName("label112");

    obj.label113 = GUI.fromHandle(_obj_newObject("label"));
    obj.label113:setParent(obj.POPColete);
    obj.label113:setLeft(20);
    obj.label113:setTop(100);
    obj.label113:setFontFamily("Nyala");
    obj.label113:setFontSize(20);
    obj.label113:setText("Chakra");
    obj.label113:setName("label113");

    obj.label114 = GUI.fromHandle(_obj_newObject("label"));
    obj.label114:setParent(obj.POPColete);
    obj.label114:setLeft(20);
    obj.label114:setTop(140);
    obj.label114:setFontFamily("Nyala");
    obj.label114:setFontSize(20);
    obj.label114:setText("Redução");
    obj.label114:setName("label114");

    obj.label115 = GUI.fromHandle(_obj_newObject("label"));
    obj.label115:setParent(obj.POPColete);
    obj.label115:setLeft(20);
    obj.label115:setTop(180);
    obj.label115:setWidth(300);
    obj.label115:setFontFamily("Nyala");
    obj.label115:setFontSize(20);
    obj.label115:setText("Passiva");
    obj.label115:setName("label115");

    obj.edit358 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit358:setParent(obj.POPColete);
    obj.edit358:setLeft(110);
    obj.edit358:setTop(56);
    obj.edit358:setWidth(85);
    obj.edit358:setHeight(25);
    obj.edit358:setType("number");
    obj.edit358:setField("ColeteHP");
    obj.edit358:setName("edit358");

    obj.edit359 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit359:setParent(obj.POPColete);
    obj.edit359:setLeft(110);
    obj.edit359:setTop(96);
    obj.edit359:setWidth(85);
    obj.edit359:setHeight(25);
    obj.edit359:setType("number");
    obj.edit359:setField("ColeteChakra");
    obj.edit359:setName("edit359");

    obj.edit360 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit360:setParent(obj.POPColete);
    obj.edit360:setLeft(110);
    obj.edit360:setTop(136);
    obj.edit360:setWidth(85);
    obj.edit360:setHeight(25);
    obj.edit360:setType("number");
    obj.edit360:setField("ColeteReducao");
    obj.edit360:setName("edit360");

    obj.textEditor13 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor13:setParent(obj.POPColete);
    obj.textEditor13:setLeft(20);
    obj.textEditor13:setTop(200);
    obj.textEditor13:setWidth(260);
    obj.textEditor13:setHeight(110);
    obj.textEditor13:setField("ColetePassiva");
    obj.textEditor13:setName("textEditor13");

    obj.button58 = GUI.fromHandle(_obj_newObject("button"));
    obj.button58:setParent(obj.scrollBox9);
    obj.button58:setLeft(610);
    obj.button58:setTop(232);
    obj.button58:setWidth(160);
    obj.button58:setHeight(100);
    obj.button58:setOpacity(0.0);
    obj.button58:setText("");
    obj.button58:setName("button58");

    obj.POPAcessorio = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPAcessorio:setParent(obj.scrollBox9);
    obj.POPAcessorio:setName("POPAcessorio");
    obj.POPAcessorio:setVisible(false);
    obj.POPAcessorio:setLeft(1);
    obj.POPAcessorio:setTop(60);
    obj.POPAcessorio:setWidth(480);
    obj.POPAcessorio:setHeight(460);

    obj.label116 = GUI.fromHandle(_obj_newObject("label"));
    obj.label116:setParent(obj.POPAcessorio);
    obj.label116:setLeft(20);
    obj.label116:setTop(20);
    obj.label116:setFontFamily("Nyala");
    obj.label116:setFontSize(20);
    obj.label116:setText("Acessorio Nome");
    obj.label116:setName("label116");

    obj.label117 = GUI.fromHandle(_obj_newObject("label"));
    obj.label117:setParent(obj.POPAcessorio);
    obj.label117:setLeft(20);
    obj.label117:setTop(60);
    obj.label117:setFontFamily("Nyala");
    obj.label117:setFontSize(20);
    obj.label117:setText("Dano Tai");
    obj.label117:setName("label117");

    obj.label118 = GUI.fromHandle(_obj_newObject("label"));
    obj.label118:setParent(obj.POPAcessorio);
    obj.label118:setLeft(20);
    obj.label118:setTop(100);
    obj.label118:setFontFamily("Nyala");
    obj.label118:setFontSize(20);
    obj.label118:setText("Dano Nin");
    obj.label118:setName("label118");

    obj.label119 = GUI.fromHandle(_obj_newObject("label"));
    obj.label119:setParent(obj.POPAcessorio);
    obj.label119:setLeft(20);
    obj.label119:setTop(140);
    obj.label119:setFontFamily("Nyala");
    obj.label119:setFontSize(20);
    obj.label119:setText("Dano Gen");
    obj.label119:setName("label119");

    obj.label120 = GUI.fromHandle(_obj_newObject("label"));
    obj.label120:setParent(obj.POPAcessorio);
    obj.label120:setLeft(230);
    obj.label120:setTop(60);
    obj.label120:setFontFamily("Nyala");
    obj.label120:setFontSize(20);
    obj.label120:setText("Dano Elemental");
    obj.label120:setName("label120");

    obj.label121 = GUI.fromHandle(_obj_newObject("label"));
    obj.label121:setParent(obj.POPAcessorio);
    obj.label121:setLeft(230);
    obj.label121:setTop(100);
    obj.label121:setFontFamily("Nyala");
    obj.label121:setFontSize(20);
    obj.label121:setText("HP");
    obj.label121:setName("label121");

    obj.label122 = GUI.fromHandle(_obj_newObject("label"));
    obj.label122:setParent(obj.POPAcessorio);
    obj.label122:setLeft(230);
    obj.label122:setTop(140);
    obj.label122:setFontFamily("Nyala");
    obj.label122:setFontSize(20);
    obj.label122:setText("Chakra");
    obj.label122:setName("label122");

    obj.label123 = GUI.fromHandle(_obj_newObject("label"));
    obj.label123:setParent(obj.POPAcessorio);
    obj.label123:setLeft(20);
    obj.label123:setTop(180);
    obj.label123:setWidth(300);
    obj.label123:setFontFamily("Nyala");
    obj.label123:setFontSize(20);
    obj.label123:setText("Reiatsu");
    obj.label123:setName("label123");

    obj.label124 = GUI.fromHandle(_obj_newObject("label"));
    obj.label124:setParent(obj.POPAcessorio);
    obj.label124:setLeft(230);
    obj.label124:setTop(180);
    obj.label124:setFontFamily("Nyala");
    obj.label124:setFontSize(20);
    obj.label124:setText("Outros");
    obj.label124:setName("label124");

    obj.edit361 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit361:setParent(obj.POPAcessorio);
    obj.edit361:setLeft(150);
    obj.edit361:setTop(16);
    obj.edit361:setWidth(295);
    obj.edit361:setHeight(25);
    obj.edit361:setField("AcessorioNome");
    obj.edit361:setName("edit361");

    obj.edit362 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit362:setParent(obj.POPAcessorio);
    obj.edit362:setLeft(110);
    obj.edit362:setTop(56);
    obj.edit362:setWidth(85);
    obj.edit362:setHeight(25);
    obj.edit362:setType("number");
    obj.edit362:setField("AcessorioDT");
    obj.edit362:setName("edit362");

    obj.edit363 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit363:setParent(obj.POPAcessorio);
    obj.edit363:setLeft(110);
    obj.edit363:setTop(96);
    obj.edit363:setWidth(85);
    obj.edit363:setHeight(25);
    obj.edit363:setType("number");
    obj.edit363:setField("AcessorioDN");
    obj.edit363:setName("edit363");

    obj.edit364 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit364:setParent(obj.POPAcessorio);
    obj.edit364:setLeft(110);
    obj.edit364:setTop(136);
    obj.edit364:setWidth(85);
    obj.edit364:setHeight(25);
    obj.edit364:setType("number");
    obj.edit364:setField("AcessorioDG");
    obj.edit364:setName("edit364");

    obj.edit365 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit365:setParent(obj.POPAcessorio);
    obj.edit365:setLeft(360);
    obj.edit365:setTop(56);
    obj.edit365:setWidth(85);
    obj.edit365:setHeight(25);
    obj.edit365:setType("number");
    obj.edit365:setField("AcessorioDE");
    obj.edit365:setName("edit365");

    obj.edit366 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit366:setParent(obj.POPAcessorio);
    obj.edit366:setLeft(360);
    obj.edit366:setTop(96);
    obj.edit366:setWidth(85);
    obj.edit366:setHeight(25);
    obj.edit366:setType("number");
    obj.edit366:setField("AcessorioHP");
    obj.edit366:setName("edit366");

    obj.edit367 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit367:setParent(obj.POPAcessorio);
    obj.edit367:setLeft(360);
    obj.edit367:setTop(136);
    obj.edit367:setWidth(85);
    obj.edit367:setHeight(25);
    obj.edit367:setType("number");
    obj.edit367:setField("AcessorioChakra");
    obj.edit367:setName("edit367");

    obj.edit368 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit368:setParent(obj.POPAcessorio);
    obj.edit368:setLeft(110);
    obj.edit368:setTop(176);
    obj.edit368:setWidth(85);
    obj.edit368:setHeight(25);
    obj.edit368:setType("number");
    obj.edit368:setField("AcessorioReiatsu");
    obj.edit368:setName("edit368");

    obj.edit369 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit369:setParent(obj.POPAcessorio);
    obj.edit369:setLeft(360);
    obj.edit369:setTop(176);
    obj.edit369:setWidth(85);
    obj.edit369:setHeight(25);
    obj.edit369:setType("number");
    obj.edit369:setField("AcessorioOutros");
    obj.edit369:setName("edit369");

    obj.label125 = GUI.fromHandle(_obj_newObject("label"));
    obj.label125:setParent(obj.POPAcessorio);
    obj.label125:setLeft(20);
    obj.label125:setTop(220);
    obj.label125:setWidth(300);
    obj.label125:setFontFamily("Nyala");
    obj.label125:setFontSize(20);
    obj.label125:setText("Acerto Tai");
    obj.label125:setName("label125");

    obj.edit370 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit370:setParent(obj.POPAcessorio);
    obj.edit370:setLeft(110);
    obj.edit370:setTop(216);
    obj.edit370:setWidth(85);
    obj.edit370:setHeight(25);
    obj.edit370:setType("number");
    obj.edit370:setField("AcessorioAcertoTai");
    obj.edit370:setName("edit370");

    obj.label126 = GUI.fromHandle(_obj_newObject("label"));
    obj.label126:setParent(obj.POPAcessorio);
    obj.label126:setLeft(230);
    obj.label126:setTop(220);
    obj.label126:setWidth(300);
    obj.label126:setFontFamily("Nyala");
    obj.label126:setFontSize(20);
    obj.label126:setText("Acerto Nin");
    obj.label126:setName("label126");

    obj.edit371 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit371:setParent(obj.POPAcessorio);
    obj.edit371:setLeft(360);
    obj.edit371:setTop(216);
    obj.edit371:setWidth(85);
    obj.edit371:setHeight(25);
    obj.edit371:setType("number");
    obj.edit371:setField("AcessorioAcertoNin");
    obj.edit371:setName("edit371");

    obj.label127 = GUI.fromHandle(_obj_newObject("label"));
    obj.label127:setParent(obj.POPAcessorio);
    obj.label127:setLeft(20);
    obj.label127:setTop(260);
    obj.label127:setWidth(300);
    obj.label127:setFontFamily("Nyala");
    obj.label127:setFontSize(20);
    obj.label127:setText("Acerto Gen");
    obj.label127:setName("label127");

    obj.edit372 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit372:setParent(obj.POPAcessorio);
    obj.edit372:setLeft(110);
    obj.edit372:setTop(256);
    obj.edit372:setWidth(85);
    obj.edit372:setHeight(25);
    obj.edit372:setType("number");
    obj.edit372:setField("AcessorioAcertoGen");
    obj.edit372:setName("edit372");

    obj.label128 = GUI.fromHandle(_obj_newObject("label"));
    obj.label128:setParent(obj.POPAcessorio);
    obj.label128:setLeft(230);
    obj.label128:setTop(260);
    obj.label128:setWidth(300);
    obj.label128:setFontFamily("Nyala");
    obj.label128:setFontSize(20);
    obj.label128:setText("Energia");
    obj.label128:setName("label128");

    obj.edit373 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit373:setParent(obj.POPAcessorio);
    obj.edit373:setLeft(360);
    obj.edit373:setTop(256);
    obj.edit373:setWidth(85);
    obj.edit373:setHeight(25);
    obj.edit373:setType("number");
    obj.edit373:setField("AcessorioEnergia");
    obj.edit373:setName("edit373");

    obj.label129 = GUI.fromHandle(_obj_newObject("label"));
    obj.label129:setParent(obj.POPAcessorio);
    obj.label129:setLeft(20);
    obj.label129:setTop(300);
    obj.label129:setWidth(300);
    obj.label129:setFontFamily("Nyala");
    obj.label129:setFontSize(20);
    obj.label129:setText("Habilidade");
    obj.label129:setName("label129");

    obj.textEditor14 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor14:setParent(obj.POPAcessorio);
    obj.textEditor14:setLeft(20);
    obj.textEditor14:setTop(330);
    obj.textEditor14:setWidth(425);
    obj.textEditor14:setHeight(110);
    obj.textEditor14:setField("AcessorioPassiva");
    obj.textEditor14:setName("textEditor14");

    obj.button59 = GUI.fromHandle(_obj_newObject("button"));
    obj.button59:setParent(obj.scrollBox9);
    obj.button59:setLeft(30);
    obj.button59:setTop(540);
    obj.button59:setWidth(120);
    obj.button59:setHeight(115);
    obj.button59:setOpacity(0.1);
    obj.button59:setText("");
    obj.button59:setName("button59");

    obj.POPBAG = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPBAG:setParent(obj.scrollBox9);
    obj.POPBAG:setName("POPBAG");
    obj.POPBAG:setVisible(false);
    obj.POPBAG:setLeft(1);
    obj.POPBAG:setTop(40);
    obj.POPBAG:setWidth(660);
    obj.POPBAG:setHeight(500);

    obj.image40 = GUI.fromHandle(_obj_newObject("image"));
    obj.image40:setParent(obj.POPBAG);
    obj.image40:setLeft(5);
    obj.image40:setTop(1);
    obj.image40:setWidth(650);
    obj.image40:setHeight(500);
    obj.image40:setSRC("/imagens/Loja.png");
    obj.image40:setName("image40");

    obj.label130 = GUI.fromHandle(_obj_newObject("label"));
    obj.label130:setParent(obj.POPBAG);
    obj.label130:setLeft(160);
    obj.label130:setTop(13);
    obj.label130:setHeight(25);
    obj.label130:setWidth(100);
    obj.label130:setFontColor("red");
    obj.label130:setText("Kunai");
    obj.label130:setAutoSize(true);
    obj.label130:setName("label130");

    obj.edit374 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit374:setParent(obj.POPBAG);
    obj.edit374:setLeft(200);
    obj.edit374:setTop(08);
    obj.edit374:setHeight(25);
    obj.edit374:setWidth(30);
    obj.edit374:setEnabled(false);
    obj.edit374:setType("number");
    obj.edit374:setField("KunaiLimite");
    obj.edit374:setName("edit374");

    obj.label131 = GUI.fromHandle(_obj_newObject("label"));
    obj.label131:setParent(obj.POPBAG);
    obj.label131:setLeft(235);
    obj.label131:setTop(13);
    obj.label131:setHeight(25);
    obj.label131:setWidth(100);
    obj.label131:setFontColor("red");
    obj.label131:setText("Shuriken");
    obj.label131:setAutoSize(true);
    obj.label131:setName("label131");

    obj.edit375 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit375:setParent(obj.POPBAG);
    obj.edit375:setLeft(290);
    obj.edit375:setTop(08);
    obj.edit375:setHeight(25);
    obj.edit375:setWidth(30);
    obj.edit375:setEnabled(false);
    obj.edit375:setType("number");
    obj.edit375:setField("ShurikenLimite");
    obj.edit375:setName("edit375");

    obj.label132 = GUI.fromHandle(_obj_newObject("label"));
    obj.label132:setParent(obj.POPBAG);
    obj.label132:setLeft(325);
    obj.label132:setTop(13);
    obj.label132:setHeight(25);
    obj.label132:setWidth(100);
    obj.label132:setFontColor("red");
    obj.label132:setText("S.Fuuma");
    obj.label132:setAutoSize(true);
    obj.label132:setName("label132");

    obj.edit376 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit376:setParent(obj.POPBAG);
    obj.edit376:setLeft(380);
    obj.edit376:setTop(08);
    obj.edit376:setHeight(25);
    obj.edit376:setWidth(30);
    obj.edit376:setEnabled(false);
    obj.edit376:setType("number");
    obj.edit376:setField("SFuumaLimite");
    obj.edit376:setName("edit376");

    obj.label133 = GUI.fromHandle(_obj_newObject("label"));
    obj.label133:setParent(obj.POPBAG);
    obj.label133:setLeft(420);
    obj.label133:setTop(13);
    obj.label133:setHeight(25);
    obj.label133:setWidth(100);
    obj.label133:setFontColor("red");
    obj.label133:setText("K.Gigante");
    obj.label133:setAutoSize(true);
    obj.label133:setName("label133");

    obj.edit377 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit377:setParent(obj.POPBAG);
    obj.edit377:setLeft(480);
    obj.edit377:setTop(08);
    obj.edit377:setHeight(25);
    obj.edit377:setWidth(30);
    obj.edit377:setEnabled(false);
    obj.edit377:setType("number");
    obj.edit377:setField("KGiganteLimite");
    obj.edit377:setName("edit377");

    obj.label134 = GUI.fromHandle(_obj_newObject("label"));
    obj.label134:setParent(obj.POPBAG);
    obj.label134:setLeft(515);
    obj.label134:setTop(13);
    obj.label134:setHeight(25);
    obj.label134:setWidth(100);
    obj.label134:setFontColor("red");
    obj.label134:setText("P.Bomba");
    obj.label134:setAutoSize(true);
    obj.label134:setName("label134");

    obj.edit378 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit378:setParent(obj.POPBAG);
    obj.edit378:setLeft(570);
    obj.edit378:setTop(08);
    obj.edit378:setHeight(25);
    obj.edit378:setWidth(30);
    obj.edit378:setEnabled(false);
    obj.edit378:setType("number");
    obj.edit378:setField("PBombaLimite");
    obj.edit378:setName("edit378");

    obj.label135 = GUI.fromHandle(_obj_newObject("label"));
    obj.label135:setParent(obj.POPBAG);
    obj.label135:setLeft(160);
    obj.label135:setTop(38);
    obj.label135:setHeight(25);
    obj.label135:setWidth(100);
    obj.label135:setFontColor("red");
    obj.label135:setText("G.Explosivo");
    obj.label135:setAutoSize(true);
    obj.label135:setName("label135");

    obj.edit379 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit379:setParent(obj.POPBAG);
    obj.edit379:setLeft(230);
    obj.edit379:setTop(35);
    obj.edit379:setHeight(25);
    obj.edit379:setWidth(30);
    obj.edit379:setEnabled(false);
    obj.edit379:setType("number");
    obj.edit379:setField("GExplosivoLimite");
    obj.edit379:setName("edit379");

    obj.label136 = GUI.fromHandle(_obj_newObject("label"));
    obj.label136:setParent(obj.POPBAG);
    obj.label136:setLeft(265);
    obj.label136:setTop(38);
    obj.label136:setHeight(25);
    obj.label136:setWidth(100);
    obj.label136:setFontColor("red");
    obj.label136:setText("Veneno");
    obj.label136:setAutoSize(true);
    obj.label136:setName("label136");

    obj.edit380 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit380:setParent(obj.POPBAG);
    obj.edit380:setLeft(315);
    obj.edit380:setTop(35);
    obj.edit380:setHeight(25);
    obj.edit380:setWidth(30);
    obj.edit380:setEnabled(false);
    obj.edit380:setType("number");
    obj.edit380:setField("VenenoLimite");
    obj.edit380:setName("edit380");

    obj.label137 = GUI.fromHandle(_obj_newObject("label"));
    obj.label137:setParent(obj.POPBAG);
    obj.label137:setLeft(350);
    obj.label137:setTop(38);
    obj.label137:setHeight(25);
    obj.label137:setWidth(100);
    obj.label137:setFontColor("red");
    obj.label137:setText("Bandagem");
    obj.label137:setAutoSize(true);
    obj.label137:setName("label137");

    obj.edit381 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit381:setParent(obj.POPBAG);
    obj.edit381:setLeft(415);
    obj.edit381:setTop(35);
    obj.edit381:setHeight(25);
    obj.edit381:setWidth(30);
    obj.edit381:setEnabled(false);
    obj.edit381:setType("number");
    obj.edit381:setField("BandagemLimite");
    obj.edit381:setName("edit381");

    obj.label138 = GUI.fromHandle(_obj_newObject("label"));
    obj.label138:setParent(obj.POPBAG);
    obj.label138:setLeft(450);
    obj.label138:setTop(38);
    obj.label138:setHeight(25);
    obj.label138:setWidth(100);
    obj.label138:setFontColor("red");
    obj.label138:setText("Bomba Fumaça");
    obj.label138:setAutoSize(true);
    obj.label138:setName("label138");

    obj.edit382 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit382:setParent(obj.POPBAG);
    obj.edit382:setLeft(545);
    obj.edit382:setTop(35);
    obj.edit382:setHeight(25);
    obj.edit382:setWidth(30);
    obj.edit382:setEnabled(false);
    obj.edit382:setType("number");
    obj.edit382:setField("BombaFumacaLimite");
    obj.edit382:setName("edit382");

    obj.label139 = GUI.fromHandle(_obj_newObject("label"));
    obj.label139:setParent(obj.POPBAG);
    obj.label139:setLeft(580);
    obj.label139:setTop(38);
    obj.label139:setHeight(25);
    obj.label139:setWidth(100);
    obj.label139:setFontColor("red");
    obj.label139:setText("Sembo");
    obj.label139:setAutoSize(true);
    obj.label139:setName("label139");

    obj.edit383 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit383:setParent(obj.POPBAG);
    obj.edit383:setLeft(625);
    obj.edit383:setTop(35);
    obj.edit383:setHeight(25);
    obj.edit383:setWidth(30);
    obj.edit383:setEnabled(false);
    obj.edit383:setType("number");
    obj.edit383:setField("SemboLimite");
    obj.edit383:setName("edit383");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.POPBAG);
    obj.layout1:setAlign("top");
    obj.layout1:setHeight(30);
    obj.layout1:setMargins({bottom=4});
    obj.layout1:setName("layout1");

    obj.button60 = GUI.fromHandle(_obj_newObject("button"));
    obj.button60:setParent(obj.layout1);
    obj.button60:setText("Novo Item");
    obj.button60:setWidth(150);
    obj.button60:setAlign("left");
    obj.button60:setName("button60");

    obj.cmbTipoBag = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.cmbTipoBag:setParent(obj.POPBAG);
    obj.cmbTipoBag:setName("cmbTipoBag");
    obj.cmbTipoBag:setLeft(3);
    obj.cmbTipoBag:setTop(40);
    obj.cmbTipoBag:setWidth(147);
    obj.cmbTipoBag:setItems({'Tipo Bag', 'Bag Genin', 'Bag Chunin', 'Bag Tengu', 'Bag Yebisu', 'Bag Benzaiten'});
    obj.cmbTipoBag:setField("TipoBag");
    obj.cmbTipoBag:setValues({'1', '2', '3', '4', '5', '6'});

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
    obj.boxDetalhesDoItem:setWidth(355);
    obj.boxDetalhesDoItem:setHeight(440);
    obj.boxDetalhesDoItem:setMargins({left=4, right=4});

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.boxDetalhesDoItem);
    obj.rectangle8:setColor("grey");
    obj.rectangle8:setHeight(430);
    obj.rectangle8:setWidth(380);
    obj.rectangle8:setTop(33);
    obj.rectangle8:setLeft(1);
    obj.rectangle8:setName("rectangle8");

    obj.label140 = GUI.fromHandle(_obj_newObject("label"));
    obj.label140:setParent(obj.rectangle8);
    obj.label140:setLeft(10);
    obj.label140:setTop(13);
    obj.label140:setHeight(25);
    obj.label140:setWidth(100);
    obj.label140:setFontColor("red");
    obj.label140:setText("Nome do Item:");
    obj.label140:setAutoSize(true);
    obj.label140:setName("label140");

    obj.edit384 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit384:setParent(obj.rectangle8);
    obj.edit384:setLeft(105);
    obj.edit384:setTop(10);
    obj.edit384:setHeight(25);
    obj.edit384:setWidth(155);
    obj.edit384:setField("NomedoItem");
    obj.edit384:setName("edit384");

    obj.button61 = GUI.fromHandle(_obj_newObject("button"));
    obj.button61:setParent(obj.rectangle8);
    obj.button61:setWidth(80);
    obj.button61:setHeight(25);
    obj.button61:setLeft(265);
    obj.button61:setTop(10);
    obj.button61:setFontColor("red");
    obj.button61:setText("DELETAR");
    obj.button61:setName("button61");

    obj.textEditor15 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor15:setParent(obj.rectangle8);
    obj.textEditor15:setLeft(10);
    obj.textEditor15:setTop(40);
    obj.textEditor15:setWidth(335);
    obj.textEditor15:setHeight(310);
    obj.textEditor15:setField("DescriItem");
    obj.textEditor15:setName("textEditor15");

    obj.label141 = GUI.fromHandle(_obj_newObject("label"));
    obj.label141:setParent(obj.rectangle8);
    obj.label141:setLeft(10);
    obj.label141:setTop(360);
    obj.label141:setHeight(25);
    obj.label141:setWidth(100);
    obj.label141:setText("Tipo :");
    obj.label141:setAutoSize(true);
    obj.label141:setName("label141");

    obj.comboBox21 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox21:setParent(obj.rectangle8);
    obj.comboBox21:setLeft(50);
    obj.comboBox21:setTop(360);
    obj.comboBox21:setWidth(140);
    obj.comboBox21:setHeight(18);
    obj.comboBox21:setField("TipoItens");
    obj.comboBox21:setItems({'Kunai', 'Shuriken', 'Shuriken Fuuma', 'Kunai Gigante', 'Marionete', 'Papel Bomba', 'Ginso Explosivo', 'Veneno', 'Bandagem', 'Bomba de Fumaça', 'Selamento', 'Outros'});
    obj.comboBox21:setName("comboBox21");

    obj.dataLink49 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink49:setParent(obj.POPBAG);
    obj.dataLink49:setField("TipoBag");
    obj.dataLink49:setName("dataLink49");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Extra");
    obj.tab4:setName("tab4");

    obj.scrollBox10 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox10:setParent(obj.tab4);
    obj.scrollBox10:setAlign("client");
    obj.scrollBox10:setName("scrollBox10");

    obj.image41 = GUI.fromHandle(_obj_newObject("image"));
    obj.image41:setParent(obj.scrollBox10);
    obj.image41:setLeft(1);
    obj.image41:setTop(1);
    obj.image41:setWidth(1190);
    obj.image41:setHeight(680);
    obj.image41:setSRC("/imagens/7.png");
    obj.image41:setName("image41");

    obj.edit385 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit385:setParent(obj.scrollBox10);
    obj.edit385:setLeft(170);
    obj.edit385:setTop(12);
    obj.edit385:setWidth(80);
    obj.edit385:setHeight(25);
    obj.edit385:setHorzTextAlign("center");
    obj.edit385:setType("number");
    obj.edit385:setMax(100);
    obj.edit385:setMin(0);
    obj.edit385:setEnabled(false);
    obj.edit385:setFontSize(18);
    obj.edit385:setField("RepFolha");
    obj.edit385:setName("edit385");

    obj.edit386 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit386:setParent(obj.scrollBox10);
    obj.edit386:setLeft(170);
    obj.edit386:setTop(40);
    obj.edit386:setWidth(80);
    obj.edit386:setHeight(25);
    obj.edit386:setHorzTextAlign("center");
    obj.edit386:setType("number");
    obj.edit386:setMax(100);
    obj.edit386:setMin(0);
    obj.edit386:setEnabled(false);
    obj.edit386:setFontSize(18);
    obj.edit386:setField("RepAreia");
    obj.edit386:setName("edit386");

    obj.edit387 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit387:setParent(obj.scrollBox10);
    obj.edit387:setLeft(170);
    obj.edit387:setTop(68);
    obj.edit387:setWidth(80);
    obj.edit387:setHeight(25);
    obj.edit387:setHorzTextAlign("center");
    obj.edit387:setType("number");
    obj.edit387:setMax(100);
    obj.edit387:setMin(0);
    obj.edit387:setEnabled(false);
    obj.edit387:setFontSize(18);
    obj.edit387:setField("RepNuvem");
    obj.edit387:setName("edit387");

    obj.edit388 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit388:setParent(obj.scrollBox10);
    obj.edit388:setLeft(170);
    obj.edit388:setTop(96);
    obj.edit388:setWidth(80);
    obj.edit388:setHeight(25);
    obj.edit388:setHorzTextAlign("center");
    obj.edit388:setType("number");
    obj.edit388:setMax(100);
    obj.edit388:setMin(0);
    obj.edit388:setEnabled(false);
    obj.edit388:setFontSize(18);
    obj.edit388:setField("RepNevoa");
    obj.edit388:setName("edit388");

    obj.edit389 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit389:setParent(obj.scrollBox10);
    obj.edit389:setLeft(170);
    obj.edit389:setTop(124);
    obj.edit389:setWidth(80);
    obj.edit389:setHeight(25);
    obj.edit389:setHorzTextAlign("center");
    obj.edit389:setType("number");
    obj.edit389:setMax(100);
    obj.edit389:setMin(0);
    obj.edit389:setEnabled(false);
    obj.edit389:setFontSize(18);
    obj.edit389:setField("RepPedra");
    obj.edit389:setName("edit389");

    obj.GanhoAnual = GUI.fromHandle(_obj_newObject("edit"));
    obj.GanhoAnual:setParent(obj.scrollBox10);
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

    obj.edit390 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit390:setParent(obj.scrollBox10);
    obj.edit390:setLeft(187);
    obj.edit390:setTop(213);
    obj.edit390:setWidth(50);
    obj.edit390:setHeight(25);
    obj.edit390:setHorzTextAlign("center");
    obj.edit390:setType("number");
    obj.edit390:setFontSize(18);
    obj.edit390:setEnabled(true);
    obj.edit390:setField("BonusGanhoAnual");
    obj.edit390:setName("edit390");

    obj.edit391 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit391:setParent(obj.scrollBox10);
    obj.edit391:setLeft(10);
    obj.edit391:setTop(270);
    obj.edit391:setReadOnly(true);
    obj.edit391:setWidth(140);
    obj.edit391:setHeight(25);
    obj.edit391:setHorzTextAlign("center");
    obj.edit391:setFontSize(18);
    obj.edit391:setEnabled(true);
    obj.edit391:setField("BingoBook");
    obj.edit391:setName("edit391");

    obj.comboBox22 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox22:setParent(obj.scrollBox10);
    obj.comboBox22:setLeft(110);
    obj.comboBox22:setTop(300);
    obj.comboBox22:setField("Moradia");
    obj.comboBox22:setItems({'Primaria', 'Barata', 'Media', 'Cara', 'Aluguel'});
    obj.comboBox22:setName("comboBox22");

    obj.edit392 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit392:setParent(obj.scrollBox10);
    obj.edit392:setLeft(280);
    obj.edit392:setTop(298);
    obj.edit392:setWidth(50);
    obj.edit392:setHeight(25);
    obj.edit392:setHorzTextAlign("center");
    obj.edit392:setFontSize(18);
    obj.edit392:setField("MoradiaNpc");
    obj.edit392:setName("edit392");

    obj.edit393 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit393:setParent(obj.scrollBox10);
    obj.edit393:setLeft(10);
    obj.edit393:setTop(385);
    obj.edit393:setWidth(40);
    obj.edit393:setHeight(25);
    obj.edit393:setHorzTextAlign("center");
    obj.edit393:setFontSize(18);
    obj.edit393:setEnabled(true);
    obj.edit393:setField("Bonus1d10");
    obj.edit393:setName("edit393");

    obj.edit394 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit394:setParent(obj.scrollBox10);
    obj.edit394:setLeft(60);
    obj.edit394:setTop(385);
    obj.edit394:setWidth(40);
    obj.edit394:setHeight(25);
    obj.edit394:setHorzTextAlign("center");
    obj.edit394:setFontSize(18);
    obj.edit394:setEnabled(true);
    obj.edit394:setField("Bonus2d10");
    obj.edit394:setName("edit394");

    obj.edit395 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit395:setParent(obj.scrollBox10);
    obj.edit395:setLeft(110);
    obj.edit395:setTop(385);
    obj.edit395:setWidth(40);
    obj.edit395:setHeight(25);
    obj.edit395:setHorzTextAlign("center");
    obj.edit395:setFontSize(18);
    obj.edit395:setEnabled(true);
    obj.edit395:setField("Bonus3d10");
    obj.edit395:setName("edit395");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.scrollBox10);
    obj.rectangle9:setLeft(160);
    obj.rectangle9:setTop(384);
    obj.rectangle9:setWidth(40);
    obj.rectangle9:setHeight(30);
    obj.rectangle9:setColor("black");
    obj.rectangle9:setStrokeColor("red");
    obj.rectangle9:setStrokeSize(3);
    obj.rectangle9:setName("rectangle9");

    obj.edit396 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit396:setParent(obj.scrollBox10);
    obj.edit396:setLeft(160);
    obj.edit396:setTop(385);
    obj.edit396:setWidth(40);
    obj.edit396:setHeight(25);
    obj.edit396:setTransparent(true);
    obj.edit396:setHorzTextAlign("center");
    obj.edit396:setEnabled(true);
    obj.edit396:setFontSize(18);
    obj.edit396:setField("Bonus1d20");
    obj.edit396:setName("edit396");

    obj.comboBox23 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox23:setParent(obj.scrollBox10);
    obj.comboBox23:setLeft(490);
    obj.comboBox23:setTop(185);
    obj.comboBox23:setWidth(130);
    obj.comboBox23:setField("GraduacaoStatusSocial");
    obj.comboBox23:setItems({'Academico', 'Genin', 'Chunin', 'Jounin', 'Anbu', 'AnbuNucleo', 'Organização', 'GDE', 'Concelheiro', 'Kage'});
    obj.comboBox23:setName("comboBox23");

    obj.button62 = GUI.fromHandle(_obj_newObject("button"));
    obj.button62:setParent(obj.scrollBox10);
    obj.button62:setLeft(10);
    obj.button62:setTop(435);
    obj.button62:setWidth(130);
    obj.button62:setHeight(30);
    obj.button62:setOpacity(1.0);
    obj.button62:setText("Treinamento Status");
    obj.button62:setName("button62");

    obj.edit397 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit397:setParent(obj.scrollBox10);
    obj.edit397:setLeft(303);
    obj.edit397:setTop(438);
    obj.edit397:setWidth(25);
    obj.edit397:setHeight(25);
    obj.edit397:setTransparent(false);
    obj.edit397:setHorzTextAlign("center");
    obj.edit397:setEnabled(true);
    obj.edit397:setMin(0);
    obj.edit397:setMax(9);
    obj.edit397:setType("number");
    obj.edit397:setFontSize(18);
    obj.edit397:setField("VezesPDia");
    obj.edit397:setName("edit397");

    obj.GanhoporTreino = GUI.fromHandle(_obj_newObject("edit"));
    obj.GanhoporTreino:setParent(obj.scrollBox10);
    obj.GanhoporTreino:setName("GanhoporTreino");
    obj.GanhoporTreino:setLeft(500);
    obj.GanhoporTreino:setTop(438);
    obj.GanhoporTreino:setWidth(100);
    obj.GanhoporTreino:setHeight(25);
    obj.GanhoporTreino:setTransparent(false);
    obj.GanhoporTreino:setHorzTextAlign("center");
    obj.GanhoporTreino:setEnabled(false);
    obj.GanhoporTreino:setVisible(true);
    obj.GanhoporTreino:setFontSize(18);
    obj.GanhoporTreino:setField("GanhoPTreino");

    obj.image42 = GUI.fromHandle(_obj_newObject("image"));
    obj.image42:setParent(obj.scrollBox10);
    obj.image42:setLeft(23);
    obj.image42:setTop(478);
    obj.image42:setWidth(146);
    obj.image42:setHeight(116);
    obj.image42:setEditable(false);
    obj.image42:setStyle("stretch");
    lfm_setPropAsString(obj.image42, "animate",  "true");
    obj.image42:setSRC("https://uploads.spiritfanfiction.com/fanfics/capitulos/201907/idaten-no-naito-17030721-180720190606.gif");
    obj.image42:setName("image42");

    obj.image43 = GUI.fromHandle(_obj_newObject("image"));
    obj.image43:setParent(obj.scrollBox10);
    obj.image43:setLeft(222);
    obj.image43:setTop(478);
    obj.image43:setWidth(146);
    obj.image43:setHeight(116);
    obj.image43:setEditable(false);
    obj.image43:setStyle("autoFit");
    lfm_setPropAsString(obj.image43, "animate",  "true");
    obj.image43:setSRC("https://i.kym-cdn.com/photos/images/original/001/010/923/060.gif");
    obj.image43:setName("image43");

    obj.dataLink50 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink50:setParent(obj.scrollBox10);
    obj.dataLink50:setFields({'GraduacaoStatusSocial', 'BonusGanhoAnual'});
    obj.dataLink50:setName("dataLink50");

    obj.button63 = GUI.fromHandle(_obj_newObject("button"));
    obj.button63:setParent(obj.scrollBox10);
    obj.button63:setLeft(23);
    obj.button63:setTop(478);
    obj.button63:setWidth(146);
    obj.button63:setHeight(116);
    obj.button63:setOpacity(0.1);
    obj.button63:setText("");
    obj.button63:setName("button63");

    obj.POPTreino = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPTreino:setParent(obj.scrollBox10);
    obj.POPTreino:setName("POPTreino");
    obj.POPTreino:setVisible(false);
    obj.POPTreino:setLeft(1);
    obj.POPTreino:setTop(40);
    obj.POPTreino:setWidth(900);
    obj.POPTreino:setHeight(600);

    obj.scrollBox11 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox11:setParent(obj.POPTreino);
    obj.scrollBox11:setAlign("client");
    obj.scrollBox11:setName("scrollBox11");

    obj.image44 = GUI.fromHandle(_obj_newObject("image"));
    obj.image44:setParent(obj.scrollBox11);
    obj.image44:setTop(1);
    obj.image44:setWidth(870);
    obj.image44:setHeight(705);
    obj.image44:setSRC("/imagens/5.png");
    obj.image44:setName("image44");

    obj.button64 = GUI.fromHandle(_obj_newObject("button"));
    obj.button64:setParent(obj.scrollBox11);
    obj.button64:setText("Novo Aprendizado");
    obj.button64:setWidth(125);
    obj.button64:setHeight(40);
    obj.button64:setLeft(70);
    obj.button64:setTop(10);
    obj.button64:setName("button64");

    obj.rclListadeTreino = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListadeTreino:setParent(obj.scrollBox11);
    obj.rclListadeTreino:setName("rclListadeTreino");
    obj.rclListadeTreino:setField("TreinoJutsus");
    obj.rclListadeTreino:setTemplateForm("frmTreinosJutsus1");
    obj.rclListadeTreino:setWidth(880);
    obj.rclListadeTreino:setHeight(570);
    obj.rclListadeTreino:setLeft(10);
    obj.rclListadeTreino:setTop(60);
    obj.rclListadeTreino:setSelectable(true);

    obj.dsbListadeTreino = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.dsbListadeTreino:setParent(obj.scrollBox11);
    obj.dsbListadeTreino:setName("dsbListadeTreino");
    obj.dsbListadeTreino:setVisible(false);
    obj.dsbListadeTreino:setWidth(480);
    obj.dsbListadeTreino:setHeight(510);
    obj.dsbListadeTreino:setLeft(400);
    obj.dsbListadeTreino:setTop(60);

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.dsbListadeTreino);
    obj.rectangle10:setColor("black");
    obj.rectangle10:setXradius(10);
    obj.rectangle10:setYradius(10);
    obj.rectangle10:setWidth(460);
    obj.rectangle10:setHeight(500);
    obj.rectangle10:setLeft(1);
    obj.rectangle10:setTop(1);
    obj.rectangle10:setName("rectangle10");

    obj.label142 = GUI.fromHandle(_obj_newObject("label"));
    obj.label142:setParent(obj.rectangle10);
    obj.label142:setWidth(120);
    obj.label142:setHeight(40);
    obj.label142:setLeft(10);
    obj.label142:setTop(10);
    obj.label142:setFontFamily("Nyala");
    obj.label142:setFontSize(20);
    obj.label142:setText("Nome do Jutsu:");
    obj.label142:setName("label142");

    obj.edit398 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit398:setParent(obj.rectangle10);
    obj.edit398:setWidth(220);
    obj.edit398:setHeight(30);
    obj.edit398:setLeft(130);
    obj.edit398:setTop(15);
    obj.edit398:setField("JutsuTreinando");
    obj.edit398:setName("edit398");

    obj.button65 = GUI.fromHandle(_obj_newObject("button"));
    obj.button65:setParent(obj.rectangle10);
    obj.button65:setWidth(80);
    obj.button65:setHeight(30);
    obj.button65:setLeft(360);
    obj.button65:setTop(15);
    obj.button65:setFontColor("red");
    obj.button65:setText("DELETAR");
    obj.button65:setName("button65");

    obj.textEditor16 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor16:setParent(obj.rectangle10);
    obj.textEditor16:setLeft(10);
    obj.textEditor16:setTop(60);
    obj.textEditor16:setWidth(430);
    obj.textEditor16:setHeight(280);
    obj.textEditor16:setField("DescriTreinandoJutsu");
    obj.textEditor16:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor16:setName("textEditor16");

    obj.label143 = GUI.fromHandle(_obj_newObject("label"));
    obj.label143:setParent(obj.rectangle10);
    obj.label143:setLeft(140);
    obj.label143:setTop(350);
    obj.label143:setWidth(230);
    obj.label143:setHeight(40);
    obj.label143:setFontFamily("Nyala");
    obj.label143:setFontSize(18);
    obj.label143:setText("Fortificação de jutsu 3D10 e 1d20");
    obj.label143:setName("label143");

    obj.edit399 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit399:setParent(obj.rectangle10);
    obj.edit399:setLeft(140);
    obj.edit399:setTop(385);
    obj.edit399:setWidth(50);
    obj.edit399:setHeight(30);
    obj.edit399:setType("number");
    obj.edit399:setMin(1);
    obj.edit399:setMax(9);
    obj.edit399:setEnabled(false);
    obj.edit399:setHorzTextAlign("center");
    obj.edit399:setField("Treina1d10");
    obj.edit399:setName("edit399");

    obj.edit400 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit400:setParent(obj.rectangle10);
    obj.edit400:setLeft(200);
    obj.edit400:setTop(385);
    obj.edit400:setWidth(50);
    obj.edit400:setHeight(30);
    obj.edit400:setType("number");
    obj.edit400:setMin(1);
    obj.edit400:setMax(9);
    obj.edit400:setEnabled(false);
    obj.edit400:setHorzTextAlign("center");
    obj.edit400:setField("Treina2d10");
    obj.edit400:setName("edit400");

    obj.edit401 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit401:setParent(obj.rectangle10);
    obj.edit401:setLeft(260);
    obj.edit401:setTop(385);
    obj.edit401:setWidth(50);
    obj.edit401:setHeight(30);
    obj.edit401:setType("number");
    obj.edit401:setMin(1);
    obj.edit401:setMax(9);
    obj.edit401:setEnabled(false);
    obj.edit401:setHorzTextAlign("center");
    obj.edit401:setField("Treina3d10");
    obj.edit401:setName("edit401");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.rectangle10);
    obj.rectangle11:setLeft(320);
    obj.rectangle11:setTop(385);
    obj.rectangle11:setWidth(50);
    obj.rectangle11:setHeight(30);
    obj.rectangle11:setColor("black");
    obj.rectangle11:setStrokeColor("red");
    obj.rectangle11:setStrokeSize(3);
    obj.rectangle11:setName("rectangle11");

    obj.edit402 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit402:setParent(obj.rectangle10);
    obj.edit402:setLeft(320);
    obj.edit402:setTop(385);
    obj.edit402:setWidth(50);
    obj.edit402:setHeight(30);
    obj.edit402:setType("number");
    obj.edit402:setMin(1);
    obj.edit402:setMax(18);
    obj.edit402:setEnabled(false);
    obj.edit402:setTransparent(true);
    obj.edit402:setHorzTextAlign("center");
    obj.edit402:setField("Treina1d20");
    obj.edit402:setName("edit402");

    obj.label144 = GUI.fromHandle(_obj_newObject("label"));
    obj.label144:setParent(obj.rectangle10);
    obj.label144:setLeft(60);
    obj.label144:setTop(420);
    obj.label144:setWidth(100);
    obj.label144:setHeight(30);
    obj.label144:setFontFamily("Nyala");
    obj.label144:setFontSize(18);
    obj.label144:setText("Rank do Jutsu");
    obj.label144:setName("label144");

    obj.cmbRakporAprendizado = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.cmbRakporAprendizado:setParent(obj.rectangle10);
    obj.cmbRakporAprendizado:setName("cmbRakporAprendizado");
    obj.cmbRakporAprendizado:setLeft(160);
    obj.cmbRakporAprendizado:setTop(420);
    obj.cmbRakporAprendizado:setWidth(50);
    obj.cmbRakporAprendizado:setHeight(30);
    obj.cmbRakporAprendizado:setFontFamily("Nyala");
    obj.cmbRakporAprendizado:setFontSize(18);
    obj.cmbRakporAprendizado:setField("RankPorAprender");
    obj.cmbRakporAprendizado:setItems({'E', 'D', 'C', 'B', 'A', 'S', 'SS', 'X','X+'});

    obj.btnAprender = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAprender:setParent(obj.rectangle10);
    obj.btnAprender:setName("btnAprender");
    obj.btnAprender:setLeft(60);
    obj.btnAprender:setTop(385);
    obj.btnAprender:setWidth(70);
    obj.btnAprender:setHeight(30);
    obj.btnAprender:setFontFamily("Nyala");
    obj.btnAprender:setFontSize(16);
    obj.btnAprender:setText("Aprender");


										function AprenderJutsu()							
											local node = self.dsbListadeTreino.node;										
											self.btnAprender.visible = false;							
											local mesaDoPersonagem = rrpg.getMesaDe(sheet);											
											node.Treina1d10 = tonumber(node.Dificuldade1d10DoJutsu1) + (tonumber(sheet.Bonus1d10) or 0);
											node.Treina2d10 = tonumber(node.Dificuldade2d10DoJutsu1) + (tonumber(sheet.Bonus2d10) or 0);
											node.Treina3d10 = tonumber(node.Dificuldade3d10DoJutsu1) + (tonumber(sheet.Bonus3d10) or 0);
											node.Treina1d20 = tonumber(node.Dificuldade1d20DoJutsu1) + (tonumber(sheet.Bonus1d20) or 0);	
											
											if sheet.TreinoON == true then	
												mesaDoPersonagem.chat:rolarDados("1d10", "[§K3]Fortificamento de Jutsu",
												function (rolado)
												if node.DescriTreinandoJutsu == nil then
													showMessage('Falta Descrição do Jutsu ou não irá funcionar');
													self.btnAprender.visible = true;
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
																					node.Dificuldade1d10DoJutsu1Estudo = 0;
																					node.Dificuldade2d10DoJutsu1Estudo = 0;
																					node.Dificuldade3d10DoJutsu1Estudo = 0;
																					node.Dificuldade1d20DoJutsu1Estudo = 0;																			
																					RecebeXPPorAprenderJutsu();
																					self.btnAprender.visible = true;	
																				else 
																					mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Ultima");
																					node.Dificuldade1d20DoJutsu1Estudo = (tonumber(node.Dificuldade1d20DoJutsu1Estudo) or 0) + 1;
																					self.btnAprender.visible = true;	
																				end;
																			end);	
																		else
																			mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Terceira");
																			node.Dificuldade3d10DoJutsu1Estudo = (tonumber(node.Dificuldade3d10DoJutsu1Estudo) or 0) + 1;
																			self.btnAprender.visible = true;																
																		end;
																	end);
																else
																	mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Segunda");
																	node.Dificuldade2d10DoJutsu1Estudo = (tonumber(node.Dificuldade2d10DoJutsu1Estudo) or 0) + 1;
																	self.btnAprender.visible = true;														
																end;												
															end)
														else
															mesaDoPersonagem.chat:enviarMensagem(".. [§K4] Falhou na Primeira");
															node.Dificuldade1d10DoJutsu1Estudo = (tonumber(node.Dificuldade1d10DoJutsu1Estudo) or 0) + 1;
															self.btnAprender.visible = true;
														end;
													end;
												end);
											else
												showMessage("TREINO NÃO HABILITADO PROVAVELMENTE O MESTRE ESTA OFFLINE");
												self.btnAprender.visible = true;
											end;
										end;				
										


    obj.dataLink51 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink51:setParent(obj.rectangle10);
    obj.dataLink51:setFields({'RankPorAprender', 'GraduacaoTreino', 'Dificuldade1d10DoJutsu1', 'Dificuldade2d10DoJutsu1', 'Dificuldade3d10DoJutsu1', 'Dificuldade1d20DoJutsu1', 
									'Dificuldade1d10DoJutsu1Estudo', 'Dificuldade2d10DoJutsu1Estudo', 'Dificuldade3d10DoJutsu1Estudo', 'Dificuldade1d20DoJutsu1Estudo'});
    obj.dataLink51:setName("dataLink51");

    obj.button66 = GUI.fromHandle(_obj_newObject("button"));
    obj.button66:setParent(obj.scrollBox10);
    obj.button66:setLeft(222);
    obj.button66:setTop(478);
    obj.button66:setWidth(146);
    obj.button66:setHeight(116);
    obj.button66:setOpacity(0.1);
    obj.button66:setText("");
    obj.button66:setName("button66");

    obj.POPAmizade = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPAmizade:setParent(obj.scrollBox10);
    obj.POPAmizade:setName("POPAmizade");
    obj.POPAmizade:setVisible(false);
    obj.POPAmizade:setLeft(1);
    obj.POPAmizade:setTop(40);
    obj.POPAmizade:setWidth(750);
    obj.POPAmizade:setHeight(350);

    obj.scrollBox12 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox12:setParent(obj.POPAmizade);
    obj.scrollBox12:setAlign("client");
    obj.scrollBox12:setName("scrollBox12");

    obj.image45 = GUI.fromHandle(_obj_newObject("image"));
    obj.image45:setParent(obj.scrollBox12);
    obj.image45:setLeft(-5);
    obj.image45:setTop(60);
    obj.image45:setWidth(410);
    obj.image45:setStyle("stretch");
    obj.image45:setHeight(250);
    obj.image45:setSRC("/imagens/imgAmizade.png");
    obj.image45:setName("image45");

    obj.button67 = GUI.fromHandle(_obj_newObject("button"));
    obj.button67:setParent(obj.scrollBox12);
    obj.button67:setText("Nova Amizade");
    obj.button67:setWidth(125);
    obj.button67:setHeight(40);
    obj.button67:setLeft(70);
    obj.button67:setTop(10);
    obj.button67:setName("button67");

    obj.rclNivelAmizade = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclNivelAmizade:setParent(obj.scrollBox12);
    obj.rclNivelAmizade:setName("rclNivelAmizade");
    obj.rclNivelAmizade:setField("Amizades");
    obj.rclNivelAmizade:setTemplateForm("frmNivelAmizade");
    obj.rclNivelAmizade:setWidth(392);
    obj.rclNivelAmizade:setHeight(220);
    obj.rclNivelAmizade:setLeft(10);
    obj.rclNivelAmizade:setTop(80);
    obj.rclNivelAmizade:setSelectable(true);

    obj.dsbNivelAmizade = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.dsbNivelAmizade:setParent(obj.scrollBox12);
    obj.dsbNivelAmizade:setName("dsbNivelAmizade");
    obj.dsbNivelAmizade:setVisible(false);
    obj.dsbNivelAmizade:setWidth(340);
    obj.dsbNivelAmizade:setHeight(220);
    obj.dsbNivelAmizade:setLeft(402);
    obj.dsbNivelAmizade:setTop(80);

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.dsbNivelAmizade);
    obj.rectangle12:setColor("White");
    obj.rectangle12:setXradius(10);
    obj.rectangle12:setYradius(10);
    obj.rectangle12:setWidth(340);
    obj.rectangle12:setHeight(220);
    obj.rectangle12:setLeft(1);
    obj.rectangle12:setTop(1);
    obj.rectangle12:setName("rectangle12");

    obj.image46 = GUI.fromHandle(_obj_newObject("image"));
    obj.image46:setParent(obj.rectangle12);
    obj.image46:setLeft(1);
    obj.image46:setTop(10);
    obj.image46:setWidth(330);
    obj.image46:setHeight(200);
    obj.image46:setSRC("/imagens/Amizade.png");
    obj.image46:setName("image46");

    obj.label145 = GUI.fromHandle(_obj_newObject("label"));
    obj.label145:setParent(obj.rectangle12);
    obj.label145:setLeft(144);
    obj.label145:setTop(69);
    obj.label145:setWidth(52);
    obj.label145:setHeight(20);
    obj.label145:setHorzTextAlign("center");
    obj.label145:setFontFamily("Nyala");
    obj.label145:setFontSize(14);
    obj.label145:setText("Nome");
    obj.label145:setName("label145");

    obj.edit403 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit403:setParent(obj.rectangle12);
    obj.edit403:setLeft(198);
    obj.edit403:setTop(69);
    obj.edit403:setWidth(100);
    obj.edit403:setHeight(20);
    obj.edit403:setHorzTextAlign("center");
    obj.edit403:setFontColor("black");
    obj.edit403:setTransparent(true);
    obj.edit403:setField("NivelAmizade");
    obj.edit403:setName("edit403");

    obj.button68 = GUI.fromHandle(_obj_newObject("button"));
    obj.button68:setParent(obj.rectangle12);
    obj.button68:setWidth(80);
    obj.button68:setHeight(25);
    obj.button68:setLeft(260);
    obj.button68:setTop(0);
    obj.button68:setFontColor("red");
    obj.button68:setText("DELETAR");
    obj.button68:setName("button68");

    obj.label146 = GUI.fromHandle(_obj_newObject("label"));
    obj.label146:setParent(obj.rectangle12);
    obj.label146:setLeft(144);
    obj.label146:setTop(89);
    obj.label146:setWidth(52);
    obj.label146:setHeight(20);
    obj.label146:setHorzTextAlign("center");
    obj.label146:setFontFamily("Nyala");
    obj.label146:setFontSize(12);
    obj.label146:setText("Parentesco");
    obj.label146:setName("label146");

    obj.edit404 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit404:setParent(obj.rectangle12);
    obj.edit404:setLeft(198);
    obj.edit404:setTop(89);
    obj.edit404:setWidth(100);
    obj.edit404:setHeight(20);
    obj.edit404:setHorzTextAlign("center");
    obj.edit404:setFontColor("black");
    obj.edit404:setTransparent(true);
    obj.edit404:setField("Parentesco");
    obj.edit404:setName("edit404");

    obj.label147 = GUI.fromHandle(_obj_newObject("label"));
    obj.label147:setParent(obj.rectangle12);
    obj.label147:setLeft(144);
    obj.label147:setTop(109);
    obj.label147:setWidth(52);
    obj.label147:setHeight(20);
    obj.label147:setHorzTextAlign("center");
    obj.label147:setFontFamily("Nyala");
    obj.label147:setFontSize(14);
    obj.label147:setText("Amizade");
    obj.label147:setName("label147");

    obj.edit405 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit405:setParent(obj.rectangle12);
    obj.edit405:setLeft(198);
    obj.edit405:setTop(109);
    obj.edit405:setWidth(100);
    obj.edit405:setHeight(20);
    obj.edit405:setHorzTextAlign("center");
    obj.edit405:setFontColor("black");
    obj.edit405:setType("number");
    obj.edit405:setMax(100);
    obj.edit405:setTransparent(true);
    obj.edit405:setField("NVAmizade");
    obj.edit405:setName("edit405");

    obj.label148 = GUI.fromHandle(_obj_newObject("label"));
    obj.label148:setParent(obj.rectangle12);
    obj.label148:setLeft(144);
    obj.label148:setTop(129);
    obj.label148:setWidth(52);
    obj.label148:setHeight(20);
    obj.label148:setHorzTextAlign("center");
    obj.label148:setFontFamily("Nyala");
    obj.label148:setFontSize(14);
    obj.label148:setText("Extra");
    obj.label148:setName("label148");

    obj.edit406 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit406:setParent(obj.rectangle12);
    obj.edit406:setLeft(198);
    obj.edit406:setTop(129);
    obj.edit406:setWidth(100);
    obj.edit406:setHeight(20);
    obj.edit406:setHorzTextAlign("center");
    obj.edit406:setFontColor("black");
    obj.edit406:setMax(100);
    obj.edit406:setTransparent(true);
    obj.edit406:setField("AmizadeExtra");
    obj.edit406:setName("edit406");

    obj.image47 = GUI.fromHandle(_obj_newObject("image"));
    obj.image47:setParent(obj.rectangle12);
    obj.image47:setLeft(40);
    obj.image47:setTop(57);
    obj.image47:setWidth(89);
    obj.image47:setHeight(114);
    obj.image47:setEditable(true);
    obj.image47:setStyle("autoFit");
    obj.image47:setField("imgAmizade");
    obj.image47:setName("image47");

    obj.tab5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl1);
    obj.tab5:setTitle("Historia");
    obj.tab5:setName("tab5");

    obj.scrollBox13 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox13:setParent(obj.tab5);
    obj.scrollBox13:setAlign("client");
    obj.scrollBox13:setName("scrollBox13");

    obj.image48 = GUI.fromHandle(_obj_newObject("image"));
    obj.image48:setParent(obj.scrollBox13);
    obj.image48:setLeft(1);
    obj.image48:setTop(1);
    obj.image48:setWidth(1000);
    obj.image48:setHeight(700);
    obj.image48:setSRC("/imagens/4.png");
    obj.image48:setName("image48");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.scrollBox13);
    obj.richEdit1:setLeft(85);
    obj.richEdit1:setTop(140);
    obj.richEdit1:setWidth(440);
    obj.richEdit1:setHeight(545);
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "#00000000");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");
    obj.richEdit1:setField("Kutchyose");
    obj.richEdit1:setName("richEdit1");

    obj.dataLink52 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink52:setParent(obj);
    obj.dataLink52:setField("GraduacaoTreino");
    obj.dataLink52:setName("dataLink52");

    obj.dataLink53 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink53:setParent(obj);
    obj.dataLink53:setField("Forca");
    obj.dataLink53:setName("dataLink53");

    obj._e_event0 = obj:addEventListener("onNodeReady",
        function (_)
            if sheet.Nome == nil then		
            			sheet.Cla = "Sem clã";
            			sheet.GraduacaoTreino = "Academico";
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
            			sheet.EnergiaAtual = (tonumber(sheet.EnergiaAtual) or 0);
            			sheet.EnergiaTotal = (tonumber(sheet.EnergiaTotal) or 0);
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
            			sheet.DReducao = (tonumber(sheet.DReducao) or 0);
            			sheet.DOutro = (tonumber(sheet.DOutro) or 0);
            			sheet.DAcertoTai = (tonumber(sheet.DAcertoTai) or 0);
            			sheet.DAcertoNin = (tonumber(sheet.DAcertoNin) or 0);
            			sheet.DAcertoGen = (tonumber(sheet.DAcertoGen) or 0);
            			sheet.DBloqueio = (tonumber(sheet.DBloqueio) or 0);
            			sheet.DEsquiva = (tonumber(sheet.DEsquiva) or 0);
            			sheet.DCriticalTai = (tonumber(sheet.DCriticalTai) or 0);
            			sheet.DCriticalNin = (tonumber(sheet.DCriticalNin) or 0);
            			sheet.DCriticalGen = (tonumber(sheet.DCriticalGen) or 0);
            			sheet.DTurnos = (tonumber(sheet.DTurnos) or 0);
            			sheet.ChakraBiju = (tonumber(sheet.ChakraBiju) or 0);
            			sheet.ChakraBranco = (tonumber(sheet.ChakraBranco) or 0);
            			sheet.ChakraPreto = (tonumber(sheet.ChakraPreto) or 0);
            			sheet.Hadou = (tonumber(sheet.Hadou) or 0);
            			sheet.HadouNegro = (tonumber(sheet.HadouNegro) or 0);
            			sheet.ChakraNatural = (tonumber(sheet.ChakraNatural) or 0);
            			sheet.ChakraNaturalBonus = (tonumber(sheet.ChakraNaturalBonus) or 0);
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
            			sheet.DRegeneradorEnergia = tonumber(sheet.DRegeneradorEnergia) or 10;
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
            			sheet.CReducao = (tonumber(sheet.CReducao) or 0);
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
            			sheet.AcessorioEnergia = (tonumber(sheet.AcessorioEnergia) or 0);
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
            			sheet.ReducaoTotal = (tonumber(sheet.ReducaoTotal) or 0);	
            			sheet.TReducao = (tonumber(sheet.TReducao) or 0);
            			sheet.ArmaReiatsu = (tonumber(sheet.ArmaReiatsu) or 0);			
            			sheet.GHP = 100;
            			sheet.Nome = "Escolha o Nome";
            			sheet.Sequenci1 = true;
            			self.btnAprender.visible = true;
            			sheet.TipoBag = sheet.TipoBag or "Tipo Bag";
            			sheet.CAtletismo = (tonumber(sheet.CAtletismo) or 0); 
            			sheet.CPercepcao = (tonumber(sheet.CPercepcao) or 0); 
            			sheet.CFurtividade = (tonumber(sheet.CFurtividade) or 0); 
            			sheet.CRaciocineo = (tonumber(sheet.CRaciocineo) or 0); 
            			sheet.CVigor = (tonumber(sheet.CVigor) or 0); 
            			sheet.KunaiQT = (tonumber(sheet.KunaiQT) or 0);
            			sheet.ShurikenQT = (tonumber(sheet.ShurikenQT) or 0);
            			sheet.SFuumaQT = (tonumber(sheet.SFuumaQT) or 0);
            			sheet.KGiganteQT = (tonumber(sheet.KGiganteQT) or 0);
            			sheet.SenbonQT = (tonumber(sheet.SenbonQT) or 0);			
            			sheet.PBombaQT = (tonumber(sheet.PBombaQT) or 0);
            			sheet.GExplosivoQT = (tonumber(sheet.GExplosivoQT) or 0);
            			sheet.VenenoQT = (tonumber(sheet.VenenoQT) or 0);
            			sheet.BandagemQT = (tonumber(sheet.BandagemQT) or 0);
            			sheet.BombaFumacaQT = (tonumber(sheet.BombaFumacaQT) or 0);	
            			sheet.KunaiLimite = (tonumber(sheet.KunaiLimite) or 0);	
            			sheet.ShurikenLimite = (tonumber(sheet.ShurikenLimite) or 0);	
            			sheet.SFuumaLimite = (tonumber(sheet.SFuumaLimite) or 0);	
            			sheet.KGiganteLimite = (tonumber(sheet.KGiganteLimite) or 0);	
            			sheet.SemboLimite = (tonumber(sheet.SemboLimite) or 0);	
            			sheet.PBombaLimite = (tonumber(sheet.PBombaLimite) or 0);	
            			sheet.GExplosivoLimite = (tonumber(sheet.GExplosivoLimite) or 0);	
            			sheet.VenenoLimite = (tonumber(sheet.VenenoLimite) or 0);	
            			sheet.BandagemLimite = (tonumber(sheet.BandagemLimite) or 0);	
            			sheet.BombaFumacaLimite = (tonumber(sheet.BombaFumacaLimite) or 0);				
            			sheet.Energia = 0;
            			sheet.EnergiaTotal = 100;
            			self.cmbTipoOutro.value = 1; 
            			self.cmbTipoBag.value = 1; 			
            			sheet.KutchyoseNome = (tonumber(sheet.KutchyoseNome) or 0);	
            			sheet.KutchyoseNumero = (tonumber(sheet.KutchyoseNumero) or 0);	
            			sheet.KutchyoseDano = (tonumber(sheet.KutchyoseDano) or 0);	
            			sheet.KutchyosePorcentDano = (tonumber(sheet.KutchyosePorcentDano) or 0);	
            			sheet.KutchyoseDanoTotal = (tonumber(sheet.KutchyoseDanoTotal) or 0);				
            			sheet.KutchyoseHP = (tonumber(sheet.KutchyoseHP) or 0);	
            			sheet.KutchyosePorcentHP = (tonumber(sheet.KutchyosePorcentHP) or 0);
            			sheet.KutchyoseHPTotal = (tonumber(sheet.KutchyoseHPTotal) or 0);			
            			sheet.KutchyoseAtualEnergia = (tonumber(sheet.KutchyoseAtualEnergia) or 0);
            			sheet.KutchyoseMaxEnergia = (tonumber(sheet.KutchyoseMaxEnergia) or 0);	
            			sheet.TTaijutsu = tonumber(sheet.TTaijutsu) or 0;
            			sheet.TNinjutsu = tonumber(sheet.TNinjutsu) or 0;
            			sheet.TGenjutsu = tonumber(sheet.TGenjutsu) or 0;
            			sheet.TDA = tonumber(sheet.TDA) or 0;
            			sheet.TElemental = tonumber(sheet.TElemental) or 0;			
            			sheet.THP = tonumber(sheet.THP) or 0;
            			sheet.TChakra = tonumber(sheet.TChakra) or 0;
            			sheet.TReiatsu = tonumber(sheet.TReiatsu) or 0;
            			sheet.TOutros = tonumber(sheet.TOutros) or 0;	
            			sheet.TEnergia = tonumber(sheet.TEnergia) or 0;	
            			sheet.TReducao = tonumber(sheet.TReducao) or 0;			
            			sheet.TATai = tonumber(sheet.TATai) or 0;
            			sheet.TANin = tonumber(sheet.TANin) or 0;
            			sheet.TAGen = tonumber(sheet.TAGen) or 0;
            			sheet.TEsquiva = tonumber(sheet.TEsquiva) or 0;
            			sheet.TBloqueio = tonumber(sheet.TBloqueio) or 0;
            			sheet.TCTai = tonumber(sheet.TCTai) or 0;
            			sheet.TCNin = tonumber(sheet.TCNin) or 0;
            			sheet.TCGen = tonumber(sheet.TCGen) or 0;
            			sheet.TTurnos = tonumber(sheet.TTurnos) or 0;
            			sheet.TITaijutsu = tonumber(sheet.TITaijutsu) or 0;			
            			sheet.TINinjutsu = tonumber(sheet.TINinjutsu) or 0;
            			sheet.TIGenjutsu = tonumber(sheet.TIGenjutsu) or 0;
            			sheet.TIDA = tonumber(sheet.TIDA) or 0;
            			sheet.TIElemental = tonumber(sheet.TIElemental) or 0;
            			sheet.TIHP = tonumber(sheet.TIHP) or 0;
            			sheet.TIChakra = tonumber(sheet.TIChakra) or 0;
            			sheet.TIOutros = tonumber(sheet.TIOutros) or 0;
            			sheet.TIReducao = tonumber(sheet.TIReducao) or 0;
            			sheet.TIATai = tonumber(sheet.TIATai) or 0;
            			sheet.TIANin = tonumber(sheet.TIANin) or 0;
            			sheet.TIAGen = tonumber(sheet.TIAGen) or 0;
            			sheet.TIEsquiva = tonumber(sheet.TIEsquiva) or 0;
            			sheet.TIBloqueio = tonumber(sheet.TIBloqueio) or 0;
            			sheet.TICTai = tonumber(sheet.TICTai) or 0;
            			sheet.TICNin = tonumber(sheet.TICNin) or 0;
            			sheet.TICGen = tonumber(sheet.TICGen) or 0;
            			sheet.TITurnos = tonumber(sheet.TITurnos) or 0;
            			sheet.TISTaijutsu = tonumber(sheet.TISTaijutsu) or 0;
            			sheet.TISNinjutsu = tonumber(sheet.TISNinjutsu) or 0;
            			sheet.TISGenjutsu = tonumber(sheet.TISGenjutsu) or 0;
            			sheet.TISDA = tonumber(sheet.TISDA) or 0;
            			sheet.TISElemental = tonumber(sheet.TISElemental) or 0;
            			sheet.TISHP = tonumber(sheet.TISHP) or 0;
            			sheet.TISChakra = tonumber(sheet.TISChakra) or 0;
            			sheet.TISReiatsu = tonumber(sheet.TISReiatsu) or 0;
            			sheet.TISOutros = tonumber(sheet.TISOutros) or 0;
            			sheet.TISReducao = tonumber(sheet.TISReducao) or 0;
            			sheet.TISATai = tonumber(sheet.TISATai) or 0;
            			sheet.TISANin = tonumber(sheet.TISANin) or 0;
            			sheet.TISAGen = tonumber(sheet.TISAGen) or 0;
            			sheet.TISEsquiva = tonumber(sheet.TISEsquiva) or 0;
            			sheet.TISBloqueio = tonumber(sheet.TISBloqueio) or 0;
            			sheet.TISCTai = tonumber(sheet.TISCTai) or 0;
            			sheet.TISCNin = tonumber(sheet.TISCNin) or 0;
            			sheet.TISCGen = tonumber(sheet.TISCGen) or 0;
            			sheet.TISTurnos = tonumber(sheet.TISTurnos) or 0;			
            			sheet.TIHTaijutsu = tonumber(sheet.TIHTaijutsu) or 0;
            			sheet.TIHNinjutsu = tonumber(sheet.TIHNinjutsu) or 0;
            			sheet.TIHGenjutsu = tonumber(sheet.TIHGenjutsu) or 0;
            			sheet.TIHDA = tonumber(sheet.TIHDA) or 0;
            			sheet.TIHElemental = tonumber(sheet.TIHElemental) or 0;
            			sheet.TIHHP = tonumber(sheet.TIHHP) or 0;
            			sheet.TIHChakra = tonumber(sheet.TIHChakra) or 0;
            			sheet.TIHReiatsu = tonumber(sheet.TIHReiatsu) or 0;
            			sheet.TIHOutros = tonumber(sheet.TIHOutros) or 0;
            			sheet.TIHReducao = tonumber(sheet.TIHReducao) or 0;
            			sheet.TIHATai = tonumber(sheet.TIHATai) or 0;
            			sheet.TIHANin = tonumber(sheet.TIHANin) or 0;
            			sheet.TIHAGen = tonumber(sheet.TIHAGen) or 0;
            			sheet.TIHEsquiva = tonumber(sheet.TIHEsquiva) or 0;
            			sheet.TIHBloqueio = tonumber(sheet.TIHBloqueio) or 0;
            			sheet.TIHCTai = tonumber(sheet.TIHCTai) or 0;
            			sheet.TIHCNin = tonumber(sheet.TIHCNin) or 0;
            			sheet.TIHCGen = tonumber(sheet.TIHCGen) or 0;
            			sheet.TIHTurnos = tonumber(sheet.TIHTurnos) or 0;			
            			sheet.TransHollowTaijutsu = tonumber(sheet.TransHollowTaijutsu) or 0;
            			sheet.TransHollowNinjutsu = tonumber(sheet.TransHollowNinjutsu) or 0;
            			sheet.TransHollowGenjutsu = tonumber(sheet.TransHollowGenjutsu) or 0;
            			sheet.TransHollowDA = tonumber(sheet.TransHollowDA) or 0;
            			sheet.TransHollowElemental = tonumber(sheet.TransHollowElemental) or 0;				
            			sheet.TransHollowHP = tonumber(sheet.TransHollowHP) or 0;
            			sheet.TransHollowChakra = tonumber(sheet.TransHollowChakra) or 0;
            			sheet.TransHollowReiatsu = tonumber(sheet.TransHollowReiatsu) or 0;
            			sheet.TransHollowOutros = tonumber(sheet.TransHollowOutros) or 0;
            			sheet.TransHollowEnergia = tonumber(sheet.TransHollowEnergia) or 0;
            			sheet.TransHollowReducao = tonumber(sheet.TransHollowReducao) or 0;				
            			sheet.TransHollowATai = tonumber(sheet.TransHollowATai) or 0;
            			sheet.TransHollowANin = tonumber(sheet.TransHollowANin) or 0;
            			sheet.TransHollowAGen = tonumber(sheet.TransHollowAGen) or 0;
            			sheet.TransHollowEsquiva = tonumber(sheet.TransHollowEsquiva) or 0;
            			sheet.TransHollowBloqueio = tonumber(sheet.TransHollowBloqueio) or 0;
            			sheet.TransHollowCTai = tonumber(sheet.TransHollowCTai) or 0;
            			sheet.TransHollowCNin = tonumber(sheet.TransHollowCNin) or 0;
            			sheet.TransHollowCGen = tonumber(sheet.TransHollowCGen) or 0;
            			sheet.TransHollowTurnos = tonumber(sheet.TransHollowTurnos) or 0;			
            			sheet.TransSenninTaijutsu = tonumber(sheet.TransSenninTaijutsu) or 0;
            			sheet.TransSenninNinjutsu = tonumber(sheet.TransSenninNinjutsu) or 0;
            			sheet.TransSenninGenjutsu = tonumber(sheet.TransSenninGenjutsu) or 0;
            			sheet.TransSenninDA = tonumber(sheet.TransSenninDA) or 0;
            			sheet.TransSenninElemental = tonumber(sheet.TransSenninElemental) or 0;				
            			sheet.TransSenninHP = tonumber(sheet.TransSenninHP) or 0;
            			sheet.TransSenninChakra = tonumber(sheet.TransSenninChakra) or 0;
            			sheet.TransSenninReiatsu = tonumber(sheet.TransSenninReiatsu) or 0;
            			sheet.TransSenninOutros = tonumber(sheet.TransSenninOutros) or 0;				
            			sheet.TransSenninReducao = tonumber(sheet.TransSenninReducao) or 0;				
            			sheet.TransSenninATai = tonumber(sheet.TransSenninATai) or 0;
            			sheet.TransSenninANin = tonumber(sheet.TransSenninANin) or 0;
            			sheet.TransSenninAGen = tonumber(sheet.TransSenninAGen) or 0;
            			sheet.TransSenninEsquiva = tonumber(sheet.TransSenninEsquiva) or 0;
            			sheet.TransSenninBloqueio = tonumber(sheet.TransSenninBloqueio) or 0;
            			sheet.TransSenninCTai = tonumber(sheet.TransSenninCTai) or 0;
            			sheet.TransSenninCNin = tonumber(sheet.TransSenninCNin) or 0;
            			sheet.TransSenninCGen = tonumber(sheet.TransSenninCGen) or 0;
            			sheet.TransSenninTurnos = tonumber(sheet.TransSenninTurnos) or 0;			
            			sheet.TransBijuModeTaijutsu = tonumber(sheet.TransBijuModeTaijutsu) or 0;
            			sheet.TransBijuModeNinjutsu = tonumber(sheet.TransBijuModeNinjutsu) or 0;
            			sheet.TransBijuModeGenjutsu = tonumber(sheet.TransBijuModeGenjutsu) or 0;
            			sheet.TransBijuModeDA = tonumber(sheet.TransBijuModeDA) or 0;
            			sheet.TransBijuModeElemental = tonumber(sheet.TransBijuModeElemental) or 0;				
            			sheet.TransBijuModeHP = tonumber(sheet.TransBijuModeHP) or 0;
            			sheet.TransBijuModeChakra = tonumber(sheet.TransBijuModeChakra) or 0;
            			sheet.TransBijuModeReiatsu = tonumber(sheet.TransBijuModeReiatsu) or 0;
            			sheet.TransBijuModeOutros = tonumber(sheet.TransBijuModeOutros) or 0;				
            			sheet.TransBijuModeReducao = tonumber(sheet.TransBijuModeReducao) or 0;				
            			sheet.TransBijuModeATai = tonumber(sheet.TransBijuModeATai) or 0;
            			sheet.TransBijuModeANin = tonumber(sheet.TransBijuModeANin) or 0;
            			sheet.TransBijuModeAGen = tonumber(sheet.TransBijuModeAGen) or 0;
            			sheet.TransBijuModeEsquiva = tonumber(sheet.TransBijuModeEsquiva) or 0;
            			sheet.TransBijuModeBloqueio = tonumber(sheet.TransBijuModeBloqueio) or 0;
            			sheet.TransBijuModeCTai = tonumber(sheet.TransBijuModeCTai) or 0;
            			sheet.TransBijuModeCNin = tonumber(sheet.TransBijuModeCNin) or 0;
            			sheet.TransBijuModeCGen = tonumber(sheet.TransBijuModeCGen) or 0;
            			sheet.TransBijuModeTurnos = tonumber(sheet.TransBijuModeTurnos) or 0;			
            			sheet.TransTaijutsu = tonumber(sheet.TransTaijutsu) or 0;
            			sheet.TransNinjutsu = tonumber(sheet.TransNinjutsu) or 0;
            			sheet.TransGenjutsu = tonumber(sheet.TransGenjutsu) or 0;
            			sheet.TransDA = tonumber(sheet.TransDA) or 0;
            			sheet.TransElemental = tonumber(sheet.TransElemental) or 0;				
            			sheet.TransHP = tonumber(sheet.TransHP) or 0;
            			sheet.TransChakra = tonumber(sheet.TransChakra) or 0;
            			sheet.TransReiatsu = tonumber(sheet.TransReiatsu) or 0;
            			sheet.TransOutros = tonumber(sheet.TransOutros) or 0;	
            			sheet.TransEnergia = tonumber(sheet.TransEnergia) or 0;	
            			sheet.TransReducao = tonumber(sheet.TransReducao) or 0;				
            			sheet.TransATai = tonumber(sheet.TransATai) or 0;
            			sheet.TransANin = tonumber(sheet.TransANin) or 0;
            			sheet.TransAGen = tonumber(sheet.TransAGen) or 0;
            			sheet.TransEsquiva = tonumber(sheet.TransEsquiva) or 0;
            			sheet.TransBloqueio = tonumber(sheet.TransBloqueio) or 0;
            			sheet.TransCTai = tonumber(sheet.TransCTai) or 0;
            			sheet.TransCNin = tonumber(sheet.TransCNin) or 0;
            			sheet.TransCGen = tonumber(sheet.TransCGen) or 0;
            			sheet.TransTurnos = tonumber(sheet.TransTurnos) or 0;		
            			sheet.DEnergia = tonumber(sheet.ArmaNomeDEnergia) or 0;				
            			sheet.AcessorioNome = sheet.AcessorioNome or "Acessorio Nome";
            			sheet.ColeteNome = sheet.ColeteNome or "Colete Nome";
            			sheet.BandanaNome = sheet.BandanaNome or "Bandana Nome";
            			sheet.ArmaNome = sheet.ArmaNome or "Arma Nome";
            			sheet.AcessorioAcertoTai = tonumber(sheet.AcessorioAcertoTai) or 0;
            			sheet.AcessorioAcertoNin = tonumber(sheet.AcessorioAcertoNin) or 0;
            			sheet.AcessorioAcertoGen = tonumber(sheet.AcessorioAcertoGen) or 0;
            			sheet.BandanaEsquiva = tonumber(sheet.BandanaEsquiva) or 0;
            			sheet.BandanaBloqueio = tonumber(sheet.BandanaBloqueio) or 0;
            			sheet.BDReiatsu = tonumber(sheet.BDReiatsu) or 0;
            			sheet.BDChakraBiju = tonumber(sheet.BDChakraBiju) or 0;
            			sheet.BDChakraBranco = tonumber(sheet.BDChakraBranco) or 0;
            			sheet.BDChakraPreto = tonumber(sheet.BDChakraPreto) or 0;
            			sheet.BDHadou = tonumber(sheet.BDHadou) or 0;
            			sheet.BDHadouNegro = tonumber(sheet.BDHadouNegro) or 0;
            			sheet.BDChakraNatural = tonumber(sheet.BDChakraNatural) or 0;
            			sheet.BDChakraRoxo = tonumber(sheet.BDChakraRoxo) or 0;
            			sheet.BDOutro = tonumber(sheet.BDOutro) or 0;			
            			sheet.edtNPCHP = tonumber(sheet.edtNPCHP) or 0;
            			sheet.edtNPCChacra = tonumber(sheet.edtNPCChacra) or 0;
            			sheet.edtNPCOutros = tonumber(sheet.edtNPCOutros) or 0;
            			sheet.edtNPCEnergia = tonumber(sheet.edtNPCEnergia) or 0;		
            			showMessage("Escolha seu nome, clã e idade");				
            		end; 
            		
            		sheet.Transformado = 0; 
            		sheet.GMDesativa = true;	
            
            		if sheet.GMDesativa == false then
            			self.edtGM19.visible = false;
            			self.edtGM20.visible = false;
            			self.edtGM21.visible = false;
            			self.edtGM27.visible = false;
            			self.edtGM28.visible = false;
            			self.edtGM29.visible = false;
            			self.edtGM30.visible = false;
            			self.edtGM31.visible = false;			
            			self.edtGM32.visible = false;
            			self.edtGM33.visible = false;
            			self.edtGM34.visible = false;
            			self.edtGM35.visible = false;
            			self.edtGM36.visible = false;
            			self.edtGM37.visible = false;
            			self.edtGM38.visible = false;			
            			self.edtGM39.visible = false;
            			self.edtGM41.visible = false;
            			self.edtGM42.visible = false;
            			self.edtGM43.visible = false;
            			self.edtGM45.visible = false;			
            			self.edtGM46.visible = false;
            			self.edtGM47.visible = false;
            			self.edtGM48.visible = false;
            			self.edtGM49.visible = false;
            		end;
            		
            		if sheet.GMDesativa == true then
            			self.edtGM19.visible = true;
            			self.edtGM20.visible = true;
            			self.edtGM21.visible = true;
            			self.edtGM27.visible = true;
            			self.edtGM28.visible = true;
            			self.edtGM29.visible = true;
            			self.edtGM30.visible = true;
            			self.edtGM31.visible = true;			
            			self.edtGM32.visible = true;
            			self.edtGM33.visible = true;
            			self.edtGM34.visible = true;
            			self.edtGM35.visible = true;
            			self.edtGM36.visible = true;
            			self.edtGM37.visible = true;
            			self.edtGM38.visible = true;			
            			self.edtGM39.visible = true;
            			self.edtGM41.visible = true;
            			self.edtGM42.visible = true;
            			self.edtGM43.visible = true;
            			self.edtGM45.visible = true;			
            			self.edtGM46.visible = true;
            			self.edtGM47.visible = true;
            			self.edtGM48.visible = true;
            			self.edtGM49.visible = true;
            		end;
        end, obj);

    obj._e_event1 = obj.button1:addEventListener("onClick",
        function (_)
            local mesaDoPersonagem = rrpg.getMesaDe(sheet);        
            						sheet.AcertoTaiTotal = tonumber(sheet.AcertoTaiTotal or 0);  
            						
            						if sheet.BatendoCom == nil then
            							showMessage("Escolha uma Base para o Ataque Basico");
            						else
            							mesaDoPersonagem.chat:rolarDados("1d100 ","[§K3]Tentativa de ataque fisico",
            								function (rolado)
            									if sheet.AcertoTaiTotal >= rolado.resultado then
            										if sheet.BatendoCom == 'Taijutsu' then
            											if sheet.CRTaiTotal >= rolado.resultado then
            												mesaDoPersonagem.chat:enviarMensagem("[§K4]CRITOU O ALVO COM TAIJUTSU CAUSANDO [§K4]" .. (sheet.TaiTotal * 2));
            											else
            												mesaDoPersonagem.chat:enviarMensagem("[§K3]Acertou o alvo com Taijutsu Causando [§K4]" .. sheet.TaiTotal);
            											end;
            										end;
            										
            										if sheet.BatendoCom == 'Armado' then
            											if sheet.CRTaiTotal >= rolado.resultado then
            												mesaDoPersonagem.chat:enviarMensagem("[§K4]CRITOU O ALVO COM A ARMA CAUSANDO [§K4]" .. (sheet.DATotal * 2));
            											else
            												mesaDoPersonagem.chat:enviarMensagem("[§K3]Acertou o alvo com sua Arma Causando [§K4]" .. sheet.DATotal);
            											end;
            										end;																					
            									else
            										mesaDoPersonagem.chat:enviarMensagem("[§K4]O Oponente esquivou de seu ataque");
            									end;
            								if self.edtGM21.checked then
            									sheet.EnergiaAtual = tonumber(sheet.EnergiaAtual + tonumber(sheet.DRegeneradorEnergia));
            									
            									if sheet.EnergiaAtual > sheet.EnergiaTotal then
            										sheet.EnergiaAtual = sheet.EnergiaTotal;
            									end;
            								else
            									local mesa = Firecast.getMesaDe(sheet); 
            									sheet.EnergiaAtual = mesa.meuJogador:getBarValue(4);
            									sheet.EnergiaAtual = tonumber(sheet.EnergiaAtual + tonumber(sheet.DRegeneradorEnergia));
            									
            									if sheet.EnergiaAtual > sheet.EnergiaTotal then
            										sheet.EnergiaAtual = sheet.EnergiaTotal;
            									end;
            									
            									mesa.meuJogador:requestSetBarValue(4, sheet.EnergiaAtual, nil);	
            								end;
            							end); 
            						end;
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
            							if self.edtGM21.checked then
            								sheet.EnergiaAtual = tonumber(sheet.EnergiaAtual + tonumber(sheet.DRegeneradorEnergia));
            								
            								if sheet.EnergiaAtual > sheet.EnergiaTotal then
            									sheet.EnergiaAtual = sheet.EnergiaTotal;
            								end;
            							else
            								local mesa = Firecast.getMesaDe(sheet); 
            								sheet.EnergiaAtual = mesa.meuJogador:getBarValue(4);
            								sheet.EnergiaAtual = tonumber(sheet.EnergiaAtual + tonumber(sheet.DRegeneradorEnergia));
            								
            								if sheet.EnergiaAtual > sheet.EnergiaTotal then
            									sheet.EnergiaAtual = sheet.EnergiaTotal;
            								end;
            								
            								mesa.meuJogador:requestSetBarValue(4, sheet.EnergiaAtual, nil);	
            							end;									
            						end);
        end, obj);

    obj._e_event3 = obj.button3:addEventListener("onClick",
        function (_)
            self.POPJutsu:show();
        end, obj);

    obj._e_event4 = obj.button4:addEventListener("onClick",
        function (_)
            self.rclListadeJutsus1:append();
        end, obj);

    obj._e_event5 = obj.rclListadeJutsus1:addEventListener("onSelect",
        function (_)
            node = self.rclListadeJutsus1.selectedNode;							
            								
            								self.ListaJutsus.node = node;                       
            								self.ListaJutsus.visible = (node ~= nil);
            								
            								if self.ListaJutsus.visible == true then
            									self.ListaJutsus.node.LevelJutsu1 = self.ListaJutsus.node.LevelJutsu1 or 1;
            									self.ListaJutsus.node.DanoJutsu = self.ListaJutsus.node.DanoJutsu or 0;
            									self.ListaJutsus.node.TipoLista1Jutsu1 = self.ListaJutsus.node.TipoLista1Jutsu1 or 'Nulo';
            									self.ListaJutsus.node.TipoLista1Jutsu2 = self.ListaJutsus.node.TipoLista1Jutsu2 or 'Nulo';
            									self.ListaJutsus.node.TipoLista1Jutsu3 = self.ListaJutsus.node.TipoLista1Jutsu3 or 'Nulo';
            									self.ListaJutsus.node.CustoJutsu = self.ListaJutsus.node.CustoJutsu or 0;
            									self.ListaJutsus.node.TipoCustoJutsu1 = self.ListaJutsus.node.TipoCustoJutsu1 or "Chacra";
            									self.ListaJutsus.node.DescriJutsu = self.ListaJutsus.node.DescriJutsu or 'COLOQUE UMA DESCRICAO E OS STATUS ESPECIFICOS DA HABILIDADE';
            									FazCalculoTipoLista1Intensidade1();
            									FazCalculoTipoLista1Intensidade2();
            									FazCalculoTipoLista1Intensidade3();
            									FazCalculodoCustoReal1();
            									FazCalculodoCustoEnergia1();
            									FazCalculoTipoListaIntensidadeTotal1();
            								end;
        end, obj);

    obj._e_event6 = obj.button5:addEventListener("onClick",
        function (_)
            NDB.deleteNode(self.ListaJutsus.node);
        end, obj);

    obj._e_event7 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if	self.ListaJutsus.visible == true then
            											node = self.rclListadeJutsus1.selectedNode;                     
            
            											if (node.DanoJutsu ~= nil) and (node.DanoJutsu > -1) then
            												node.DNVerdadeiro = tonumber(node.DanoJutsu)* 2^tonumber(node.LevelJutsu1 - 1); 
            											else
            												node.LevelJutsu1 = 1;
            											end;
            										end;
        end, obj);

    obj._e_event8 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            FazCalculoTipoLista1Intensidade1();
            										FazCalculoTipoLista1Intensidade2();
            										FazCalculoTipoLista1Intensidade3();
            										FazCalculoTipoListaIntensidadeTotal1();
            										FazCalculodoCustoReal1();
            										FazCalculodoCustoEnergia1();
            										FazCalculoTipoListaIntensidadeTotal1();
        end, obj);

    obj._e_event9 = obj.button6:addEventListener("onClick",
        function (_)
            node = self.rclListadeJutsus1.selectedNode;								
            										local mesaDoPersonagem = rrpg.getMesaDe(sheet);									
            										sheet.AcertoNinTotal = tonumber(sheet.AcertoNinTotal) or 0;	
            										
            										mesaDoPersonagem.chat:rolarDados("1d100", "[§K3]Tentativa de executar Jutsu",
            										function (rolado)											
            											if sheet.AcertoNinTotal >= rolado.resultado then
            												mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. node.DescriJutsu);
            												
            												if node.TipoLista1Jutsu1 == 'Tai'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Nin'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Gen'then
            													if sheet.CRGenTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Elemental'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'DanoArmado'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'M/Tai'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'M/Nin'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'M/Gen'then
            													if sheet.CRGenTotal >= rolado.resultado then
            															mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'M/Elemental'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'M/DA'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Nulo' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Kunai' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Shuriken' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Shuriken Fuuma' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Kunai Gigante' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Senbon' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Papel Bomba' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Ginso Explosivo' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Veneno' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Bandagem' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            
            												if 	self.edtGM21.checked then
            													if node.TipoCustoJutsu1 == 'Chacra' then
            														sheet.OutrosAtual = (tonumber(sheet.ChakraAtual) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakra = sheet.OutrosAtual;
            														sheet.ChakraAtual = sheet.OutrosAtual;
            													end;
            												
            													if node.TipoCustoJutsu1 == 'Outros' then
            														sheet.OutrosAtual = (tonumber(sheet.BDOutro) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDOutro = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu1 == 'Reiatsu' then
            														sheet.OutrosAtual = (tonumber(sheet.BDReiatsu) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDReiatsu = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu1 == 'Chacra Biju' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraBiju) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakraBiju = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu1 == 'Chacra Branco' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraBranco) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakraBranco = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu1 == 'Chacra Preto' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraPreto) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakraPreto = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu1 == 'Hadou' then
            														sheet.OutrosAtual = (tonumber(sheet.BDHadou) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDHadou = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu1 == 'Hadou Negro' then
            														sheet.OutrosAtual = (tonumber(sheet.BDHadouNegro) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDHadouNegro = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu1 == 'Chacra Natural' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraNatural) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakraNatural = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu1 == 'Chacra Roxo' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraRoxo) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakraRoxo = (tonumber(sheet.OutrosAtual) or 0);
            													end;													
            												else
            													if self.edtGM21.checked then
            														if node.TipoCustoJutsu1 == 'Chacra' then
            															sheet.ChakraAtual = node.ChakraPlayer;
            														else
            															sheet.OutrosAtual = node.OutroPlayer;
            														end;
            													else
            														if node.TipoCustoJutsu1 == 'Chacra' then
            															local mesa = Firecast.getMesaDe(sheet);
            															local ChakraPlayer = mesa.meuJogador:getBarValue(2);
            															node.ChakraPlayer = mesa.meuJogador:getBarValue(2);
            															node.ChakraPlayer = (tonumber(node.ChakraPlayer) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            															sheet.ChakraAtual = node.ChakraPlayer;
            															mesa.meuJogador:requestSetBarValue(2, node.ChakraPlayer);
            														else
            															local mesa = Firecast.getMesaDe(sheet);
            															local OutroPlayer = mesa.meuJogador:getBarValue(3);
            															node.OutroPlayer = mesa.meuJogador:getBarValue(3);
            															node.OutroPlayer = (tonumber(node.OutroPlayer) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            															sheet.OutrosAtual = node.OutroPlayer;
            															mesa.meuJogador:requestSetBarValue(3, node.OutroPlayer);
            														end;
            													end;
            												end;									
            											
            
            												if node.CustoEnergia > 0 then
            														if self.edtGM21.checked == true then
            															local mesa = Firecast.getMesaDe(sheet);
            															sheet.EnergiaAtual = (tonumber(sheet.EnergiaAtual) or 0) - (tonumber(node.CustoEnergia) or 0);
            														else			
            															local mesa = Firecast.getMesaDe(sheet);
            															local EnergiaPlayer = mesa.meuJogador:getBarValue(4);
            															node.EnergiaPlayer = mesa.meuJogador:getBarValue(4);
            															node.EnergiaPlayer = (tonumber(node.EnergiaPlayer) or 0) - (tonumber(node.CustoEnergia) or 0);
            															sheet.EnergiaAtual = node.EnergiaPlayer;
            															mesa.meuJogador:requestSetBarValue(4, node.EnergiaPlayer);
            														end;
            													end;
            											else
            												mesaDoPersonagem.chat:enviarMensagem("[§K4,0]TURURU, O Naruto pode ser duro as vezes [§I https://i0.wp.com/www.fatosdesconhecidos.com.br/wp-content/uploads/2018/11/Naruto_after_Jiraiyas_death.png?resize=600,450]");
            											end;
            										end);
        end, obj);

    obj._e_event10 = obj.button7:addEventListener("onClick",
        function (_)
            showMessage('O Bonus de Dificuldade do Treino da aba (Personagem) só é aplicado enquanto a rolagem do teste esta ativa, voce poderá acompanhar qual o total da chance durente a tentativa de treinar a habilidade')
        end, obj);

    obj._e_event11 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            PreparaDifuculdadeTreinoRankE();
            										PreparaDifuculdadeTreinoRankD();
            										PreparaDifuculdadeTreinoRankC();
            										PreparaDifuculdadeTreinoRankB();
            										PreparaDifuculdadeTreinoRankA();
            										PreparaDifuculdadeTreinoRankS();
            										PreparaDifuculdadeTreinoRankSS();
            										PreparaDifuculdadeTreinoRankX();
            										PreparaDifuculdadeTreinoRankXPLUS();										
            										MonstraProPlayerADificuldadeTreino();
        end, obj);

    obj._e_event12 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            node = self.rclListadeJutsus1.selectedNode;	
            										
            										sheet.TipoOutro = node.TipoCustoJutsu1 or "Chacra";
        end, obj);

    obj._e_event13 = obj.btnUparJutsu1:addEventListener("onClick",
        function (_)
            TreinarLevelJutsu()
        end, obj);

    obj._e_event14 = obj.button8:addEventListener("onClick",
        function (_)
            self.POPFavorito:show();
        end, obj);

    obj._e_event15 = obj.button9:addEventListener("onClick",
        function (_)
            self.rclListadeJutsus2:append();
        end, obj);

    obj._e_event16 = obj.rclListadeJutsus2:addEventListener("onSelect",
        function (_)
            node = self.rclListadeJutsus2.selectedNode; 
            								self.ListaJutsus2.node = node;                       
            								self.ListaJutsus2.visible = (node ~= nil);
            								
            								if self.ListaJutsus2.node == nil then 
            									self.ListaJutsus2.node = node;  
            								end;
            								
            								if	self.ListaJutsus2.visible == true then
            									self.ListaJutsus2.node.LevelJutsu1 = self.ListaJutsus2.node.LevelJutsu1 or 1;
            									self.ListaJutsus2.node.DanoJutsu = self.ListaJutsus2.node.DanoJutsu or 0;
            									self.ListaJutsus2.node.TipoLista1Jutsu1 = self.ListaJutsus2.node.TipoLista1Jutsu1 or 'Nulo';
            									self.ListaJutsus2.node.TipoLista1Jutsu2 = self.ListaJutsus2.node.TipoLista1Jutsu2 or 'Nulo';
            									self.ListaJutsus2.node.TipoLista1Jutsu3 = self.ListaJutsus2.node.TipoLista1Jutsu3 or 'Nulo';
            									self.ListaJutsus2.node.CustoJutsu = self.ListaJutsus2.node.CustoJutsu or 0;
            									self.ListaJutsus2.node.TipoCustoJutsu2 = self.ListaJutsus2.node.TipoCustoJutsu2 or "Chacra";
            									self.ListaJutsus2.node.DescriJutsu = self.ListaJutsus2.node.DescriJutsu or 'COLOQUE UMA DESCRICAO E OS STATUS ESPECIFICOS DA HABILIDADE';
            									FazCalculoTipoLista2Intensidade1();
            									FazCalculoTipoLista2Intensidade2();
            									FazCalculoTipoLista2Intensidade3();
            									FazCalculodoCustoReal3();
            									FazCalculodoCustoEnergia3();
            									FazCalculoTipoListaIntensidadeTotal3();
            								end;
        end, obj);

    obj._e_event17 = obj.button10:addEventListener("onClick",
        function (_)
            NDB.deleteNode(self.ListaJutsus2.node);
        end, obj);

    obj._e_event18 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if	self.ListaJutsus2.visible == true then
            											node = self.ListaJutsus2.node;	                     
            
            											if (node.DanoJutsu ~= nil) and (node.DanoJutsu > -1) then
            												node.DNVerdadeiro = tonumber(node.DanoJutsu)* 2^tonumber(node.LevelJutsu1 - 1); 
            											else
            												node.LevelJutsu1 = 1;
            											end;
            										end;
        end, obj);

    obj._e_event19 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            FazCalculoTipoLista2Intensidade1();
            										FazCalculoTipoLista2Intensidade2();
            										FazCalculoTipoLista2Intensidade3();
            										FazCalculodoCustoReal2();
            										FazCalculodoCustoEnergia2();
            										FazCalculoTipoListaIntensidadeTotal2();
        end, obj);

    obj._e_event20 = obj.button11:addEventListener("onClick",
        function (_)
            node = self.ListaJutsus2.node;									
            										local mesaDoPersonagem = rrpg.getMesaDe(sheet);											
            										sheet.AcertoNinTotal = tonumber(sheet.AcertoNinTotal) or 0;	
            										
            										mesaDoPersonagem.chat:rolarDados("1d100", "[§K3]Tentativa de executar Jutsu",
            										function (rolado)	
            											if sheet.AcertoNinTotal >= rolado.resultado then
            												mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. node.DescriJutsu);
            												
            												if node.TipoLista1Jutsu1 == 'Tai'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Nin'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Gen'then
            													if sheet.CRGenTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Elemental'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'DanoArmado'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'M/Tai'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'M/Nin'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'M/Gen'then
            													if sheet.CRGenTotal >= rolado.resultado then
            															mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'M/Elemental'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'M/DA'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Nulo' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Kunai' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Shuriken' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Shuriken Fuuma' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Kunai Gigante' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Senbon' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Papel Bomba' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Ginso Explosivo' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Veneno' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Bandagem' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if 	self.edtGM21.checked then
            													if node.TipoCustoJutsu2 == 'Chacra' then
            														sheet.OutrosAtual = (tonumber(sheet.ChakraAtual) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakra = sheet.OutrosAtual;
            														sheet.ChakraAtual = sheet.OutrosAtual;
            													end;
            												
            													if node.TipoCustoJutsu2 == 'Outros' then
            														sheet.OutrosAtual = (tonumber(sheet.BDOutro) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDOutro = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu2 == 'Reiatsu' then
            														sheet.OutrosAtual = (tonumber(sheet.BDReiatsu) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDReiatsu = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu2 == 'Chacra Biju' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraBiju) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakraBiju = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu2 == 'Chacra Branco' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraBranco) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakraBranco = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu2 == 'Chacra Preto' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraPreto) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakraPreto = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu2 == 'Hadou' then
            														sheet.OutrosAtual = (tonumber(sheet.BDHadou) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDHadou = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu2 == 'Hadou Negro' then
            														sheet.OutrosAtual = (tonumber(sheet.BDHadouNegro) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDHadouNegro = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu2 == 'Chacra Natural' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraNatural) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakraNatural = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu2 == 'Chacra Roxo' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraRoxo) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakraRoxo = (tonumber(sheet.OutrosAtual) or 0);
            													end;													
            												else
            													if self.edtGM21.checked then
            														if node.TipoCustoJutsu2 == 'Chacra' then
            															sheet.ChakraAtual = node.ChakraPlayer;
            														else
            															sheet.OutrosAtual = node.OutroPlayer;
            														end;
            													else
            														if node.TipoCustoJutsu2 == 'Chacra' then
            															local mesa = Firecast.getMesaDe(sheet);
            															local ChakraPlayer = mesa.meuJogador:getBarValue(2);
            															node.ChakraPlayer = mesa.meuJogador:getBarValue(2);
            															node.ChakraPlayer = (tonumber(node.ChakraPlayer) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            															sheet.ChakraAtual = node.ChakraPlayer;
            															mesa.meuJogador:requestSetBarValue(2, node.ChakraPlayer);
            														else
            															local mesa = Firecast.getMesaDe(sheet);
            															local OutroPlayer = mesa.meuJogador:getBarValue(3);
            															node.OutroPlayer = mesa.meuJogador:getBarValue(3);
            															node.OutroPlayer = (tonumber(node.OutroPlayer) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            															sheet.OutrosAtual = node.OutroPlayer;
            															mesa.meuJogador:requestSetBarValue(3, node.OutroPlayer);
            														end;
            													end;
            												end;
            												
            												if node.CustoEnergia > 0 then
            													if self.edtGM21.checked == true then
            														local mesa = Firecast.getMesaDe(sheet);
            														sheet.EnergiaAtual = (tonumber(sheet.EnergiaAtual) or 0) - (tonumber(node.CustoEnergia) or 0);
            													else			
            														local mesa = Firecast.getMesaDe(sheet);
            														local EnergiaPlayer = mesa.meuJogador:getBarValue(4);
            														node.EnergiaPlayer = mesa.meuJogador:getBarValue(4);
            														node.EnergiaPlayer = (tonumber(node.EnergiaPlayer) or 0) - (tonumber(node.CustoEnergia) or 0);
            														sheet.EnergiaAtual = node.EnergiaPlayer;
            														mesa.meuJogador:requestSetBarValue(4, node.EnergiaPlayer);
            													end;
            												end;
            											else
            												mesaDoPersonagem.chat:enviarMensagem("[§K4,0]TURURU, O Naruto pode ser duro as vezes [§I https://i0.wp.com/www.fatosdesconhecidos.com.br/wp-content/uploads/2018/11/Naruto_after_Jiraiyas_death.png?resize=600,450]");
            											end;
            										end);
        end, obj);

    obj._e_event21 = obj.button12:addEventListener("onClick",
        function (_)
            showMessage('O Bonus de Dificuldade do Treino da aba (Personagem) só é aplicado enquanto a rolagem do teste esta ativa, voce poderá acompanhar qual o total da chance durente a tentativa de treinar a habilidade')
        end, obj);

    obj._e_event22 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            PreparaDifuculdadeTreinoRankE2();
            										PreparaDifuculdadeTreinoRankD2();
            										PreparaDifuculdadeTreinoRankC2();
            										PreparaDifuculdadeTreinoRankB2();
            										PreparaDifuculdadeTreinoRankA2();
            										PreparaDifuculdadeTreinoRankS2();
            										PreparaDifuculdadeTreinoRankSS2();
            										PreparaDifuculdadeTreinoRankX2();
            										PreparaDifuculdadeTreinoRankXPLUS2();										
            										MonstraProPlayerADificuldadeTreino2();
        end, obj);

    obj._e_event23 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            node = self.ListaJutsus2.node;	
            										
            										sheet.TipoOutro = node.TipoCustoJutsu2 or "Chacra";
        end, obj);

    obj._e_event24 = obj.btnUparJutsu2:addEventListener("onClick",
        function (_)
            TreinarLevelJutsu2()
        end, obj);

    obj._e_event25 = obj.button13:addEventListener("onClick",
        function (_)
            self.POPKekegenkai:show();
        end, obj);

    obj._e_event26 = obj.button14:addEventListener("onClick",
        function (_)
            self.rclListadeJutsus3:append();
        end, obj);

    obj._e_event27 = obj.rclListadeJutsus3:addEventListener("onSelect",
        function (_)
            node = self.rclListadeJutsus3.selectedNode; 
            								self.ListaJutsus3.node = node;                       
            								self.ListaJutsus3.visible = (node ~= nil);
            								
            								if self.ListaJutsus3.node == nil then 
            									self.ListaJutsus3.node = node;  
            								end;
            								
            								if	self.ListaJutsus3.visible == true then
            									self.ListaJutsus3.node.LevelJutsu1 = self.ListaJutsus3.node.LevelJutsu1 or 1;
            									self.ListaJutsus3.node.DanoJutsu = self.ListaJutsus3.node.DanoJutsu or 0;
            									self.ListaJutsus3.node.TipoLista1Jutsu1 = self.ListaJutsus3.node.TipoLista1Jutsu1 or 'Nulo';
            									self.ListaJutsus3.node.TipoLista1Jutsu2 = self.ListaJutsus3.node.TipoLista1Jutsu2 or 'Nulo';
            									self.ListaJutsus3.node.TipoLista1Jutsu3 = self.ListaJutsus3.node.TipoLista1Jutsu3 or 'Nulo';
            									self.ListaJutsus3.node.CustoJutsu = self.ListaJutsus3.node.CustoJutsu or 0;
            									self.ListaJutsus3.node.TipoCustoJutsu3 = self.ListaJutsus3.node.TipoCustoJutsu3 or "Chacra";
            									self.ListaJutsus3.node.DescriJutsu = self.ListaJutsus3.node.DescriJutsu or 'COLOQUE UMA DESCRICAO E OS STATUS ESPECIFICOS DA HABILIDADE';
            									FazCalculoTipoLista3Intensidade1();
            									FazCalculoTipoLista3Intensidade2();
            									FazCalculoTipoLista3Intensidade3();
            									FazCalculodoCustoReal3();
            									FazCalculodoCustoEnergia3();
            									FazCalculoTipoListaIntensidadeTotal3();
            								end;
        end, obj);

    obj._e_event28 = obj.button15:addEventListener("onClick",
        function (_)
            NDB.deleteNode(self.ListaJutsus3.node);
        end, obj);

    obj._e_event29 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if	self.ListaJutsus3.visible == true then
            											node = self.ListaJutsus3.node;	                     
            
            											if (node.DanoJutsu ~= nil) and (node.DanoJutsu > -1) then
            												node.DNVerdadeiro = tonumber(node.DanoJutsu)* 2^tonumber(node.LevelJutsu1 - 1); 
            											else
            												node.LevelJutsu1 = 1;
            											end;
            										end;
        end, obj);

    obj._e_event30 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            FazCalculoTipoLista3Intensidade1();
            										FazCalculoTipoLista3Intensidade2();
            										FazCalculoTipoLista3Intensidade3();
            										FazCalculodoCustoReal3();
            										FazCalculodoCustoEnergia3();
            										FazCalculoTipoListaIntensidadeTotal3();
        end, obj);

    obj._e_event31 = obj.button16:addEventListener("onClick",
        function (_)
            node = self.ListaJutsus3.node;									
            										local mesaDoPersonagem = rrpg.getMesaDe(sheet);											
            										sheet.AcertoNinTotal = tonumber(sheet.AcertoNinTotal) or 0;	
            										
            										mesaDoPersonagem.chat:rolarDados("1d100", "[§K3]Tentativa de executar Jutsu",
            										function (rolado)	
            											if sheet.AcertoNinTotal >= rolado.resultado then
            												mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. node.DescriJutsu);
            												
            												if node.TipoLista1Jutsu1 == 'Tai'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Nin'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Gen'then
            													if sheet.CRGenTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Elemental'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'DanoArmado'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'M/Tai'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'M/Nin'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'M/Gen'then
            													if sheet.CRGenTotal >= rolado.resultado then
            															mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'M/Elemental'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'M/DA'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Nulo' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Kunai' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Shuriken' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Shuriken Fuuma' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Kunai Gigante' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Senbon' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Papel Bomba' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Ginso Explosivo' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Veneno' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if node.TipoLista1Jutsu1 == 'Bandagem' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.Lista1IntensidadeTotal * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Lista1IntensidadeTotal .. "[§K3] »");
            													end;
            												end;
            												
            												if 	self.edtGM21.checked then
            													if node.TipoCustoJutsu3 == 'Chacra' then
            														sheet.OutrosAtual = (tonumber(sheet.ChakraAtual) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakra = sheet.OutrosAtual;
            														sheet.ChakraAtual = sheet.OutrosAtual;
            													end;
            												
            													if node.TipoCustoJutsu3 == 'Outros' then
            														sheet.OutrosAtual = (tonumber(sheet.BDOutro) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDOutro = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu3 == 'Reiatsu' then
            														sheet.OutrosAtual = (tonumber(sheet.BDReiatsu) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDReiatsu = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu3 == 'Chacra Biju' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraBiju) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakraBiju = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu3 == 'Chacra Branco' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraBranco) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakraBranco = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu3 == 'Chacra Preto' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraPreto) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakraPreto = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu3 == 'Hadou' then
            														sheet.OutrosAtual = (tonumber(sheet.BDHadou) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDHadou = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu3 == 'Hadou Negro' then
            														sheet.OutrosAtual = (tonumber(sheet.BDHadouNegro) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDHadouNegro = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu3 == 'Chacra Natural' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraNatural) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakraNatural = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if node.TipoCustoJutsu3 == 'Chacra Roxo' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraRoxo) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            														sheet.BDChakraRoxo = (tonumber(sheet.OutrosAtual) or 0);
            													end;													
            												else
            													if self.edtGM21.checked then
            														if node.TipoCustoJutsu3 == 'Chacra' then
            															sheet.ChakraAtual = node.ChakraPlayer;
            														else
            															sheet.OutrosAtual = node.OutroPlayer;
            														end;
            													else
            														if node.TipoCustoJutsu3 == 'Chacra' then
            															local mesa = Firecast.getMesaDe(sheet);
            															local ChakraPlayer = mesa.meuJogador:getBarValue(2);
            															node.ChakraPlayer = mesa.meuJogador:getBarValue(2);
            															node.ChakraPlayer = (tonumber(node.ChakraPlayer) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            															sheet.ChakraAtual = node.ChakraPlayer;
            															mesa.meuJogador:requestSetBarValue(2, node.ChakraPlayer);
            														else
            															local mesa = Firecast.getMesaDe(sheet);
            															local OutroPlayer = mesa.meuJogador:getBarValue(3);
            															node.OutroPlayer = mesa.meuJogador:getBarValue(3);
            															node.OutroPlayer = (tonumber(node.OutroPlayer) or 0) - (tonumber(node.CustoJutsuReal) or 0);
            															sheet.OutrosAtual = node.OutroPlayer;
            															mesa.meuJogador:requestSetBarValue(3, node.OutroPlayer);
            														end;
            													end;
            												end;
            												
            												if node.CustoEnergia > 0 then
            													if self.edtGM21.checked == true then
            														local mesa = Firecast.getMesaDe(sheet);
            														sheet.EnergiaAtual = (tonumber(sheet.EnergiaAtual) or 0) - (tonumber(node.CustoEnergia) or 0);
            													else			
            														local mesa = Firecast.getMesaDe(sheet);
            														local EnergiaPlayer = mesa.meuJogador:getBarValue(4);
            														node.EnergiaPlayer = mesa.meuJogador:getBarValue(4);
            														node.EnergiaPlayer = (tonumber(node.EnergiaPlayer) or 0) - (tonumber(node.CustoEnergia) or 0);
            														sheet.EnergiaAtual = node.EnergiaPlayer;
            														mesa.meuJogador:requestSetBarValue(4, node.EnergiaPlayer);
            													end;
            												end;
            											else
            												mesaDoPersonagem.chat:enviarMensagem("[§K4,0]TURURU, O Naruto pode ser duro as vezes [§I https://i0.wp.com/www.fatosdesconhecidos.com.br/wp-content/uploads/2018/11/Naruto_after_Jiraiyas_death.png?resize=600,450]");
            											end;
            										end);
        end, obj);

    obj._e_event32 = obj.button17:addEventListener("onClick",
        function (_)
            showMessage('O Bonus de Dificuldade do Treino da aba (Personagem) só é aplicado enquanto a rolagem do teste esta ativa, voce poderá acompanhar qual o total da chance durente a tentativa de treinar a habilidade')
        end, obj);

    obj._e_event33 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            PreparaDifuculdadeTreinoRankE3();
            										PreparaDifuculdadeTreinoRankD3();
            										PreparaDifuculdadeTreinoRankC3();
            										PreparaDifuculdadeTreinoRankB3();
            										PreparaDifuculdadeTreinoRankA3();
            										PreparaDifuculdadeTreinoRankS3();
            										PreparaDifuculdadeTreinoRankSS3();
            										PreparaDifuculdadeTreinoRankX3();
            										PreparaDifuculdadeTreinoRankXPLUS3();										
            										MonstraProPlayerADificuldadeTreino3();
        end, obj);

    obj._e_event34 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            node = self.ListaJutsus3.node;	
            										
            										sheet.TipoOutro = node.TipoCustoJutsu3 or "Chacra";
        end, obj);

    obj._e_event35 = obj.btnUparJutsu3:addEventListener("onClick",
        function (_)
            TreinarLevelJutsu3()
        end, obj);

    obj._e_event36 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.edtGM21.checked == true then
            							self.btnVida.visible = false;
            							self.btnChacra.visible = false;
            							self.btnOutros.visible = false;
            							self.btnEnergia.visible = false;
            							self.cmbTipoOutro.left = 482;
            							self.retanguloNPC.visible = true;
            							self.LabNpc.visible = true;							
            							self.btnDiminuiHP.visible = true;
            							self.btnDiminuiChacra.visible = true;
            							self.btnDiminuiOutros.visible = true;
            							self.btnDiminuiEnergia.visible = true;							
            							self.btnAumentaHP.visible = true;
            							self.btnAumentaChacra.visible = true;
            							self.btnAumentaOutros.visible = true;
            							self.btnAumentaEnergia.visible = true;	
            							self.edtNPCHP.visible = true;
            							self.edtNPCChacra.visible = true;
            							self.edtNPCOutros.visible = true;
            							self.edtNPCEnergia.visible = true;							
            						else
            							self.btnVida.visible = true;
            							self.btnChacra.visible = true;
            							self.btnOutros.visible = true;
            							self.btnEnergia.visible = true;							
            							self.cmbTipoOutro.left = 320;
            							self.cmbTipoOutro.width = 110;
            							self.retanguloNPC.visible = false;
            							self.LabNpc.visible = false;
            							self.btnDiminuiHP.visible = false;
            							self.btnDiminuiChacra.visible = false;
            							self.btnDiminuiOutros.visible = false;
            							self.btnDiminuiEnergia.visible = false;							
            							self.btnAumentaHP.visible = false;
            							self.btnAumentaChacra.visible = false;
            							self.btnAumentaOutros.visible = false;
            							self.btnAumentaEnergia.visible = false;							
            							self.edtNPCHP.visible = false;
            							self.edtNPCChacra.visible = false;
            							self.edtNPCOutros.visible = false;
            							self.edtNPCEnergia.visible = false;
            						end;
        end, obj);

    obj._e_event37 = obj.btnDiminuiHP:addEventListener("onClick",
        function (_)
            sheet.HPAtual = (tonumber(sheet.HPAtual) or 0) - (tonumber(sheet.DanoRecebido) or 0);
            						sheet.DanoRecebido = 0;
        end, obj);

    obj._e_event38 = obj.btnAumentaHP:addEventListener("onClick",
        function (_)
            sheet.HPAtual = (tonumber(sheet.HPAtual) or 0) + (tonumber(sheet.DanoRecebido) or 0);
            						
            						if sheet.HPAtual > sheet.HPTotal then
            							sheet.HPAtual = tonumber(sheet.HPTotal);
            						end;
            						
            						sheet.DanoRecebido = 0;
        end, obj);

    obj._e_event39 = obj.btnDiminuiChacra:addEventListener("onClick",
        function (_)
            sheet.ChakraAtual = (tonumber(sheet.ChakraAtual) or 0) - (tonumber(sheet.CustoChacraRecebido) or 0);
            						
            						if sheet.TipoOutro == 'Chacra' then
            							sheet.BDChakra = (tonumber(sheet.ChakraAtual) or 0);
            							sheet.OutrosAtual = (tonumber(sheet.ChakraAtual) or 0);
            						end;						
            						
            						sheet.CustoChacraRecebido = 0;
        end, obj);

    obj._e_event40 = obj.btnAumentaChacra:addEventListener("onClick",
        function (_)
            sheet.ChakraAtual = (tonumber(sheet.ChakraAtual) or 0) + (tonumber(sheet.CustoChacraRecebido) or 0);
            						
            						if sheet.TipoOutro == 'Chacra' then
            							sheet.BDChakra = (tonumber(sheet.ChakraAtual) or 0);
            							sheet.OutrosAtual = (tonumber(sheet.ChakraAtual) or 0);
            						end;
            						
            						if sheet.ChakraAtual > sheet.ChakraTotal then
            							sheet.ChakraAtual = tonumber(sheet.ChakraTotal);
            						end;
            						
            						sheet.CustoChacraRecebido = 0;
        end, obj);

    obj._e_event41 = obj.btnDiminuiOutros:addEventListener("onClick",
        function (_)
            sheet.OutrosAtual = (tonumber(sheet.OutrosAtual) or 0) - (tonumber(sheet.CustoOutrosRecebido) or 0);						
            												
            						if sheet.TipoOutro == 'Chacra' then
            							sheet.BDChakra = (tonumber(sheet.OutrosAtual) or 0);
            							sheet.ChakraAtual = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Reiatsu' then
            							sheet.BDReiatsu = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Biju' then
            							sheet.BDChakraBiju = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Branco' then
            							sheet.BDChakraBranco = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Preto' then
            							sheet.BDChakraPreto = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Hadou' then
            							sheet.BDHadou = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Hadou Negro' then
            							sheet.BDHadouNegro = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Natural' then
            							sheet.BDChakraNatural = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Roxo' then
            							sheet.BDChakraRoxo = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Outros' then
            							sheet.BDOutro = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						sheet.CustoOutrosRecebido = 0;
        end, obj);

    obj._e_event42 = obj.btnAumentaOutros:addEventListener("onClick",
        function (_)
            sheet.OutrosAtual = (tonumber(sheet.OutrosAtual) or 0) + (tonumber(sheet.CustoOutrosRecebido) or 0);				
            						
            						if sheet.OutrosAtual > sheet.OutrosTotal then
            							sheet.OutrosAtual = tonumber(sheet.OutrosTotal);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra' then
            							sheet.BDChakra = (tonumber(sheet.OutrosAtual) or 0);
            							sheet.ChakraAtual = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Reiatsu' then
            							sheet.BDReiatsu = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Biju' then
            							sheet.BDChakraBiju = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Branco' then
            							sheet.BDChakraBranco = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Preto' then
            							sheet.BDChakraPreto = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Hadou' then
            							sheet.BDHadou = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Hadou Negro' then
            							sheet.BDHadouNegro = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Natural' then
            							sheet.BDChakraNatural = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Roxo' then
            							sheet.BDChakraRoxo = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Outros' then
            							sheet.BDOutro = (tonumber(sheet.OutrosAtual) or 0);
            						end;
            												
            						sheet.CustoOutrosRecebido = 0;
        end, obj);

    obj._e_event43 = obj.btnDiminuiEnergia:addEventListener("onClick",
        function (_)
            sheet.EnergiaAtual = (tonumber(sheet.EnergiaAtual) or 0) - (tonumber(sheet.CustoEnergiaRecebido) or 0);
            						sheet.CustoEnergiaRecebido = 0;
        end, obj);

    obj._e_event44 = obj.btnAumentaEnergia:addEventListener("onClick",
        function (_)
            sheet.EnergiaAtual = (tonumber(sheet.EnergiaAtual) or 0) + (tonumber(sheet.CustoEnergiaRecebido) or 0);
            						
            						if sheet.EnergiaAtual > sheet.EnergiaTotal then
            							sheet.EnergiaAtual = tonumber(sheet.EnergiaTotal);
            						end;
            												
            						sheet.CustoEnergiaRecebido = 0;
        end, obj);

    obj._e_event45 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.BarraHP.value = tonumber(sheet.HPAtual);
            						self.BarraHP.max = tonumber(sheet.HPTotal);
        end, obj);

    obj._e_event46 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.BarraChakra.value = tonumber(sheet.ChakraAtual);
            						self.BarraChakra.max = tonumber(sheet.ChakraTotal);
        end, obj);

    obj._e_event47 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.TipoOutro == 'Chacra' then
            							sheet.OutrosTotal = (tonumber(sheet.ChakraTotal) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Reiatsu' then
            							sheet.OutrosTotal = (tonumber(sheet.ReiatsuTotal) or 0);
            						end;
            							
            						if sheet.TipoOutro == 'Chacra Biju' then
            							sheet.OutrosTotal = (tonumber(sheet.ChakraBiju) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Branco' then
            							sheet.OutrosTotal = (tonumber(sheet.ChakraBranco) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Preto' then
            							sheet.OutrosTotal = (tonumber(sheet.ChakraPreto) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Hadou' then
            							sheet.OutrosTotal = (tonumber(sheet.Hadou) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Hadou Negro' then
            							sheet.OutrosTotal = (tonumber(sheet.HadouNegro) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Natural' then
            							sheet.OutrosTotal = (tonumber(sheet.ChakraNatural) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Roxo' then
            							sheet.OutrosTotal = (tonumber(sheet.ChakraRoxo) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Outros' then
            							sheet.OutrosTotal = (tonumber(sheet.DOutro) or 0);
            						end;
            																								
            						self.BarraOutros.value = tonumber(sheet.OutrosAtual);
            						self.BarraOutros.max = tonumber(sheet.OutrosTotal);
        end, obj);

    obj._e_event48 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local mesa = Firecast.getMesaDe(sheet); 
            						
            						if sheet.TipoOutro == 'Chacra' then
            							sheet.OutrosTotal = (tonumber(sheet.ChakraTotal) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Reiatsu' then
            							sheet.OutrosTotal = (tonumber(sheet.ReiatsuTotal) or 0);
            						end;
            							
            						if sheet.TipoOutro == 'Chacra Biju' then
            							sheet.OutrosTotal = (tonumber(sheet.ChakraBiju) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Branco' then
            							sheet.OutrosTotal = (tonumber(sheet.ChakraBranco) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Preto' then
            							sheet.OutrosTotal = (tonumber(sheet.ChakraPreto) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Hadou' then
            							sheet.OutrosTotal = (tonumber(sheet.Hadou) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Hadou Negro' then
            							sheet.OutrosTotal = (tonumber(sheet.HadouNegro) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Natural' then
            							sheet.OutrosTotal = (tonumber(sheet.ChakraNatural) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Roxo' then
            							sheet.OutrosTotal = (tonumber(sheet.ChakraRoxo) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Outros' then
            							sheet.OutrosTotal = (tonumber(sheet.DOutro) or 0);
            						end;
            						
            						local OutrosTotal = (tonumber(sheet.OutrosTotal) or 0);
            						mesa.meuJogador:requestSetBarValue(3, nil, OutrosTotal);
            																								
            						self.BarraOutros.value = tonumber(sheet.OutrosAtual);
            						self.BarraOutros.max = tonumber(sheet.OutrosTotal);
        end, obj);

    obj._e_event49 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local mesa = Firecast.getMesaDe(sheet); 
            						
            						if sheet.TipoOutro == 'Chacra' then
            							sheet.OutrosAtual = (tonumber(sheet.ChakraAtual) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Reiatsu' then
            							sheet.OutrosAtual = (tonumber(sheet.BDReiatsu) or 0);
            						end;
            					
            						if sheet.TipoOutro == 'Chacra Biju' then
            							sheet.OutrosAtual = (tonumber(sheet.BDChakraBiju) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Branco' then
            							sheet.OutrosAtual = (tonumber(sheet.BDChakraBranco) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Preto' then
            							sheet.OutrosAtual = (tonumber(sheet.BDChakraPreto) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Hadou' then
            							sheet.OutrosAtual = (tonumber(sheet.BDHadou) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Hadou Negro' then
            							sheet.OutrosAtual = (tonumber(sheet.BDHadouNegro) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Natural' then
            							sheet.OutrosAtual = (tonumber(sheet.BDChakraNatural) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Chacra Roxo' then
            							sheet.OutrosAtual = (tonumber(sheet.BDChakraRoxo) or 0);
            						end;
            						
            						if sheet.TipoOutro == 'Outros' then
            							sheet.OutrosAtual = (tonumber(sheet.BDOutro) or 0);
            						end;
            							
            						local OutrosAtual = (tonumber(sheet.OutrosAtual) or 0);
            						mesa.meuJogador:requestSetBarValue(3, OutrosAtual, nil);
        end, obj);

    obj._e_event50 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.Sequenci1 == true then
            							if self.edtGM21.checked then								
            								if sheet.EnergiaAtual >= sheet.EnergiaTotal then 
            									sheet.EnergiaAtual = sheet.EnergiaTotal;
            								end;
            							end;
            						end;
        end, obj);

    obj._e_event51 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.BarraEnergia.value = tonumber(sheet.EnergiaAtual);
            						self.BarraEnergia.max = tonumber(sheet.EnergiaTotal);
        end, obj);

    obj._e_event52 = obj.btnVida:addEventListener("onClick",
        function (_)
            local mesa = Firecast.getMesaDe(sheet); 
            						local HPTotal = (tonumber(sheet.HPTotal) or 0);
            						mesa.meuJogador:requestSetBarValue(1, nil, HPTotal);
        end, obj);

    obj._e_event53 = obj.btnChacra:addEventListener("onClick",
        function (_)
            local mesa = Firecast.getMesaDe(sheet); 
            						local ChakraTotal = (tonumber(sheet.ChakraTotal) or 0);
            						mesa.meuJogador:requestSetBarValue(2, nil, ChakraTotal);
        end, obj);

    obj._e_event54 = obj.btnOutros:addEventListener("onClick",
        function (_)
            local mesa = Firecast.getMesaDe(sheet); 
            						local OutrosTotal = (tonumber(sheet.OutrosTotal) or 0);
            						mesa.meuJogador:requestSetBarValue(3, nil, OutrosTotal);
        end, obj);

    obj._e_event55 = obj.btnEnergia:addEventListener("onClick",
        function (_)
            local mesa = Firecast.getMesaDe(sheet); 
            						local EnergiaTotal = (tonumber(sheet.EnergiaTotal) or 0);
            						mesa.meuJogador:requestSetBarValue(4, nil, EnergiaTotal);
        end, obj);

    obj._e_event56 = obj.edtGM31:addEventListener("onClick",
        function (_)
            self.PopTransformationTotal:show();
        end, obj);

    obj._e_event57 = obj.ControlaTransTotal:addEventListener("onChange",
        function (_)
            if self.ControlaTransTotal.checked then
            							CalculaTransformacaoTotal();
            						end;
        end, obj);

    obj._e_event58 = obj.button18:addEventListener("onClick",
        function (_)
            self.PopTransformation:show();
        end, obj);

    obj._e_event59 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            AtivaJunto();
        end, obj);

    obj._e_event60 = obj.ControlaTrans:addEventListener("onChange",
        function (_)
            if self.ControlaTrans.checked then
            							self.transformation.visible = false;
            							self.transformationDisable.visible = true;	
            						else
            							self.transformation.visible = true;
            							self.transformationDisable.visible = false;		
            						end;
        end, obj);

    obj._e_event61 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            CalculaTransformacao();
        end, obj);

    obj._e_event62 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.FotoMSG ~= nil then
            								if sheet.FotoMsg == "FMSGNormal" then
            									sheet.FotoSelecionada = sheet.FotoNormal;
            								end;
            
            								if sheet.FotoMsg == "FMSGFeliz" then
            									sheet.FotoSelecionada = sheet.FotoFeliz;
            								end;
            
            								if sheet.FotoMsg == "FMSGBravo" then
            									sheet.FotoSelecionada = sheet.FotoBravo;
            								end;
            								
            								if sheet.FotoMsg == "FMSGTriste" then
            									sheet.FotoSelecionada = sheet.FotoTriste;
            								end;
            							end;
        end, obj);

    obj._e_event63 = obj.button19:addEventListener("onClick",
        function (_)
            local minhaMesa = Firecast.getRoomOf(sheet);
            						local chat = minhaMesa.chat;  
            						if sheet.FotoMSG ~= nil then
            							chat:enviarMensagem("[§I ".. sheet.FotoSelecionada .. "] : " .. sheet.MSGParaMesa);
            							sheet.MSGParaMesa = "";
            							self.MsgMesaEnvia:setFocus();
            						else
            							showMessage("Para Enviar Mensagem da Ficha é Necessario escolher uma Caracteristica");
            						end;
        end, obj);

    obj._e_event64 = obj.edtGM20:addEventListener("onClick",
        function (_)
            self.POPCALCULO:show();
        end, obj);

    obj._e_event65 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.Sequenci1 == true then
            								sheet.ExpTotal = (tonumber(sheet.Level) or 0) * 100;
            												
            								if sheet.Exp > sheet.ExpTotal then
            									sheet.Exp = (tonumber(sheet.Exp) or 0) - (tonumber(sheet.ExpTotal) or 0);
            									sheet.Level = (tonumber(sheet.Level) or 0) + 1;
            									showMessage("VOCE UPOU DE LEVEL");
            									
            									LevelUPHP();
            								end;	
            
            							end;
        end, obj);

    obj._e_event66 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.Sequenci1 == true then
            								sheet.Exp = (tonumber(sheet.Exp) or 0) + (tonumber(sheet.ExpPTreino));
            								sheet.ExpPTreino = 0;
            							end;
        end, obj);

    obj._e_event67 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.ControlaTransTotal.checked then
            								sheet.ReducaoTotal = (tonumber(sheet.BandanaReducao) or 0) + (tonumber(sheet.ColeteReducao) or 0) + (tonumber(sheet.CReducao) or 0) + (tonumber(sheet.DReducao) or 0) + (tonumber(sheet.TReducao) or 0);
            							else
            								sheet.ReducaoTotal = (tonumber(sheet.BandanaReducao) or 0) + (tonumber(sheet.ColeteReducao) or 0) + (tonumber(sheet.CReducao) or 0) + (tonumber(sheet.DReducao) or 0);	
            							end;
        end, obj);

    obj._e_event68 = obj.dataLink27:addEventListener("onChange",
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
            							sheet.CCRG = 0;
            							sheet.CReducao = 0;
            							sheet.CAtletismo = 0;
            							sheet.CRaciocineo = 0;
            							sheet.CPercepcao = 0;
            							sheet.CFurtividade = 0;
            							sheet.CVigor = 0;
            							
            							if sheet.Cla == 'Sem clã' then
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
            								sheet.CCRG = 0;
            								sheet.CReducao = 0;
            								sheet.CReducao = 0;
            								sheet.CAtletismo = 0;
            								sheet.CRaciocineo = 0;
            								sheet.CPercepcao = 0;
            								sheet.CFurtividade = 0;
            								sheet.CVigor = 0;
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
            								sheet.CNin = (tonumber(sheet.Ninjutsu) or 0) * 0.10;
            							end;
            							
            							if sheet.Cla == 'Hyuga' then
            								sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.20;
            								sheet.CTai = (tonumber(sheet.Taijutsu) or 0) * 0.10;
            							end;
            							
            							if sheet.Cla == 'Inuzuka' then
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
            								sheet.CCRG = 0;
            								sheet.CReducao = 0;
            								sheet.CPercepcao = 4;
            							end;
            							
            							if sheet.Cla == 'Jyuin' then
            								sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.40;
            								sheet.CHP = (tonumber(sheet.HP) or 0) * 0.10;
            								sheet.CVigor = 4;
            							end;
            							
            							if sheet.Cla == 'Kaguya' then
            								sheet.CHP = (tonumber(sheet.HP) or 0) * 0.10;
            								sheet.CReducao = 10;
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
            								sheet.CRaciocineo = 4;
            							end;
            							
            							if sheet.Cla == 'Uchiha' then
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
            								sheet.CCRG = 0;
            								sheet.CReducao = 0;
            							end;
            							
            							if sheet.Cla == 'Uzumaki' then
            								sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 1;
            								sheet.CVigor = 4;
            							end;
            							
            							if sheet.Cla == 'Yamanaka' then
            								sheet.CAT = 5;
            								sheet.CAN = 5;
            								sheet.CAG = 5; 
            							end;
            							
            							if sheet.Cla == 'Ootsuki' then
            								sheet.CTai = (tonumber(sheet.Taijutsu) or 0) * 0.20;
            								sheet.CNin = (tonumber(sheet.Ninjutsu) or 0) * 0.20;
            								sheet.CGen = (tonumber(sheet.Genjutsu) or 0) * 0.20;
            								sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            								sheet.CDA = (tonumber(sheet.DanoArmado) or 0) * 0.20;
            								sheet.CAT = 10;
            								sheet.CAN = 10;
            								sheet.CAG = 10;
            								sheet.CCRT = 5;
            								sheet.CCRN = 5;
            								sheet.CCRG = 5;
            								sheet.CReducao = 5;
            								sheet.CEsq = 5; 
            								sheet.CBloq = 5; 
            							end;
            							
            							if sheet.Cla == 'Rinnegan' then
            								sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.30;
            								sheet.CHP = (tonumber(sheet.HP) or 0) * 0.15;
            								sheet.CReducao = 5;
            							end;
            							
            							if sheet.Cla == 'Shizuku' then
            								sheet.CGen = (tonumber(sheet.Genjutsu) or 0) * 0.10;
            								sheet.CTai = (tonumber(sheet.Taijutsu) or 0) * 0.10;
            							end;
            							
            							if sheet.Cla == '----------' then
            								showMessage("ESCOLHE UM CLÃ FILHA DA PUTA");
            							end;
            							
            							if sheet.Cla == 'Fire' then
            								sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            							end;
            							
            							if sheet.Cla == 'Gomu' then
            								sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.10;
            								sheet.CReducao = 5;
            							end;
            							
            							if sheet.Cla == 'Hozuki/Hoshigake' then
            								sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.10;
            								sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.30;
            								sheet.CHP = (tonumber(sheet.HP) or 0) * 0.20;
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
            							
            							if sheet.Cla == 'Iburi' then
            								sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            							end;
            						
            							if sheet.Cla == 'Orega' then
            								sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            							end;
            							
            							if sheet.Cla == 'Ray' then
            								sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            							end;
            						
            							if sheet.Cla == 'Sabaku' then
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
            							
            							if sheet.Cla == 'Ryotenbin' then
            								sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            							end;								
            							------------------------------------------------------				
            							if sheet.Cla == 'Chinoke' then
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
            								sheet.CCRG = 5;
            							end;
            
            							if sheet.Cla == 'Kouga' then
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
            								sheet.CCRG = 0;
            								sheet.CReducao = 0;
            							end;
            							
            							if sheet.Cla == 'Miroku' then
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
            								sheet.CCRG = 0;
            								sheet.CReducao = 0;
            							end;
            							
            							if sheet.Cla == 'Mitsu' then
            								sheet.CNin = (tonumber(sheet.Ninjutsu) or 0) * 0.10;
            							end;
            							
            							if sheet.Cla == 'Nakamura' then
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
            								sheet.CCRG = 0;
            								sheet.CReducao = 0;
            							end;
            							
            							if sheet.Cla == 'Natsume' then
            								sheet.CAT = 5;
            								sheet.CCRT = 5;
            								sheet.CBloq = 5;
            								sheet.CEsq = 3;
            							end;
            							
            							if sheet.Cla == 'Neko' then
            								sheet.CPercepcao = 4;
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
            								sheet.CCRG = 0;
            								sheet.CReducao = 0;
            							end;
        end, obj);

    obj._e_event69 = obj.dataLink28:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.GraduacaoTreino == 'Academico' then
            								sheet.GTurno = 1;
            							end;
            							
            							if sheet.GraduacaoTreino == 'Genin' then
            								sheet.GAcertoTai = 2;
            								sheet.GAcertoNin = 2;
            								sheet.GAcertoGen = 2;
            								sheet.GEsquiva = 2;
            								sheet.GBloqueio = 3;
            							end;
            							
            							if sheet.GraduacaoTreino == 'Chunin' then
            								sheet.GAcertoTai = 4;
            								sheet.GAcertoNin = 4;
            								sheet.GAcertoGen = 4;
            								sheet.GEsquiva = 4;
            								sheet.GBloqueio = 6;
            							end;
            							
            							if sheet.GraduacaoTreino == 'Jounin' then
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
            							
            							if sheet.GraduacaoTreino == 'Anbu' then
            								sheet.GAcertoTai = 8;
            								sheet.GAcertoNin = 8;
            								sheet.GAcertoGen = 8;
            								sheet.GEsquiva = 8;
            								sheet.GBloqueio = 12;
            							end;
            						   
            							if sheet.GraduacaoTreino == 'AnbuNucleo' then
            								sheet.GAcertoTai = 10;
            								sheet.GAcertoNin = 10;
            								sheet.GAcertoGen = 10;
            								sheet.GEsquiva = 10;
            								sheet.GBloqueio = 15;
            								sheet.GCRTai = 6;
            								sheet.GCRNin = 6;
            								sheet.GCRGen = 6;
            							end;
            							
            							if sheet.GraduacaoTreino == 'Organização' then
            								sheet.GAcertoTai = 12;
            								sheet.GAcertoNin = 12;
            								sheet.GAcertoGen = 12;
            								sheet.GEsquiva = 12;
            								sheet.GBloqueio = 18;
            							end;					
            											
            							if sheet.GraduacaoTreino == 'GDE' then
            								sheet.GAcertoTai = 14;
            								sheet.GAcertoNin = 14;
            								sheet.GAcertoGen = 14;
            								sheet.GEsquiva = 14;
            								sheet.GBloqueio = 21;
            								sheet.GCRTai = 9;
            								sheet.GCRNin = 9;
            								sheet.GCRGen = 9;
            							end;					
            											
            							if sheet.GraduacaoTreino == 'Concelheiro' then
            								sheet.GAcertoTai = 16;
            								sheet.GAcertoNin = 16;
            								sheet.GAcertoGen = 16;
            								sheet.GEsquiva = 16;
            								sheet.GBloqueio = 24;
            							end;					
            											
            							if sheet.GraduacaoTreino == 'Kage' then
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

    obj._e_event70 = obj.dataLink29:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.Taijutsu = (tonumber(sheet.Forca) or 0) * 2;
            							sheet.Ninjutsu = (tonumber(sheet.Inteligencia) or 0) * 2;
            							sheet.Genjutsu = (tonumber(sheet.Sabedoria) or 0) * 2;
            							sheet.Elemental1 = (tonumber(sheet.NinTotal / 2) or 0) + (tonumber(sheet.GenTotal / 2) or 0);
            							sheet.DanoArmado = (tonumber(sheet.TaiTotal / 2) or 0) + (tonumber(sheet.Habilidade) or 0);
        end, obj);

    obj._e_event71 = obj.dataLink30:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.ControlaTransTotal.checked then
            								sheet.TaiTotal = (tonumber(sheet.ArmaDT) or 0) + (tonumber(sheet.AcessorioDT) or 0) + (tonumber(sheet.DTaijutsu) or 0) + (tonumber(sheet.CTai) or 0) + (tonumber(sheet.Taijutsu) or 0) + (tonumber(sheet.TTaijutsu) or 0);
            								sheet.NinTotal = (tonumber(sheet.ArmaDN) or 0) + (tonumber(sheet.AcessorioDN) or 0) + (tonumber(sheet.DNinjutsu) or 0) + (tonumber(sheet.CNin) or 0) + (tonumber(sheet.Ninjutsu) or 0) + (tonumber(sheet.TNinjutsu) or 0);
            								sheet.GenTotal = (tonumber(sheet.ArmaDG) or 0) + (tonumber(sheet.AcessorioDG) or 0) + (tonumber(sheet.DGenjutsu) or 0) + (tonumber(sheet.CGen) or 0) + (tonumber(sheet.Genjutsu) or 0) + (tonumber(sheet.TGenjutsu) or 0);
            								sheet.EleTotal = (tonumber(sheet.ArmaDE) or 0) + (tonumber(sheet.AcessorioDE) or 0) + (tonumber(sheet.DDE) or 0) + (tonumber(sheet.CDE) or 0) + (tonumber(sheet.Elemental1) or 0) + (tonumber(sheet.TElemental) or 0);
            								sheet.DATotal = (tonumber(sheet.ArmaDA) or 0) + (tonumber(sheet.DDA) or 0) + (tonumber(sheet.CDA) or 0) + (tonumber(sheet.DanoArmado) or 0) + (tonumber(sheet.TDA) or 0);
            							else					
            								sheet.TaiTotal = (tonumber(sheet.ArmaDT) or 0) + (tonumber(sheet.AcessorioDT) or 0) + (tonumber(sheet.DTaijutsu) or 0) + (tonumber(sheet.CTai) or 0) + (tonumber(sheet.Taijutsu) or 0);
            								sheet.NinTotal = (tonumber(sheet.ArmaDN) or 0) + (tonumber(sheet.AcessorioDN) or 0) + (tonumber(sheet.DNinjutsu) or 0) + (tonumber(sheet.CNin) or 0) + (tonumber(sheet.Ninjutsu) or 0);
            								sheet.GenTotal = (tonumber(sheet.ArmaDG) or 0) + (tonumber(sheet.AcessorioDG) or 0) + (tonumber(sheet.DGenjutsu) or 0) + (tonumber(sheet.CGen) or 0) + (tonumber(sheet.Genjutsu) or 0);
            								sheet.EleTotal = (tonumber(sheet.ArmaDE) or 0) + (tonumber(sheet.AcessorioDE) or 0) + (tonumber(sheet.DDE) or 0) + (tonumber(sheet.CDE) or 0) + (tonumber(sheet.Elemental1) or 0);
            								sheet.DATotal = (tonumber(sheet.ArmaDA) or 0) + (tonumber(sheet.DDA) or 0) + (tonumber(sheet.CDA) or 0) + (tonumber(sheet.DanoArmado) or 0);
            							end;
            								
            							sheet.TaiTotal = math.ceil(sheet.TaiTotal);
            							sheet.NinTotal = math.ceil(sheet.NinTotal);
            							sheet.GenTotal = math.ceil(sheet.GenTotal);
            							sheet.EleTotal = math.ceil(sheet.EleTotal);
            							sheet.DATotal = math.ceil(sheet.DATotal);
        end, obj);

    obj._e_event72 = obj.dataLink31:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.ControlaTransTotal.checked then
            								sheet.GHP = (tonumber(sheet.GHP) or 0);
            								sheet.HP = math.floor(tonumber(sheet.Resistencia) or 0) * 10 + (tonumber(sheet.GHP) or 0);
            								sheet.HPTotal = math.floor(tonumber(sheet.HP) or 0) + (tonumber(sheet.CHP) or 0) + (tonumber(sheet.DHP) or 0) + (tonumber(sheet.AcessorioHP) or 0)
            								+ (tonumber(sheet.ColeteHP) or 0) + (tonumber(sheet.BandanaHP) or 0) + (tonumber(sheet.ArmaHP) or 0) + (tonumber(sheet.THP) or 0);	
            							else
            								sheet.GHP = (tonumber(sheet.GHP) or 0);
            								sheet.HP = math.floor(tonumber(sheet.Resistencia) or 0) * 10 + (tonumber(sheet.GHP) or 0);
            								sheet.HPTotal = math.floor(tonumber(sheet.HP) or 0) + (tonumber(sheet.CHP) or 0) + (tonumber(sheet.DHP) or 0) + (tonumber(sheet.AcessorioHP) or 0)
            								+ (tonumber(sheet.ColeteHP) or 0) + (tonumber(sheet.BandanaHP) or 0) + (tonumber(sheet.ArmaHP) or 0);	
            							end;
        end, obj);

    obj._e_event73 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.ControlaTransTotal.checked then
            								sheet.Idade2 = (tonumber(sheet.Idade) or 0);
            								
            								if sheet.Idade2 > 40 then
            									sheet.Idade2 = 40;
            								end;
            								
            								sheet.Chakra = (tonumber(sheet.Idade2) or 0) * 25  + (tonumber(sheet.Level) or 0);
            								sheet.ChakraTotal = math.floor(tonumber(sheet.Chakra) or 0) + (tonumber(sheet.ArmaChakra) or 0) + (tonumber(sheet.BandanaChakra) or 0) + 
            								(tonumber(sheet.ColeteChakra) or 0) + (tonumber(sheet.AcessorioChakra) or 0) + (tonumber(sheet.DChakra) or 0) + (tonumber(sheet.GChakra) or 0) + (tonumber(sheet.CChakra) or 0) + (tonumber(sheet.TChakra) or 0);	
            							else
            								sheet.Idade2 = (tonumber(sheet.Idade) or 0);	
            								
            								if sheet.Idade2 > 40 then
            									sheet.Idade2 = 40;
            								end;
            								
            								sheet.Chakra = (tonumber(sheet.Idade2) or 0) * 25  + (tonumber(sheet.Level) or 0);
            								sheet.ChakraTotal = math.floor(tonumber(sheet.Chakra) or 0) + (tonumber(sheet.ArmaChakra) or 0) + (tonumber(sheet.BandanaChakra) or 0) + 
            								(tonumber(sheet.ColeteChakra) or 0) + (tonumber(sheet.AcessorioChakra) or 0) + (tonumber(sheet.DChakra) or 0) + (tonumber(sheet.GChakra) or 0) + (tonumber(sheet.CChakra) or 0);			
            							end;
        end, obj);

    obj._e_event74 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.ControlaTransTotal.checked then
            								sheet.Reiatsu = (tonumber(sheet.TaiTotal) or 0) + (tonumber(sheet.NinTotal) or 0) + (tonumber(sheet.GenTotal) or 0) + 
            								(tonumber(sheet.DATotal) or 0) + (tonumber(sheet.EleTotal) or 0) + ( 10000 * (tonumber(sheet.Level) or 0));
            								sheet.ReiatsuTotal = (tonumber(sheet.Reiatsu) or 0) * 10 + (tonumber(sheet.DReiatsu) or 0) + (tonumber(sheet.ArmaReiatsu) or 0) + (tonumber(sheet.TReiatsu) or 0);	
            							else
            								sheet.Reiatsu = (tonumber(sheet.TaiTotal) or 0) + (tonumber(sheet.NinTotal) or 0) + (tonumber(sheet.GenTotal) or 0) + 
            								(tonumber(sheet.DATotal) or 0) + (tonumber(sheet.EleTotal) or 0) + ( 10000 * (tonumber(sheet.Level) or 0));
            								sheet.ReiatsuTotal = (tonumber(sheet.Reiatsu) or 0) * 10 + (tonumber(sheet.DReiatsu) or 0) + (tonumber(sheet.ArmaReiatsu) or 0);			
            							end;
        end, obj);

    obj._e_event75 = obj.dataLink34:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.ControlaTransTotal.checked then
            								sheet.EnergiaTotal = 100 + (tonumber(sheet.Energia) or 0) + (tonumber(sheet.DEnergia) or 0) + (tonumber(sheet.AcessorioEnergia) or 0) + (tonumber(sheet.TEnergia) or 0);	
            							else
            								sheet.EnergiaTotal = 100 + (tonumber(sheet.Energia) or 0) + (tonumber(sheet.DEnergia) or 0) + (tonumber(sheet.AcessorioEnergia) or 0);			
            							end;
        end, obj);

    obj._e_event76 = obj.button20:addEventListener("onClick",
        function (_)
            self.POPKunai:show();
        end, obj);

    obj._e_event77 = obj.button21:addEventListener("onClick",
        function (_)
            UseKunai();
        end, obj);

    obj._e_event78 = obj.button22:addEventListener("onClick",
        function (_)
            UseShuriken();
        end, obj);

    obj._e_event79 = obj.button23:addEventListener("onClick",
        function (_)
            UseShurikenFuuma();
        end, obj);

    obj._e_event80 = obj.button24:addEventListener("onClick",
        function (_)
            UseKunaiGigante();
        end, obj);

    obj._e_event81 = obj.button25:addEventListener("onClick",
        function (_)
            UseSenbon();
        end, obj);

    obj._e_event82 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.KunaiQT = (tonumber(sheet.KunaiQT) or 0);
            							sheet.ShurikenQT = (tonumber(sheet.ShurikenQT) or 0);
            							sheet.SFuumaQT = (tonumber(sheet.SFuumaQT) or 0);
            							sheet.KGiganteQT = (tonumber(sheet.KGiganteQT) or 0);
            							sheet.SenbonQT = (tonumber(sheet.SenbonQT) or 0);
            							sheet.PBombaQT = (tonumber(sheet.PBombaQT) or 0);
            							sheet.GExplosivoQT = (tonumber(sheet.GExplosivoQT) or 0);
            							sheet.VenenoQT = (tonumber(sheet.VenenoQT) or 0);
            							sheet.BandagemQT = (tonumber(sheet.BandagemQT) or 0);
            							sheet.BombaFumacaQT = (tonumber(sheet.BombaFumacaQT) or 0);
        end, obj);

    obj._e_event83 = obj.dataLink36:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.Sequenci1 == true then
            								if sheet.KunaiQT ~= nil then
            									if sheet.KunaiQT > sheet.KunaiLimite then
            										sheet.KunaiQT = tonumber(sheet.KunaiLimite or 0);
            									end;
            								end;
            								
            								if sheet.ShurikenQT ~= nil then	
            									if sheet.ShurikenQT > sheet.ShurikenLimite then
            										sheet.ShurikenQT = tonumber(sheet.ShurikenLimite or 0);
            									end;
            								end;
            								
            								if sheet.SFuumaQT ~= nil then	
            									if sheet.SFuumaQT > sheet.SFuumaLimite then
            										sheet.SFuumaQT = tonumber(sheet.SFuumaLimite or 0);
            									end;					
            								end;
            								
            								if sheet.KGiganteQT ~= nil then	
            									if sheet.KGiganteQT > sheet.KGiganteLimite then
            										sheet.KGiganteQT = tonumber(sheet.KGiganteLimite or 0);
            									end;
            								end;
            								
            								if sheet.SenbonQT ~= nil then	
            									if sheet.SenbonQT > sheet.SemboLimite then
            										sheet.SenbonQT = tonumber(sheet.SemboLimite or 0);
            									end;
            								end;
            							end;
        end, obj);

    obj._e_event84 = obj.dataLink37:addEventListener("onChange",
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
            							sheet.BF = 0;
        end, obj);

    obj._e_event85 = obj.button26:addEventListener("onClick",
        function (_)
            self.POPPB:show();
        end, obj);

    obj._e_event86 = obj.button27:addEventListener("onClick",
        function (_)
            UsePB();
        end, obj);

    obj._e_event87 = obj.button28:addEventListener("onClick",
        function (_)
            UseGinsoExplosivo();
        end, obj);

    obj._e_event88 = obj.button29:addEventListener("onClick",
        function (_)
            UseVeneno();
        end, obj);

    obj._e_event89 = obj.button30:addEventListener("onClick",
        function (_)
            UsoBandagem();
        end, obj);

    obj._e_event90 = obj.button31:addEventListener("onClick",
        function (_)
            UseBombaFumaca();
        end, obj);

    obj._e_event91 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.Sequenci1 == true then
            								if sheet.PBombaQT ~= nil then
            									if sheet.PBombaQT >= sheet.PBombaLimite then
            										sheet.PBombaQT = tonumber(sheet.PBombaLimite or 0);
            									end;
            								end;
            								
            								if sheet.GExplosivoQT ~= nil then
            									if sheet.GExplosivoQT >= sheet.GExplosivoLimite then
            										sheet.GExplosivoQT = tonumber(sheet.GExplosivoLimite or 0);
            									end;
            								end;
            								
            								if sheet.VenenoQT ~= nil then
            									if sheet.VenenoQT >= sheet.VenenoLimite then
            										sheet.VenenoQT = tonumber(sheet.VenenoLimite or 0);
            									end;					
            								end;
            								
            								if sheet.BandagemQT ~= nil then					
            									if sheet.BandagemQT >= sheet.BandagemLimite then
            										sheet.BandagemQT = tonumber(sheet.BandagemLimite or 0);
            									end;
            								end;
            								
            								if sheet.BombaFumacaQT ~= nil then
            									if sheet.BombaFumacaQT >= sheet.BombaFumacaLimite then
            										sheet.BombaFumacaQT = tonumber(sheet.BombaFumacaLimite or 0);
            									end;
            								end;
            							end;
        end, obj);

    obj._e_event92 = obj.button32:addEventListener("onClick",
        function (_)
            self.POPPergaminho1:show();
        end, obj);

    obj._e_event93 = obj.button33:addEventListener("onClick",
        function (_)
            Pergaminho1()
        end, obj);

    obj._e_event94 = obj.button34:addEventListener("onClick",
        function (_)
            self.POPPergaminho2:show();
        end, obj);

    obj._e_event95 = obj.button35:addEventListener("onClick",
        function (_)
            Pergaminho2()
        end, obj);

    obj._e_event96 = obj.button36:addEventListener("onClick",
        function (_)
            self.POPPergaminho3:show();
        end, obj);

    obj._e_event97 = obj.button37:addEventListener("onClick",
        function (_)
            Pergaminho3()
        end, obj);

    obj._e_event98 = obj.button38:addEventListener("onClick",
        function (_)
            self.POPDiverso:show();
        end, obj);

    obj._e_event99 = obj.button39:addEventListener("onClick",
        function (_)
            local mesaDoPersonagem = rrpg.getMesaDe(sheet);									
            										sheet.AcertoNinTotal = tonumber(sheet.AcertoNinTotal) or 0;	
            										
            										mesaDoPersonagem.chat:rolarDados("1d100", "[§K3]Tentativa da Habilidade do Estilo de Combate",
            										function (rolado)
            											if sheet.AcertoNinTotal >= rolado.resultado then
            												mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. sheet.DEDC);
            												
            												if sheet.DTipo == 'Tai'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'Nin'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'Gen'then
            													if sheet.CRGenTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'Elemental'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'DanoArmado'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'M/Tai'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'M/Nin'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'M/Gen'then
            													if sheet.CRGenTotal >= rolado.resultado then
            															mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'M/Elemental'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'M/DA'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'Nulo' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'Kunai' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'Shuriken' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'Shuriken Fuuma' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'Kunai Gigante' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'Senbon' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'Papel Bomba' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'Ginso Explosivo' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'Veneno' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            												
            												if sheet.DTipo == 'Bandagem' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (sheet.DIntensidade * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. sheet.DIntensidade .. "[§K3] »");
            													end;
            												end;
            
            												if 	self.edtGM21.checked then
            													if sheet.TipoOutro == 'Chacra' then
            														sheet.OutrosAtual = (tonumber(sheet.ChakraAtual) or 0) - (tonumber(sheet.DCustoReal) or 0);
            														sheet.BDChakra = sheet.OutrosAtual;
            														sheet.ChakraAtual = sheet.OutrosAtual;
            													end;
            												
            													if sheet.TipoOutro == 'Outros' then
            														sheet.OutrosAtual = (tonumber(sheet.BDOutro) or 0) - (tonumber(sheet.DCustoReal) or 0);
            														sheet.BDOutro = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if sheet.TipoOutro == 'Reiatsu' then
            														sheet.OutrosAtual = (tonumber(sheet.BDReiatsu) or 0) - (tonumber(sheet.DCustoReal) or 0);
            														sheet.BDReiatsu = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if sheet.TipoOutro == 'Chacra Biju' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraBiju) or 0) - (tonumber(sheet.DCustoReal) or 0);
            														sheet.BDChakraBiju = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if sheet.TipoOutro == 'Chacra Branco' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraBranco) or 0) - (tonumber(sheet.DCustoReal) or 0);
            														sheet.BDChakraBranco = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if sheet.TipoOutro == 'Chacra Preto' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraPreto) or 0) - (tonumber(sheet.DCustoReal) or 0);
            														sheet.BDChakraPreto = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if sheet.TipoOutro == 'Hadou' then
            														sheet.OutrosAtual = (tonumber(sheet.BDHadou) or 0) - (tonumber(sheet.DCustoReal) or 0);
            														sheet.BDHadou = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if sheet.TipoOutro == 'Hadou Negro' then
            														sheet.OutrosAtual = (tonumber(sheet.BDHadouNegro) or 0) - (tonumber(sheet.DCustoReal) or 0);
            														sheet.BDHadouNegro = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if sheet.TipoOutro == 'Chacra Natural' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraNatural) or 0) - (tonumber(sheet.DCustoReal) or 0);
            														sheet.BDChakraNatural = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if sheet.TipoOutro == 'Chacra Roxo' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraRoxo) or 0) - (tonumber(sheet.DCustoReal) or 0);
            														sheet.BDChakraRoxo = (tonumber(sheet.OutrosAtual) or 0);
            													end;		
            												else
            													if self.edtGM21.checked then
            														sheet.ChakraAtual = sheet.ChakraPlayerEDCEDC;
            													else
            														local mesa = Firecast.getMesaDe(sheet);
            														local DChakraPlayer = mesa.meuJogador:getBarValue(2);
            														sheet.DChakraPlayer = mesa.meuJogador:getBarValue(2);
            														sheet.DChakraPlayer = (tonumber(sheet.DChakraPlayer) or 0) - (tonumber(sheet.DCustoReal) or 0);
            														sheet.ChakraAtual = sheet.DChakraPlayer;
            														mesa.meuJogador:requestSetBarValue(2, sheet.DChakraPlayer);	
            													end;
            												end;
            												
            												if sheet.DEnergiaCusto > 0 then
            														if self.edtGM21.checked == true then
            															local mesa = Firecast.getMesaDe(sheet);
            															sheet.EnergiaAtual = (tonumber(sheet.EnergiaAtual) or 0) - (tonumber(sheet.DEnergiaCusto) or 0);
            														else			
            															local mesa = Firecast.getMesaDe(sheet);
            															local DEnergiaPlayer = mesa.meuJogador:getBarValue(4);
            															sheet.DEnergiaPlayer = mesa.meuJogador:getBarValue(4);
            															sheet.DEnergiaPlayer = (tonumber(sheet.DEnergiaPlayer) or 0) - (tonumber(sheet.DEnergiaCusto) or 0);
            															sheet.EnergiaAtual = sheet.DEnergiaPlayer;
            															mesa.meuJogador:requestSetBarValue(4, sheet.DEnergiaPlayer);
            														end;
            													end;
            											else
            												mesaDoPersonagem.chat:enviarMensagem("[§K4,0]TURURU, Me fudi [§I http://pa1.narvii.com/6742/00f3ec4e74b0e4abb78512441228015db2d794a9_00.gif]");
            											end;
            										end);
        end, obj);

    obj._e_event100 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.Sequenci1 == true then	   
            							   sheet.ChakraNatural = (tonumber(sheet.ChakraTotal / 2) or 0) + (tonumber(sheet.ChakraNaturalBonus) or 0);
            							end;
        end, obj);

    obj._e_event101 = obj.button40:addEventListener("onClick",
        function (_)
            local minhaMesa = Firecast.getRoomOf(sheet);
            							local chat = minhaMesa.chat;  
            							chat:enviarMensagem(sheet.DEDC);
        end, obj);

    obj._e_event102 = obj.button41:addEventListener("onClick",
        function (_)
            self.EstilodeCombate:show();
        end, obj);

    obj._e_event103 = obj.button42:addEventListener("onClick",
        function (_)
            self.rclEstiloCombate:append();
        end, obj);

    obj._e_event104 = obj.rclEstiloCombate:addEventListener("onSelect",
        function (_)
            node = self.rclEstiloCombate.selectedNode; 
            																
            								self.dscEstiloCombate.node = node;                       
            								self.dscEstiloCombate.visible = (node ~= nil);	
            
            								if self.dscEstiloCombate.visible == true then
            									node.ATIVOEDC = node.ATIVOEDC or "false"
            									node.NomeEDC = node.NomeEDC or "";
            									node.LevelEDC = node.LevelEDC or 1;								
            									node.TaiEDC = node.TaiEDC or '0';
            									node.NinEDC = node.NinEDC or '0';
            									node.GenEDC = node.GenEDC or '0';
            									node.DAEDC = node.DAEDC or '0';
            									node.EleEDC = node.EleEDC or '0';
            									node.HPEDC = node.HPEDC or '0';
            									node.ChakraEDC = node.ChakraEDC or '0';
            									node.ReiatsuEDC = node.ReiatsuEDC or '0';
            									node.OutroEDC = node.OutroEDC or '0';								
            									node.ATEDC = node.ATEDC or '0';
            									node.ANEDC = node.ANEDC or '0';
            									node.AGEDC = node.AGEDC or '0';								
            									node.BloqEDC = node.BloqEDC or '0';
            									node.EsqEDC = node.EsqEDC or '0';								
            									node.CRTaiEDC = node.CRTaiEDC or '0';
            									node.CRNinEDC = node.CRNinEDC or '0';
            									node.CRGenEDC = node.CRGenEDC or '0';								
            									node.TurnosEDC = node.TurnosEDC or '0';
            									node.ChakraBijuEDC = node.ChakraBijuEDC or '0';
            									node.ChakraBrancoEDC = node.ChakraBrancoEDC or '0';								
            									node.ChakraPretoEDC = node.ChakraPretoEDC or '0';
            									node.HadouEDC = node.HadouEDC or '0';
            									node.HadouNegroEDC = node.HadouNegroEDC or '0';
            									node.EnergiaEDC = node.EnergiaEDC or '0';
            									node.ChakraNaturalEDC = node.ChakraNaturalEDC or '0';
            									node.ChakraRoxoEDC = node.ChakraRoxoEDC or '0';
            									node.ReducaoEDC = node.ReducaoEDC or '0';
            									node.ChakraNaturalTotalEDC = node.ChakraNaturalTotalEDC or '0';
            									node.RegeneradorEnergiaEDC = tonumber(node.RegeneradorEnergiaEDC or '10');
            									node.DEDC = node.DEDC or ' ';
            									
            									node.DanoEDC = (tonumber(node.DanoEDC) or 0);
            									node.DanoVerdadeiroEDC = (tonumber(node.DanoVerdadeiroEDC) or 0);
            									node.Tipo1EDC = (node.Tipo1EDC or "Nulo");
            									node.Tipo2EDC = (node.Tipo2EDC or "Nulo");
            									node.CustoEDC = (tonumber(node.CustoEDC) or 0);
            									node.CustoRealEDC = (tonumber(node.CustoRealEDC) or 0);
            									node.EnergiaCustoEDC = (tonumber(node.EnergiaCustoEDC) or 0);
            									node.IntensidadeEDC = (tonumber(node.IntensidadeEDC) or 0);	
            
            									FazCalculoTipoLista1Intensidade1EDC();
            									FazCalculoTipoLista1Intensidade2EDC();										
            									FazCalculodoCustoReal1EDC();
            									FazCalculodoCustoEnergia1EDC();
            									FazCalculoTipoListaIntensidadeTotal1EDC();
            									
            									if node.NomeEDC ~= nil then
            										if node.NomeEDC == sheet.NomeEDC then
            											node.NomeEdcFinal = node.PrefixoEDC .. node.NomeEDC;
            										else
            											node.NomeEdcFinal = "" .. node.NomeEDC;
            										end;
            									end;
            								end;
        end, obj);

    obj._e_event105 = obj.button43:addEventListener("onClick",
        function (_)
            NDB.deleteNode(self.dscEstiloCombate.node);
        end, obj);

    obj._e_event106 = obj.button44:addEventListener("onClick",
        function (_)
            node = self.rclEstiloCombate.selectedNode;
            										
            										local minhaMesa = Firecast.getRoomOf(sheet);
            										local chat = minhaMesa.chat;  
            										chat:enviarMensagem("[§K3] Passiva do Estilo de combate : " .. node.DEDC);
        end, obj);

    obj._e_event107 = obj.button45:addEventListener("onClick",
        function (_)
            node = self.rclEstiloCombate.selectedNode;							
            										local mesaDoPersonagem = rrpg.getMesaDe(sheet);									
            										sheet.AcertoNinTotal = tonumber(sheet.AcertoNinTotal) or 0;	
            										
            										mesaDoPersonagem.chat:rolarDados("1d100", "[§K3]Tentativa da Habilidade do Estilo de Combate",
            										function (rolado)											
            											if sheet.AcertoNinTotal >= rolado.resultado then
            												mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. node.DEDC);
            												
            												if node.Tipo1EDC == 'Tai'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'Nin'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'Gen'then
            													if sheet.CRGenTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'Elemental'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'DanoArmado'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'M/Tai'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'M/Nin'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'M/Gen'then
            													if sheet.CRGenTotal >= rolado.resultado then
            															mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'M/Elemental'then
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'M/DA'then
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'Nulo' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'Kunai' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'Shuriken' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'Shuriken Fuuma' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'Kunai Gigante' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'Senbon' then													
            													if sheet.CRTaiTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'Papel Bomba' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'Ginso Explosivo' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'Veneno' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            												
            												if node.Tipo1EDC == 'Bandagem' then													
            													if sheet.CRNinTotal >= rolado.resultado then
            														mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICAL :awyeah: « [§K4,0]" .. (node.IntensidadeEDC * 2) .. "[§K3] »");
            													else
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.IntensidadeEDC .. "[§K3] »");
            													end;
            												end;
            
            												if 	self.edtGM21.checked then
            													if sheet.TipoOutro == 'Chacra' then
            														sheet.OutrosAtual = (tonumber(sheet.ChakraAtual) or 0) - (tonumber(node.CustoEDC) or 0);
            														sheet.BDChakra = sheet.OutrosAtual;
            														sheet.ChakraAtual = sheet.OutrosAtual;
            													end;
            												
            													if sheet.TipoOutro == 'Outros' then
            														sheet.OutrosAtual = (tonumber(sheet.BDOutro) or 0) - (tonumber(node.CustoEDC) or 0);
            														sheet.BDOutro = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if sheet.TipoOutro == 'Reiatsu' then
            														sheet.OutrosAtual = (tonumber(sheet.BDReiatsu) or 0) - (tonumber(node.CustoEDC) or 0);
            														sheet.BDReiatsu = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if sheet.TipoOutro == 'Chacra Biju' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraBiju) or 0) - (tonumber(node.CustoEDC) or 0);
            														sheet.BDChakraBiju = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if sheet.TipoOutro == 'Chacra Branco' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraBranco) or 0) - (tonumber(node.CustoEDC) or 0);
            														sheet.BDChakraBranco = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if sheet.TipoOutro == 'Chacra Preto' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraPreto) or 0) - (tonumber(node.CustoEDC) or 0);
            														sheet.BDChakraPreto = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if sheet.TipoOutro == 'Hadou' then
            														sheet.OutrosAtual = (tonumber(sheet.BDHadou) or 0) - (tonumber(node.CustoEDC) or 0);
            														sheet.BDHadou = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if sheet.TipoOutro == 'Hadou Negro' then
            														sheet.OutrosAtual = (tonumber(sheet.BDHadouNegro) or 0) - (tonumber(node.CustoEDC) or 0);
            														sheet.BDHadouNegro = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if sheet.TipoOutro == 'Chacra Natural' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraNatural) or 0) - (tonumber(node.CustoEDC) or 0);
            														sheet.BDChakraNatural = (tonumber(sheet.OutrosAtual) or 0);
            													end;
            													
            													if sheet.TipoOutro == 'Chacra Roxo' then
            														sheet.OutrosAtual = (tonumber(sheet.BDChakraRoxo) or 0) - (tonumber(node.CustoEDC) or 0);
            														sheet.BDChakraRoxo = (tonumber(sheet.OutrosAtual) or 0);
            													end;		
            												else
            													if self.edtGM21.checked then
            														sheet.ChakraAtual = node.ChakraPlayerEDCEDC;
            													else
            														local mesa = Firecast.getMesaDe(sheet);
            														local ChakraPlayerEDC = mesa.meuJogador:getBarValue(2);
            														node.ChakraPlayerEDC = mesa.meuJogador:getBarValue(2);
            														node.ChakraPlayerEDC = (tonumber(node.ChakraPlayerEDC) or 0) - (tonumber(node.CustoEDC) or 0);
            														sheet.ChakraAtual = node.ChakraPlayerEDC;
            														mesa.meuJogador:requestSetBarValue(2, node.ChakraPlayerEDC);	
            													end;
            												end;
            												
            												if node.EnergiaCustoEDC > 0 then
            														if self.edtGM21.checked == true then
            															local mesa = Firecast.getMesaDe(sheet);
            															sheet.EnergiaAtual = (tonumber(sheet.EnergiaAtual) or 0) - (tonumber(node.EnergiaCustoEDC) or 0);
            														else			
            															local mesa = Firecast.getMesaDe(sheet);
            															local EnergiaPlayerEDC = mesa.meuJogador:getBarValue(4);
            															node.EnergiaPlayerEDC = mesa.meuJogador:getBarValue(4);
            															node.EnergiaPlayerEDC = (tonumber(node.EnergiaPlayerEDC) or 0) - (tonumber(node.EnergiaCustoEDC) or 0);
            															sheet.EnergiaAtual = node.EnergiaPlayerEDC;
            															mesa.meuJogador:requestSetBarValue(4, node.EnergiaPlayerEDC);
            														end;
            													end;
            											else
            												mesaDoPersonagem.chat:enviarMensagem("[§K4,0]TURURU, Me fudi [§I http://pa1.narvii.com/6742/00f3ec4e74b0e4abb78512441228015db2d794a9_00.gif]");
            											end;
            										end);
        end, obj);

    obj._e_event108 = obj.dataLink40:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            FazCalculoTipoLista1Intensidade1EDC();
            										FazCalculoTipoLista1Intensidade2EDC();	
            										FazCalculoTipoListaIntensidadeTotal1EDC();										
            										FazCalculodoCustoReal1EDC();
            										FazCalculodoCustoEnergia1EDC();
            										FazCalculoTipoListaIntensidadeTotal1EDC();
        end, obj);

    obj._e_event109 = obj.btnUpaEDC:addEventListener("onClick",
        function (_)
            TreinaEDC();
        end, obj);

    obj._e_event110 = obj.AtivaEDC:addEventListener("onClick",
        function (_)
            node = self.rclEstiloCombate.selectedNode;
            										self.dscEstiloCombate.node = node;									
            										
            										if node.ATIVOEDC == "true" then
            											node.ATIVOEDC = "false";
            											self.AtivaEDC.fontColor = "white"
            											self.AtivaEDC.text = "Ativar"
            											
            										else 
            											node.ATIVOEDC = "true";
            											self.AtivaEDC.fontColor = "red"
            											self.AtivaEDC.text = "ATIVO"
            											
            											SelecionaEDC();
            										end;
        end, obj);

    obj._e_event111 = obj.dataLink41:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            node = self.rclEstiloCombate.selectedNode;
            										self.dscEstiloCombate.node = node;									
            										
            										if self.dscEstiloCombate.visible == true then
            										node.PrefixoEDC = "(Ativo)";
            											if node.ATIVOEDC == "true" then
            												if node.NomeEDC ~= nil then
            													node.NomeEdcFinal = node.PrefixoEDC .. node.NomeEDC;
            												end;
            											elseif node.ATIVOEDC == "false" then
            												if node.NomeEDC ~= nil then
            													node.NomeEdcFinal = "" .. node.NomeEDC;
            												end;
            											end;
            										end;
        end, obj);

    obj._e_event112 = obj.dataLink42:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            node = self.rclEstiloCombate.selectedNode;
            										self.dscEstiloCombate.node = node;
            										
            										if node.DanoEDC ~= nil then 
            											if node.LevelEDC ~= nil then
            												node.DanoVerdadeiroEDC = (tonumber(node.DanoEDC) or 0) * 2^tonumber(node.LevelEDC - 1) or 1;
            											end;
            										end;
        end, obj);

    obj._e_event113 = obj.dataLink43:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            node = self.rclEstiloCombate.selectedNode;
            										self.dscEstiloCombate.node = node;
            										
            										VerificaIntermediariosParaTreinoEDC();
            										ImpoeLimitenoTreinoEDC();
            										MonstraProPlayerADificuldadeTreinoEDC();
        end, obj);

    obj._e_event114 = obj.button46:addEventListener("onClick",
        function (_)
            RolarTesteAtletismo()
        end, obj);

    obj._e_event115 = obj.button47:addEventListener("onClick",
        function (_)
            RolarTesteSabedoria()
        end, obj);

    obj._e_event116 = obj.button48:addEventListener("onClick",
        function (_)
            RolarTestePercepcao()
        end, obj);

    obj._e_event117 = obj.button49:addEventListener("onClick",
        function (_)
            RolarTesteAcrobacia()
        end, obj);

    obj._e_event118 = obj.button50:addEventListener("onClick",
        function (_)
            RolarTesteVigor()
        end, obj);

    obj._e_event119 = obj.dataLink44:addEventListener("onChange",
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
            								
            								if sheet.GraduacaoTreino =='Genin' then
            									sheet.GAtletismo = 1;
            									sheet.GRaciocinio = 1;
            									sheet.GPercepcao = 1;
            									sheet.GFurtividade = 1;
            									sheet.GVigor = 1;
            								end;
            								
            								if sheet.GraduacaoTreino =='Jounin' then
            									sheet.GAtletismo = 2;
            									sheet.GRaciocinio = 2;
            									sheet.GPercepcao = 2;
            									sheet.GFurtividade = 2;
            									sheet.GVigor = 2;
            								end;
            								
            								if sheet.GraduacaoTreino =='Anbu Nucleo' then
            									sheet.GAtletismo = 3;
            									sheet.GRaciocinio = 3;
            									sheet.GPercepcao = 3;
            									sheet.GFurtividade = 3;
            									sheet.GVigor = 3;
            								end;
            								
            								if sheet.GraduacaoTreino =='GDE' then
            									sheet.GAtletismo = 4;
            									sheet.GRaciocinio = 4;
            									sheet.GPercepcao = 4;
            									sheet.GFurtividade = 4;
            									sheet.GVigor = 4;
            								end;
            								
            								if sheet.GraduacaoTreino =='Kage' then
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
            
            								sheet.AtletismoTotal = tonumber(sheet.SAtletismo) + tonumber(sheet.GAtletismo) + tonumber(sheet.Atletismo) + (tonumber(sheet.CAtletismo) or 0);
            								sheet.RaciocinioTotal = tonumber(sheet.SRaciocinio) + tonumber(sheet.GRaciocinio) + tonumber(sheet.Raciocinio) + (tonumber(sheet.CRaciocineo) or 0);
            								sheet.PercepcaoTotal = tonumber(sheet.SPercepcao) + tonumber(sheet.GPercepcao) + tonumber(sheet.Percepcao) + (tonumber(sheet.CPercepcao) or 0);
            								sheet.FurtividadeTotal = tonumber(sheet.SFurtividade) + tonumber(sheet.GFurtividade) + tonumber(sheet.Furtividade) + (tonumber(sheet.CFurtividade) or 0);
            								sheet.VigorTotal = tonumber(sheet.SVigor) + tonumber(sheet.GVigor) + tonumber(sheet.Vigor) + (tonumber(sheet.CVigor) or 0);
            							end;
        end, obj);

    obj._e_event120 = obj.dataLink45:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.ControlaTransTotal.checked then
            								sheet.AcertoTaiTotal = (tonumber(sheet.GAcertoTai) or 0) + (tonumber(sheet.CAT) or 0) + (tonumber(sheet.DAcertoTai) or 0) + 60 + (tonumber(sheet.TATai) or 0) + (tonumber(sheet.AcessorioAcertoTai) or 0);
            								sheet.AcertoNinTotal = (tonumber(sheet.GAcertoNin) or 0) + (tonumber(sheet.CAN) or 0) + (tonumber(sheet.DAcertoNin) or 0) + 60 + (tonumber(sheet.TANin) or 0) + (tonumber(sheet.AcessorioAcertoNin) or 0);
            								sheet.AcertoGenTotal = (tonumber(sheet.GAcertoGen) or 0) + (tonumber(sheet.CAG) or 0) + (tonumber(sheet.DAcertoGen) or 0) + 60 + (tonumber(sheet.TAGen) or 0) + (tonumber(sheet.AcessorioAcertoGen) or 0);
            								sheet.EsquivaTotal = (tonumber(sheet.GEsquiva) or 0) + (tonumber(sheet.CEsq) or 0) + (tonumber(sheet.DEsquiva) or 0) + 30 + (tonumber(sheet.TEsquiva) or 0) + (tonumber(sheet.BandanaEsquiva) or 0);
            								sheet.BloqueioTotal = (tonumber(sheet.GBloqueio) or 0) + (tonumber(sheet.CBloq) or 0) + (tonumber(sheet.DBloqueio) or 0) + 40 + (tonumber(sheet.TBloqueio) or 0) + (tonumber(sheet.BandanaBloqueio) or 0);
            								sheet.CRTaiTotal = (tonumber(sheet.GCRTai) or 0) + (tonumber(sheet.CCRT) or 0) + (tonumber(sheet.DCriticalTai) or 0) + 1 + (tonumber(sheet.TCTai) or 0);
            								sheet.CRNinTotal = (tonumber(sheet.GCRNin) or 0) + (tonumber(sheet.CCRN) or 0) + (tonumber(sheet.DCriticalNin) or 0) + 1 + (tonumber(sheet.TCNin) or 0);
            								sheet.CRGenTotal = (tonumber(sheet.GCRGen) or 0) + (tonumber(sheet.CCRG) or 0) + (tonumber(sheet.DCriticalGen) or 0) + 1 + (tonumber(sheet.TCGen) or 0);
            								sheet.TurnoTotal = (tonumber(sheet.GTurno) or 0) + 1 + (tonumber(sheet.TTurnos) or 0) + (tonumber(sheet.DTurnos) or 0);
            								
            								if sheet.AcertoTaiTotal > 90 then
            									sheet.AcertoTaiTotal = 90;
            								end;
            								
            								if sheet.AcertoNinTotal > 90 then
            									sheet.AcertoNinTotal = 90;
            								end;
            								
            								if sheet.AcertoGenTotal > 90 then
            									sheet.AcertoGenTotal = 90;
            								end;	
            								
            								if sheet.EsquivaTotal > 90 then
            									sheet.EsquivaTotal = 90;
            								end;
            								
            								if sheet.BloqueioTotal > 90 then
            									sheet.BloqueioTotal = 90;
            								end;
            								
            								if sheet.CRTaiTotal > 50 then
            									sheet.CRTaiTotal = 50;
            								end;	
            								
            								if sheet.CRNinTotal > 50 then
            									sheet.CRNinTotal = 50;
            								end;
            								
            								if sheet.CRGenTotal > 50 then
            									sheet.CRGenTotal = 50;
            								end;
            								
            								if sheet.TurnoTotal > 10 then
            									sheet.TurnoTotal = 10;
            								end;						
            							else
            								sheet.AcertoTaiTotal = (tonumber(sheet.GAcertoTai) or 0) + (tonumber(sheet.CAT) or 0) + (tonumber(sheet.DAcertoTai) or 0) + 60 + (tonumber(sheet.AcessorioAcertoTai) or 0);
            								sheet.AcertoNinTotal = (tonumber(sheet.GAcertoNin) or 0) + (tonumber(sheet.CAN) or 0) + (tonumber(sheet.DAcertoNin) or 0) + 60 + (tonumber(sheet.AcessorioAcertoNin) or 0);
            								sheet.AcertoGenTotal = (tonumber(sheet.GAcertoGen) or 0) + (tonumber(sheet.CAG) or 0) + (tonumber(sheet.DAcertoGen) or 0) + 60 + (tonumber(sheet.AcessorioAcertoGen) or 0);
            								sheet.EsquivaTotal = (tonumber(sheet.GEsquiva) or 0) + (tonumber(sheet.CEsq) or 0) + (tonumber(sheet.DEsquiva) or 0) + 30 + (tonumber(sheet.BandanaEsquiva) or 0);
            								sheet.BloqueioTotal = (tonumber(sheet.GBloqueio) or 0) + (tonumber(sheet.CBloq) or 0) + (tonumber(sheet.DBloqueio) or 0) + 40 + (tonumber(sheet.BandanaBloqueio) or 0);
            								sheet.CRTaiTotal = (tonumber(sheet.GCRTai) or 0) + (tonumber(sheet.CCRT) or 0) + (tonumber(sheet.DCriticalTai) or 0) + 1;
            								sheet.CRNinTotal = (tonumber(sheet.GCRNin) or 0) + (tonumber(sheet.CCRN) or 0) + (tonumber(sheet.DCriticalNin) or 0) + 1;
            								sheet.CRGenTotal = (tonumber(sheet.GCRGen) or 0) + (tonumber(sheet.CCRG) or 0) + (tonumber(sheet.DCriticalGen) or 0) + 1;
            								sheet.TurnoTotal = (tonumber(sheet.GTurno) or 0) + 1 + (tonumber(sheet.DTurnos) or 0);
            								
            								if sheet.AcertoTaiTotal > 90 then
            									sheet.AcertoTaiTotal = 90;
            								end;
            								
            								if sheet.AcertoNinTotal > 90 then
            									sheet.AcertoNinTotal = 90;
            								end;
            								
            								if sheet.AcertoGenTotal > 90 then
            									sheet.AcertoGenTotal = 90;
            								end;	
            								
            								if sheet.EsquivaTotal > 90 then
            									sheet.EsquivaTotal = 90;
            								end;
            								
            								if sheet.BloqueioTotal > 90 then
            									sheet.BloqueioTotal = 90;
            								end;
            								
            								if sheet.CRTaiTotal > 50 then
            									sheet.CRTaiTotal = 50;
            								end;	
            								
            								if sheet.CRNinTotal > 50 then
            									sheet.CRNinTotal = 50;
            								end;
            								
            								if sheet.CRGenTotal > 50 then
            									sheet.CRGenTotal = 50;
            								end;
            								
            								if sheet.TurnoTotal > 10 then
            									sheet.TurnoTotal = 10;
            								end;								
            							end;
        end, obj);

    obj._e_event121 = obj.button51:addEventListener("onClick",
        function (_)
            self.PopHollowTransformation:show();
        end, obj);

    obj._e_event122 = obj.dataLink46:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            CalculaTransformacaoHollow();
        end, obj);

    obj._e_event123 = obj.button52:addEventListener("onClick",
        function (_)
            self.POPBijuTransformation:show();
        end, obj);

    obj._e_event124 = obj.dataLink47:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            CalculaTransformacaoBijuMode();
        end, obj);

    obj._e_event125 = obj.button53:addEventListener("onClick",
        function (_)
            local novoForm = GUI.newForm("frmKutchyoseFicha");
            							novoForm:setNodeObject(sheet);
            							novoForm:show();
        end, obj);

    obj._e_event126 = obj.button54:addEventListener("onClick",
        function (_)
            self.PopSenninTransformation:show();
        end, obj);

    obj._e_event127 = obj.dataLink48:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            CalculaTransformacaoSennin();
        end, obj);

    obj._e_event128 = obj.button55:addEventListener("onClick",
        function (_)
            self.POPArma:show();
        end, obj);

    obj._e_event129 = obj.button56:addEventListener("onClick",
        function (_)
            self.POPBandana:show();
        end, obj);

    obj._e_event130 = obj.button57:addEventListener("onClick",
        function (_)
            self.POPColete:show();
        end, obj);

    obj._e_event131 = obj.button58:addEventListener("onClick",
        function (_)
            self.POPAcessorio:show();
        end, obj);

    obj._e_event132 = obj.button59:addEventListener("onClick",
        function (_)
            self.POPBAG:show();
        end, obj);

    obj._e_event133 = obj.button60:addEventListener("onClick",
        function (_)
            self.rclListaDosItens4:append();
        end, obj);

    obj._e_event134 = obj.rclListaDosItens4:addEventListener("onSelect",
        function (_)
            local node = self.rclListaDosItens4.selectedNode; 
            								self.boxDetalhesDoItem.node = node;                       
            								self.boxDetalhesDoItem.visible = (node ~= nil);
        end, obj);

    obj._e_event135 = obj.button61:addEventListener("onClick",
        function (_)
            NDB.deleteNode(self.boxDetalhesDoItem.node);
        end, obj);

    obj._e_event136 = obj.dataLink49:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.cmbTipoBag.value == "1" then
            									sheet.KunaiLimite = 1;
            									sheet.ShurikenLimite = 1;
            									sheet.SFuumaLimite = 0;
            									sheet.KGiganteLimite = 0;
            									sheet.PBombaLimite  = 0;
            									sheet.GExplosivoLimite = 0;
            									sheet.VenenoLimite = 0;
            									sheet.BandagemLimite = 1;
            									sheet.BombaFumacaLimite = 0;
            									sheet.SemboLimite = 0;
            								end;
            								
            								if self.cmbTipoBag.value == "2" then
            									sheet.KunaiLimite = 4;
            									sheet.ShurikenLimite = 8;
            									sheet.SFuumaLimite = 0;
            									sheet.KGiganteLimite = 0;
            									sheet.PBombaLimite  = 2;
            									sheet.GExplosivoLimite = 0;
            									sheet.VenenoLimite = 1;
            									sheet.BandagemLimite = 1;
            									sheet.BombaFumacaLimite = 2;
            									sheet.SemboLimite = 0;
            								end;
            								
            								if self.cmbTipoBag.value == "3" then
            									sheet.KunaiLimite = 5;
            									sheet.ShurikenLimite = 8;
            									sheet.SFuumaLimite = 1;
            									sheet.KGiganteLimite = 1;
            									sheet.PBombaLimite  = 2;
            									sheet.GExplosivoLimite = 0;
            									sheet.VenenoLimite = 01
            									sheet.BandagemLimite = 2;
            									sheet.BombaFumacaLimite = 2;
            									sheet.SemboLimite = 0;
            								end;
            								
            								if self.cmbTipoBag.value == "4" then
            									sheet.KunaiLimite = 4;
            									sheet.ShurikenLimite = 8;
            									sheet.SFuumaLimite = 1;
            									sheet.KGiganteLimite = 1;
            									sheet.PBombaLimite  = 2;
            									sheet.GExplosivoLimite = 0;
            									sheet.VenenoLimite = 0;
            									sheet.BandagemLimite = 2;
            									sheet.BombaFumacaLimite = 3;
            									sheet.SemboLimite = 8;
            								end;
            								
            								if self.cmbTipoBag.value == "5" then
            									sheet.KunaiLimite = 6;
            									sheet.ShurikenLimite = 8;
            									sheet.SFuumaLimite = 2;
            									sheet.KGiganteLimite = 2;
            									sheet.PBombaLimite  = 1;
            									sheet.GExplosivoLimite = 1;
            									sheet.VenenoLimite = 1;
            									sheet.BandagemLimite = 2;
            									sheet.BombaFumacaLimite = 1;
            									sheet.SemboLimite = 10;
            								end;
            								
            								if self.cmbTipoBag.value == "6" then
            									sheet.KunaiLimite = 4;
            									sheet.ShurikenLimite = 6;
            									sheet.SFuumaLimite = 1;
            									sheet.KGiganteLimite = 1;
            									sheet.PBombaLimite  = 4;
            									sheet.GExplosivoLimite = 2;
            									sheet.VenenoLimite = 3;
            									sheet.BandagemLimite = 3;
            									sheet.BombaFumacaLimite = 3;
            									sheet.SemboLimite = 6;
            								end;
            								
            								if self.cmbTipoBag.value == "7" then
            									sheet.KunaiLimite = 0;
            									sheet.ShurikenLimite = 0;
            									sheet.SFuumaLimite = 0;
            									sheet.KGiganteLimite = 0;
            									sheet.PBombaLimite  = 0;
            									sheet.GExplosivoLimite = 0;
            									sheet.VenenoLimite = 0;
            									sheet.BandagemLimite = 0;
            									sheet.BombaFumacaLimite = 0;
            									sheet.SemboLimite = 0;
            								end;
            								
            								if self.cmbTipoBag.value == "7" then
            									sheet.KunaiLimite = 0;
            									sheet.ShurikenLimite = 0;
            									sheet.SFuumaLimite = 0;
            									sheet.KGiganteLimite = 0;
            									sheet.PBombaLimite  = 0;
            									sheet.GExplosivoLimite = 0;
            									sheet.VenenoLimite = 0;
            									sheet.BandagemLimite = 0;
            									sheet.BombaFumacaLimite = 0;
            									sheet.SemboLimite = 0;
            								end;
        end, obj);

    obj._e_event137 = obj.button62:addEventListener("onClick",
        function (_)
            TreinandoStatus()
        end, obj);

    obj._e_event138 = obj.dataLink50:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local BonusGanhoAnualGraduacao = nil
            							
            							if sheet.GraduacaoStatusSocial == 'Jounin' then
            								sheet.BonusGanhoAnualGraduacao = 2000;
            							end;
            							
            							if sheet.GraduacaoStatusSocial == 'Anbu' then
            								sheet.BonusGanhoAnualGraduacao = 3000;
            							end;
            							
            							if sheet.GraduacaoStatusSocial == 'AnbuNucleo' then
            								sheet.BonusGanhoAnualGraduacao = 4000;
            							end;
            							
            							if sheet.GraduacaoStatusSocial == 'Organização' then
            								sheet.BonusGanhoAnualGraduacao = 6000;
            							end;
            							
            							if sheet.GraduacaoStatusSocial == 'GDE' then
            								sheet.BonusGanhoAnualGraduacao = 8000;
            							end;						
            							
            							if sheet.GraduacaoStatusSocial == 'Concelheiro' then
            								sheet.BonusGanhoAnualGraduacao = 10000;
            							end;
            							
            							if sheet.GraduacaoStatusSocial == 'Kage' then
            								sheet.BonusGanhoAnualGraduacao = 20000;
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

    obj._e_event139 = obj.button63:addEventListener("onClick",
        function (_)
            self.POPTreino:show();
        end, obj);

    obj._e_event140 = obj.button64:addEventListener("onClick",
        function (_)
            self.rclListadeTreino:append();
        end, obj);

    obj._e_event141 = obj.rclListadeTreino:addEventListener("onSelect",
        function (_)
            local node = self.rclListadeTreino.selectedNode; 
            									self.dsbListadeTreino.node = node;                       
            									self.dsbListadeTreino.visible = (node ~= nil);
        end, obj);

    obj._e_event142 = obj.button65:addEventListener("onClick",
        function (_)
            NDB.deleteNode(self.dsbListadeTreino.node);
        end, obj);

    obj._e_event143 = obj.btnAprender:addEventListener("onClick",
        function (_)
            AprenderJutsu()
        end, obj);

    obj._e_event144 = obj.dataLink51:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            PreparaDifuculdadeAprenderRankE();
            											PreparaDifuculdadeAprenderRankD();
            											PreparaDifuculdadeAprenderRankC();
            											PreparaDifuculdadeAprenderRankB();
            											PreparaDifuculdadeAprenderRankA();
            											PreparaDifuculdadeAprenderRankS();
            											PreparaDifuculdadeAprenderRankSS();
            											PreparaDifuculdadeAprenderRankX();
            											PreparaDifuculdadeAprenderRankXPLUS();										
            											MonstraProPlayerADificuldadeAprendizado();
        end, obj);

    obj._e_event145 = obj.button66:addEventListener("onClick",
        function (_)
            self.POPAmizade:show();
        end, obj);

    obj._e_event146 = obj.button67:addEventListener("onClick",
        function (_)
            self.rclNivelAmizade:append();
        end, obj);

    obj._e_event147 = obj.rclNivelAmizade:addEventListener("onSelect",
        function (_)
            local node = self.rclNivelAmizade.selectedNode; 
            									self.dsbNivelAmizade.node = node;                       
            									self.dsbNivelAmizade.visible = (node ~= nil);
        end, obj);

    obj._e_event148 = obj.button68:addEventListener("onClick",
        function (_)
            NDB.deleteNode(self.dsbNivelAmizade.node);
        end, obj);

    obj._e_event149 = obj.dataLink52:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.Sequenci1 == true then
            				sheet.Inteligencia = sheet.Inteligencia + 1;
            				sheet.Inteligencia = sheet.Inteligencia - 1;	
            			end;
        end, obj);

    obj._e_event150 = obj.dataLink53:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.Sequenci1 == true then
            				if sheet.Forca >= 100000000 then
            					sheet.BloqueioReducaoForca = "50 %"
            				elseif sheet.Forca >= 10000000 then
            					sheet.BloqueioReducaoForca = "45 %"
            				elseif sheet.Forca >= 1000000 then
            					sheet.BloqueioReducaoForca = "40 %"
            				elseif sheet.Forca >= 100000 then
            					sheet.BloqueioReducaoForca = "35 %"
            				elseif sheet.Forca >= 10000then
            					sheet.BloqueioReducaoForca = "30 %"
            				elseif sheet.Forca >= 1000 then
            					sheet.BloqueioReducaoForca = "25 %"
            				else
            					sheet.BloqueioReducaoForca = "10 %"
            				end;				
            			end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event150);
        __o_rrpgObjs.removeEventListenerById(self._e_event149);
        __o_rrpgObjs.removeEventListenerById(self._e_event148);
        __o_rrpgObjs.removeEventListenerById(self._e_event147);
        __o_rrpgObjs.removeEventListenerById(self._e_event146);
        __o_rrpgObjs.removeEventListenerById(self._e_event145);
        __o_rrpgObjs.removeEventListenerById(self._e_event144);
        __o_rrpgObjs.removeEventListenerById(self._e_event143);
        __o_rrpgObjs.removeEventListenerById(self._e_event142);
        __o_rrpgObjs.removeEventListenerById(self._e_event141);
        __o_rrpgObjs.removeEventListenerById(self._e_event140);
        __o_rrpgObjs.removeEventListenerById(self._e_event139);
        __o_rrpgObjs.removeEventListenerById(self._e_event138);
        __o_rrpgObjs.removeEventListenerById(self._e_event137);
        __o_rrpgObjs.removeEventListenerById(self._e_event136);
        __o_rrpgObjs.removeEventListenerById(self._e_event135);
        __o_rrpgObjs.removeEventListenerById(self._e_event134);
        __o_rrpgObjs.removeEventListenerById(self._e_event133);
        __o_rrpgObjs.removeEventListenerById(self._e_event132);
        __o_rrpgObjs.removeEventListenerById(self._e_event131);
        __o_rrpgObjs.removeEventListenerById(self._e_event130);
        __o_rrpgObjs.removeEventListenerById(self._e_event129);
        __o_rrpgObjs.removeEventListenerById(self._e_event128);
        __o_rrpgObjs.removeEventListenerById(self._e_event127);
        __o_rrpgObjs.removeEventListenerById(self._e_event126);
        __o_rrpgObjs.removeEventListenerById(self._e_event125);
        __o_rrpgObjs.removeEventListenerById(self._e_event124);
        __o_rrpgObjs.removeEventListenerById(self._e_event123);
        __o_rrpgObjs.removeEventListenerById(self._e_event122);
        __o_rrpgObjs.removeEventListenerById(self._e_event121);
        __o_rrpgObjs.removeEventListenerById(self._e_event120);
        __o_rrpgObjs.removeEventListenerById(self._e_event119);
        __o_rrpgObjs.removeEventListenerById(self._e_event118);
        __o_rrpgObjs.removeEventListenerById(self._e_event117);
        __o_rrpgObjs.removeEventListenerById(self._e_event116);
        __o_rrpgObjs.removeEventListenerById(self._e_event115);
        __o_rrpgObjs.removeEventListenerById(self._e_event114);
        __o_rrpgObjs.removeEventListenerById(self._e_event113);
        __o_rrpgObjs.removeEventListenerById(self._e_event112);
        __o_rrpgObjs.removeEventListenerById(self._e_event111);
        __o_rrpgObjs.removeEventListenerById(self._e_event110);
        __o_rrpgObjs.removeEventListenerById(self._e_event109);
        __o_rrpgObjs.removeEventListenerById(self._e_event108);
        __o_rrpgObjs.removeEventListenerById(self._e_event107);
        __o_rrpgObjs.removeEventListenerById(self._e_event106);
        __o_rrpgObjs.removeEventListenerById(self._e_event105);
        __o_rrpgObjs.removeEventListenerById(self._e_event104);
        __o_rrpgObjs.removeEventListenerById(self._e_event103);
        __o_rrpgObjs.removeEventListenerById(self._e_event102);
        __o_rrpgObjs.removeEventListenerById(self._e_event101);
        __o_rrpgObjs.removeEventListenerById(self._e_event100);
        __o_rrpgObjs.removeEventListenerById(self._e_event99);
        __o_rrpgObjs.removeEventListenerById(self._e_event98);
        __o_rrpgObjs.removeEventListenerById(self._e_event97);
        __o_rrpgObjs.removeEventListenerById(self._e_event96);
        __o_rrpgObjs.removeEventListenerById(self._e_event95);
        __o_rrpgObjs.removeEventListenerById(self._e_event94);
        __o_rrpgObjs.removeEventListenerById(self._e_event93);
        __o_rrpgObjs.removeEventListenerById(self._e_event92);
        __o_rrpgObjs.removeEventListenerById(self._e_event91);
        __o_rrpgObjs.removeEventListenerById(self._e_event90);
        __o_rrpgObjs.removeEventListenerById(self._e_event89);
        __o_rrpgObjs.removeEventListenerById(self._e_event88);
        __o_rrpgObjs.removeEventListenerById(self._e_event87);
        __o_rrpgObjs.removeEventListenerById(self._e_event86);
        __o_rrpgObjs.removeEventListenerById(self._e_event85);
        __o_rrpgObjs.removeEventListenerById(self._e_event84);
        __o_rrpgObjs.removeEventListenerById(self._e_event83);
        __o_rrpgObjs.removeEventListenerById(self._e_event82);
        __o_rrpgObjs.removeEventListenerById(self._e_event81);
        __o_rrpgObjs.removeEventListenerById(self._e_event80);
        __o_rrpgObjs.removeEventListenerById(self._e_event79);
        __o_rrpgObjs.removeEventListenerById(self._e_event78);
        __o_rrpgObjs.removeEventListenerById(self._e_event77);
        __o_rrpgObjs.removeEventListenerById(self._e_event76);
        __o_rrpgObjs.removeEventListenerById(self._e_event75);
        __o_rrpgObjs.removeEventListenerById(self._e_event74);
        __o_rrpgObjs.removeEventListenerById(self._e_event73);
        __o_rrpgObjs.removeEventListenerById(self._e_event72);
        __o_rrpgObjs.removeEventListenerById(self._e_event71);
        __o_rrpgObjs.removeEventListenerById(self._e_event70);
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

        if self.edit273 ~= nil then self.edit273:destroy(); self.edit273 = nil; end;
        if self.edtGM1 ~= nil then self.edtGM1:destroy(); self.edtGM1 = nil; end;
        if self.label119 ~= nil then self.label119:destroy(); self.label119 = nil; end;
        if self.edit233 ~= nil then self.edit233:destroy(); self.edit233 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.edit226 ~= nil then self.edit226:destroy(); self.edit226 = nil; end;
        if self.BarraChakra ~= nil then self.BarraChakra:destroy(); self.BarraChakra = nil; end;
        if self.edit172 ~= nil then self.edit172:destroy(); self.edit172 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label97 ~= nil then self.label97:destroy(); self.label97 = nil; end;
        if self.button67 ~= nil then self.button67:destroy(); self.button67 = nil; end;
        if self.BarraOutros ~= nil then self.BarraOutros:destroy(); self.BarraOutros = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.label128 ~= nil then self.label128:destroy(); self.label128 = nil; end;
        if self.edit262 ~= nil then self.edit262:destroy(); self.edit262 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.comboBox20 ~= nil then self.comboBox20:destroy(); self.comboBox20 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.edit76 ~= nil then self.edit76:destroy(); self.edit76 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.label143 ~= nil then self.label143:destroy(); self.label143 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.comboBox22 ~= nil then self.comboBox22:destroy(); self.comboBox22 = nil; end;
        if self.edit82 ~= nil then self.edit82:destroy(); self.edit82 = nil; end;
        if self.btnDiminuiHP ~= nil then self.btnDiminuiHP:destroy(); self.btnDiminuiHP = nil; end;
        if self.button35 ~= nil then self.button35:destroy(); self.button35 = nil; end;
        if self.edit366 ~= nil then self.edit366:destroy(); self.edit366 = nil; end;
        if self.Exp ~= nil then self.Exp:destroy(); self.Exp = nil; end;
        if self.transformation ~= nil then self.transformation:destroy(); self.transformation = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.POPFavorito ~= nil then self.POPFavorito:destroy(); self.POPFavorito = nil; end;
        if self.label125 ~= nil then self.label125:destroy(); self.label125 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.POPPB ~= nil then self.POPPB:destroy(); self.POPPB = nil; end;
        if self.POPArma ~= nil then self.POPArma:destroy(); self.POPArma = nil; end;
        if self.PopTransformationTotal ~= nil then self.PopTransformationTotal:destroy(); self.PopTransformationTotal = nil; end;
        if self.POPDiverso ~= nil then self.POPDiverso:destroy(); self.POPDiverso = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.comboBox10 ~= nil then self.comboBox10:destroy(); self.comboBox10 = nil; end;
        if self.edit156 ~= nil then self.edit156:destroy(); self.edit156 = nil; end;
        if self.textEditor15 ~= nil then self.textEditor15:destroy(); self.textEditor15 = nil; end;
        if self.edit267 ~= nil then self.edit267:destroy(); self.edit267 = nil; end;
        if self.image11 ~= nil then self.image11:destroy(); self.image11 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.button21 ~= nil then self.button21:destroy(); self.button21 = nil; end;
        if self.edit312 ~= nil then self.edit312:destroy(); self.edit312 = nil; end;
        if self.edit115 ~= nil then self.edit115:destroy(); self.edit115 = nil; end;
        if self.edit400 ~= nil then self.edit400:destroy(); self.edit400 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.comboBox11 ~= nil then self.comboBox11:destroy(); self.comboBox11 = nil; end;
        if self.edit214 ~= nil then self.edit214:destroy(); self.edit214 = nil; end;
        if self.GanhoporTreino ~= nil then self.GanhoporTreino:destroy(); self.GanhoporTreino = nil; end;
        if self.edit339 ~= nil then self.edit339:destroy(); self.edit339 = nil; end;
        if self.edit260 ~= nil then self.edit260:destroy(); self.edit260 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.edit159 ~= nil then self.edit159:destroy(); self.edit159 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.ControlaTrans ~= nil then self.ControlaTrans:destroy(); self.ControlaTrans = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.edit404 ~= nil then self.edit404:destroy(); self.edit404 = nil; end;
        if self.edit235 ~= nil then self.edit235:destroy(); self.edit235 = nil; end;
        if self.button66 ~= nil then self.button66:destroy(); self.button66 = nil; end;
        if self.POPBandana ~= nil then self.POPBandana:destroy(); self.POPBandana = nil; end;
        if self.edit347 ~= nil then self.edit347:destroy(); self.edit347 = nil; end;
        if self.edit343 ~= nil then self.edit343:destroy(); self.edit343 = nil; end;
        if self.edit129 ~= nil then self.edit129:destroy(); self.edit129 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.edit142 ~= nil then self.edit142:destroy(); self.edit142 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.EstilodeCombate ~= nil then self.EstilodeCombate:destroy(); self.EstilodeCombate = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.edit251 ~= nil then self.edit251:destroy(); self.edit251 = nil; end;
        if self.LabNpc ~= nil then self.LabNpc:destroy(); self.LabNpc = nil; end;
        if self.label111 ~= nil then self.label111:destroy(); self.label111 = nil; end;
        if self.edit304 ~= nil then self.edit304:destroy(); self.edit304 = nil; end;
        if self.image10 ~= nil then self.image10:destroy(); self.image10 = nil; end;
        if self.button45 ~= nil then self.button45:destroy(); self.button45 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.edit182 ~= nil then self.edit182:destroy(); self.edit182 = nil; end;
        if self.edit309 ~= nil then self.edit309:destroy(); self.edit309 = nil; end;
        if self.label116 ~= nil then self.label116:destroy(); self.label116 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.image37 ~= nil then self.image37:destroy(); self.image37 = nil; end;
        if self.edtGM41 ~= nil then self.edtGM41:destroy(); self.edtGM41 = nil; end;
        if self.edit369 ~= nil then self.edit369:destroy(); self.edit369 = nil; end;
        if self.label139 ~= nil then self.label139:destroy(); self.label139 = nil; end;
        if self.edit176 ~= nil then self.edit176:destroy(); self.edit176 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.button44 ~= nil then self.button44:destroy(); self.button44 = nil; end;
        if self.dscEstiloCombate ~= nil then self.dscEstiloCombate:destroy(); self.dscEstiloCombate = nil; end;
        if self.ControlaTransHollow ~= nil then self.ControlaTransHollow:destroy(); self.ControlaTransHollow = nil; end;
        if self.edit221 ~= nil then self.edit221:destroy(); self.edit221 = nil; end;
        if self.edtGM45 ~= nil then self.edtGM45:destroy(); self.edtGM45 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.edit258 ~= nil then self.edit258:destroy(); self.edit258 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.edit348 ~= nil then self.edit348:destroy(); self.edit348 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edtGM49 ~= nil then self.edtGM49:destroy(); self.edtGM49 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.edtGM5 ~= nil then self.edtGM5:destroy(); self.edtGM5 = nil; end;
        if self.comboBox15 ~= nil then self.comboBox15:destroy(); self.comboBox15 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.label115 ~= nil then self.label115:destroy(); self.label115 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.edit161 ~= nil then self.edit161:destroy(); self.edit161 = nil; end;
        if self.edit241 ~= nil then self.edit241:destroy(); self.edit241 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.PopTransformation ~= nil then self.PopTransformation:destroy(); self.PopTransformation = nil; end;
        if self.edit247 ~= nil then self.edit247:destroy(); self.edit247 = nil; end;
        if self.edit134 ~= nil then self.edit134:destroy(); self.edit134 = nil; end;
        if self.image34 ~= nil then self.image34:destroy(); self.image34 = nil; end;
        if self.edtGM40 ~= nil then self.edtGM40:destroy(); self.edtGM40 = nil; end;
        if self.label142 ~= nil then self.label142:destroy(); self.label142 = nil; end;
        if self.dataLink40 ~= nil then self.dataLink40:destroy(); self.dataLink40 = nil; end;
        if self.edtNPCChacra ~= nil then self.edtNPCChacra:destroy(); self.edtNPCChacra = nil; end;
        if self.button68 ~= nil then self.button68:destroy(); self.button68 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.button28 ~= nil then self.button28:destroy(); self.button28 = nil; end;
        if self.edit163 ~= nil then self.edit163:destroy(); self.edit163 = nil; end;
        if self.scrollBox7 ~= nil then self.scrollBox7:destroy(); self.scrollBox7 = nil; end;
        if self.edit360 ~= nil then self.edit360:destroy(); self.edit360 = nil; end;
        if self.edit373 ~= nil then self.edit373:destroy(); self.edit373 = nil; end;
        if self.edtGM46 ~= nil then self.edtGM46:destroy(); self.edtGM46 = nil; end;
        if self.edit332 ~= nil then self.edit332:destroy(); self.edit332 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.scrollBox11 ~= nil then self.scrollBox11:destroy(); self.scrollBox11 = nil; end;
        if self.btnDiminuiEnergia ~= nil then self.btnDiminuiEnergia:destroy(); self.btnDiminuiEnergia = nil; end;
        if self.radioButton3 ~= nil then self.radioButton3:destroy(); self.radioButton3 = nil; end;
        if self.edit92 ~= nil then self.edit92:destroy(); self.edit92 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.comboBox6 ~= nil then self.comboBox6:destroy(); self.comboBox6 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.edit313 ~= nil then self.edit313:destroy(); self.edit313 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.edit287 ~= nil then self.edit287:destroy(); self.edit287 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.edit358 ~= nil then self.edit358:destroy(); self.edit358 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.edit249 ~= nil then self.edit249:destroy(); self.edit249 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit252 ~= nil then self.edit252:destroy(); self.edit252 = nil; end;
        if self.rclNivelAmizade ~= nil then self.rclNivelAmizade:destroy(); self.rclNivelAmizade = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit128 ~= nil then self.edit128:destroy(); self.edit128 = nil; end;
        if self.edit355 ~= nil then self.edit355:destroy(); self.edit355 = nil; end;
        if self.edtGM21 ~= nil then self.edtGM21:destroy(); self.edtGM21 = nil; end;
        if self.image35 ~= nil then self.image35:destroy(); self.image35 = nil; end;
        if self.label129 ~= nil then self.label129:destroy(); self.label129 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.edit187 ~= nil then self.edit187:destroy(); self.edit187 = nil; end;
        if self.edit127 ~= nil then self.edit127:destroy(); self.edit127 = nil; end;
        if self.edit218 ~= nil then self.edit218:destroy(); self.edit218 = nil; end;
        if self.edit165 ~= nil then self.edit165:destroy(); self.edit165 = nil; end;
        if self.edit208 ~= nil then self.edit208:destroy(); self.edit208 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.button32 ~= nil then self.button32:destroy(); self.button32 = nil; end;
        if self.rclListadeJutsus3 ~= nil then self.rclListadeJutsus3:destroy(); self.rclListadeJutsus3 = nil; end;
        if self.edit145 ~= nil then self.edit145:destroy(); self.edit145 = nil; end;
        if self.edtGM39 ~= nil then self.edtGM39:destroy(); self.edtGM39 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.button27 ~= nil then self.button27:destroy(); self.button27 = nil; end;
        if self.label133 ~= nil then self.label133:destroy(); self.label133 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.button24 ~= nil then self.button24:destroy(); self.button24 = nil; end;
        if self.edit302 ~= nil then self.edit302:destroy(); self.edit302 = nil; end;
        if self.edit390 ~= nil then self.edit390:destroy(); self.edit390 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.edit250 ~= nil then self.edit250:destroy(); self.edit250 = nil; end;
        if self.btnDiminuiChacra ~= nil then self.btnDiminuiChacra:destroy(); self.btnDiminuiChacra = nil; end;
        if self.edit133 ~= nil then self.edit133:destroy(); self.edit133 = nil; end;
        if self.edit261 ~= nil then self.edit261:destroy(); self.edit261 = nil; end;
        if self.edit308 ~= nil then self.edit308:destroy(); self.edit308 = nil; end;
        if self.edit300 ~= nil then self.edit300:destroy(); self.edit300 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.cmbTipoOutro ~= nil then self.cmbTipoOutro:destroy(); self.cmbTipoOutro = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.edit225 ~= nil then self.edit225:destroy(); self.edit225 = nil; end;
        if self.edit81 ~= nil then self.edit81:destroy(); self.edit81 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.btnUparJutsu3 ~= nil then self.btnUparJutsu3:destroy(); self.btnUparJutsu3 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.edit166 ~= nil then self.edit166:destroy(); self.edit166 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.scrollBox10 ~= nil then self.scrollBox10:destroy(); self.scrollBox10 = nil; end;
        if self.edit184 ~= nil then self.edit184:destroy(); self.edit184 = nil; end;
        if self.edit398 ~= nil then self.edit398:destroy(); self.edit398 = nil; end;
        if self.textEditor10 ~= nil then self.textEditor10:destroy(); self.textEditor10 = nil; end;
        if self.edit389 ~= nil then self.edit389:destroy(); self.edit389 = nil; end;
        if self.POPBAG ~= nil then self.POPBAG:destroy(); self.POPBAG = nil; end;
        if self.edit314 ~= nil then self.edit314:destroy(); self.edit314 = nil; end;
        if self.radioButton2 ~= nil then self.radioButton2:destroy(); self.radioButton2 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.edit170 ~= nil then self.edit170:destroy(); self.edit170 = nil; end;
        if self.GanhoAnual ~= nil then self.GanhoAnual:destroy(); self.GanhoAnual = nil; end;
        if self.edit87 ~= nil then self.edit87:destroy(); self.edit87 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.edit113 ~= nil then self.edit113:destroy(); self.edit113 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.button54 ~= nil then self.button54:destroy(); self.button54 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.edit211 ~= nil then self.edit211:destroy(); self.edit211 = nil; end;
        if self.PopHollowTransformation ~= nil then self.PopHollowTransformation:destroy(); self.PopHollowTransformation = nil; end;
        if self.edit393 ~= nil then self.edit393:destroy(); self.edit393 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.button18 ~= nil then self.button18:destroy(); self.button18 = nil; end;
        if self.frmScript ~= nil then self.frmScript:destroy(); self.frmScript = nil; end;
        if self.image15 ~= nil then self.image15:destroy(); self.image15 = nil; end;
        if self.edit154 ~= nil then self.edit154:destroy(); self.edit154 = nil; end;
        if self.POPBijuTransformation ~= nil then self.POPBijuTransformation:destroy(); self.POPBijuTransformation = nil; end;
        if self.edit278 ~= nil then self.edit278:destroy(); self.edit278 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.edit281 ~= nil then self.edit281:destroy(); self.edit281 = nil; end;
        if self.edit135 ~= nil then self.edit135:destroy(); self.edit135 = nil; end;
        if self.edit191 ~= nil then self.edit191:destroy(); self.edit191 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.image44 ~= nil then self.image44:destroy(); self.image44 = nil; end;
        if self.edit359 ~= nil then self.edit359:destroy(); self.edit359 = nil; end;
        if self.transformationDisable ~= nil then self.transformationDisable:destroy(); self.transformationDisable = nil; end;
        if self.edit215 ~= nil then self.edit215:destroy(); self.edit215 = nil; end;
        if self.label110 ~= nil then self.label110:destroy(); self.label110 = nil; end;
        if self.edit222 ~= nil then self.edit222:destroy(); self.edit222 = nil; end;
        if self.edit333 ~= nil then self.edit333:destroy(); self.edit333 = nil; end;
        if self.edit310 ~= nil then self.edit310:destroy(); self.edit310 = nil; end;
        if self.dataLink28 ~= nil then self.dataLink28:destroy(); self.dataLink28 = nil; end;
        if self.label138 ~= nil then self.label138:destroy(); self.label138 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.edit71 ~= nil then self.edit71:destroy(); self.edit71 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.button47 ~= nil then self.button47:destroy(); self.button47 = nil; end;
        if self.edit85 ~= nil then self.edit85:destroy(); self.edit85 = nil; end;
        if self.edit201 ~= nil then self.edit201:destroy(); self.edit201 = nil; end;
        if self.button56 ~= nil then self.button56:destroy(); self.button56 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.edit192 ~= nil then self.edit192:destroy(); self.edit192 = nil; end;
        if self.label144 ~= nil then self.label144:destroy(); self.label144 = nil; end;
        if self.edit246 ~= nil then self.edit246:destroy(); self.edit246 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.button20 ~= nil then self.button20:destroy(); self.button20 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.edit382 ~= nil then self.edit382:destroy(); self.edit382 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.edit298 ~= nil then self.edit298:destroy(); self.edit298 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.edit169 ~= nil then self.edit169:destroy(); self.edit169 = nil; end;
        if self.edit244 ~= nil then self.edit244:destroy(); self.edit244 = nil; end;
        if self.label140 ~= nil then self.label140:destroy(); self.label140 = nil; end;
        if self.edit120 ~= nil then self.edit120:destroy(); self.edit120 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.dataLink53 ~= nil then self.dataLink53:destroy(); self.dataLink53 = nil; end;
        if self.edtGM35 ~= nil then self.edtGM35:destroy(); self.edtGM35 = nil; end;
        if self.edit114 ~= nil then self.edit114:destroy(); self.edit114 = nil; end;
        if self.edit397 ~= nil then self.edit397:destroy(); self.edit397 = nil; end;
        if self.label105 ~= nil then self.label105:destroy(); self.label105 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit204 ~= nil then self.edit204:destroy(); self.edit204 = nil; end;
        if self.POPJutsu ~= nil then self.POPJutsu:destroy(); self.POPJutsu = nil; end;
        if self.label145 ~= nil then self.label145:destroy(); self.label145 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.edit365 ~= nil then self.edit365:destroy(); self.edit365 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.edit72 ~= nil then self.edit72:destroy(); self.edit72 = nil; end;
        if self.cmbRakporTreino3 ~= nil then self.cmbRakporTreino3:destroy(); self.cmbRakporTreino3 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.label131 ~= nil then self.label131:destroy(); self.label131 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.edit391 ~= nil then self.edit391:destroy(); self.edit391 = nil; end;
        if self.cmbRakporTreino2 ~= nil then self.cmbRakporTreino2:destroy(); self.cmbRakporTreino2 = nil; end;
        if self.button29 ~= nil then self.button29:destroy(); self.button29 = nil; end;
        if self.edit158 ~= nil then self.edit158:destroy(); self.edit158 = nil; end;
        if self.edit256 ~= nil then self.edit256:destroy(); self.edit256 = nil; end;
        if self.image29 ~= nil then self.image29:destroy(); self.image29 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit79 ~= nil then self.edit79:destroy(); self.edit79 = nil; end;
        if self.comboBox14 ~= nil then self.comboBox14:destroy(); self.comboBox14 = nil; end;
        if self.edit283 ~= nil then self.edit283:destroy(); self.edit283 = nil; end;
        if self.label101 ~= nil then self.label101:destroy(); self.label101 = nil; end;
        if self.edit353 ~= nil then self.edit353:destroy(); self.edit353 = nil; end;
        if self.image27 ~= nil then self.image27:destroy(); self.image27 = nil; end;
        if self.edit402 ~= nil then self.edit402:destroy(); self.edit402 = nil; end;
        if self.edit291 ~= nil then self.edit291:destroy(); self.edit291 = nil; end;
        if self.edit101 ~= nil then self.edit101:destroy(); self.edit101 = nil; end;
        if self.edit349 ~= nil then self.edit349:destroy(); self.edit349 = nil; end;
        if self.image28 ~= nil then self.image28:destroy(); self.image28 = nil; end;
        if self.edit264 ~= nil then self.edit264:destroy(); self.edit264 = nil; end;
        if self.edit231 ~= nil then self.edit231:destroy(); self.edit231 = nil; end;
        if self.edit164 ~= nil then self.edit164:destroy(); self.edit164 = nil; end;
        if self.edit326 ~= nil then self.edit326:destroy(); self.edit326 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.dsbListadeTreino ~= nil then self.dsbListadeTreino:destroy(); self.dsbListadeTreino = nil; end;
        if self.radioButton1 ~= nil then self.radioButton1:destroy(); self.radioButton1 = nil; end;
        if self.btnVida ~= nil then self.btnVida:destroy(); self.btnVida = nil; end;
        if self.edit338 ~= nil then self.edit338:destroy(); self.edit338 = nil; end;
        if self.edit139 ~= nil then self.edit139:destroy(); self.edit139 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.edit354 ~= nil then self.edit354:destroy(); self.edit354 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label120 ~= nil then self.label120:destroy(); self.label120 = nil; end;
        if self.edtGM20 ~= nil then self.edtGM20:destroy(); self.edtGM20 = nil; end;
        if self.edit293 ~= nil then self.edit293:destroy(); self.edit293 = nil; end;
        if self.image47 ~= nil then self.image47:destroy(); self.image47 = nil; end;
        if self.edit86 ~= nil then self.edit86:destroy(); self.edit86 = nil; end;
        if self.edit143 ~= nil then self.edit143:destroy(); self.edit143 = nil; end;
        if self.edit105 ~= nil then self.edit105:destroy(); self.edit105 = nil; end;
        if self.btnAumentaHP ~= nil then self.btnAumentaHP:destroy(); self.btnAumentaHP = nil; end;
        if self.edit239 ~= nil then self.edit239:destroy(); self.edit239 = nil; end;
        if self.edit361 ~= nil then self.edit361:destroy(); self.edit361 = nil; end;
        if self.ControlaTransTotal ~= nil then self.ControlaTransTotal:destroy(); self.ControlaTransTotal = nil; end;
        if self.ListaJutsus3 ~= nil then self.ListaJutsus3:destroy(); self.ListaJutsus3 = nil; end;
        if self.edit230 ~= nil then self.edit230:destroy(); self.edit230 = nil; end;
        if self.edit90 ~= nil then self.edit90:destroy(); self.edit90 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.label117 ~= nil then self.label117:destroy(); self.label117 = nil; end;
        if self.edit329 ~= nil then self.edit329:destroy(); self.edit329 = nil; end;
        if self.edit311 ~= nil then self.edit311:destroy(); self.edit311 = nil; end;
        if self.edit140 ~= nil then self.edit140:destroy(); self.edit140 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit270 ~= nil then self.edit270:destroy(); self.edit270 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.edit371 ~= nil then self.edit371:destroy(); self.edit371 = nil; end;
        if self.dataLink31 ~= nil then self.dataLink31:destroy(); self.dataLink31 = nil; end;
        if self.image19 ~= nil then self.image19:destroy(); self.image19 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.edit276 ~= nil then self.edit276:destroy(); self.edit276 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.edit288 ~= nil then self.edit288:destroy(); self.edit288 = nil; end;
        if self.scrollBox8 ~= nil then self.scrollBox8:destroy(); self.scrollBox8 = nil; end;
        if self.label98 ~= nil then self.label98:destroy(); self.label98 = nil; end;
        if self.edit207 ~= nil then self.edit207:destroy(); self.edit207 = nil; end;
        if self.edit384 ~= nil then self.edit384:destroy(); self.edit384 = nil; end;
        if self.rclListadeJutsus1 ~= nil then self.rclListadeJutsus1:destroy(); self.rclListadeJutsus1 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit80 ~= nil then self.edit80:destroy(); self.edit80 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.edit341 ~= nil then self.edit341:destroy(); self.edit341 = nil; end;
        if self.image14 ~= nil then self.image14:destroy(); self.image14 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.edit186 ~= nil then self.edit186:destroy(); self.edit186 = nil; end;
        if self.label112 ~= nil then self.label112:destroy(); self.label112 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.edit147 ~= nil then self.edit147:destroy(); self.edit147 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.image46 ~= nil then self.image46:destroy(); self.image46 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.edit342 ~= nil then self.edit342:destroy(); self.edit342 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.edit340 ~= nil then self.edit340:destroy(); self.edit340 = nil; end;
        if self.edit277 ~= nil then self.edit277:destroy(); self.edit277 = nil; end;
        if self.edit88 ~= nil then self.edit88:destroy(); self.edit88 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.edtGM38 ~= nil then self.edtGM38:destroy(); self.edtGM38 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.button63 ~= nil then self.button63:destroy(); self.button63 = nil; end;
        if self.edit368 ~= nil then self.edit368:destroy(); self.edit368 = nil; end;
        if self.POPPergaminho3 ~= nil then self.POPPergaminho3:destroy(); self.POPPergaminho3 = nil; end;
        if self.edit350 ~= nil then self.edit350:destroy(); self.edit350 = nil; end;
        if self.POPTreino ~= nil then self.POPTreino:destroy(); self.POPTreino = nil; end;
        if self.edtGM44 ~= nil then self.edtGM44:destroy(); self.edtGM44 = nil; end;
        if self.cmbRakporTreino ~= nil then self.cmbRakporTreino:destroy(); self.cmbRakporTreino = nil; end;
        if self.button22 ~= nil then self.button22:destroy(); self.button22 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.edit180 ~= nil then self.edit180:destroy(); self.edit180 = nil; end;
        if self.comboBox16 ~= nil then self.comboBox16:destroy(); self.comboBox16 = nil; end;
        if self.edtNPCOutros ~= nil then self.edtNPCOutros:destroy(); self.edtNPCOutros = nil; end;
        if self.image16 ~= nil then self.image16:destroy(); self.image16 = nil; end;
        if self.edtGM34 ~= nil then self.edtGM34:destroy(); self.edtGM34 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.edit107 ~= nil then self.edit107:destroy(); self.edit107 = nil; end;
        if self.edit237 ~= nil then self.edit237:destroy(); self.edit237 = nil; end;
        if self.button42 ~= nil then self.button42:destroy(); self.button42 = nil; end;
        if self.edit321 ~= nil then self.edit321:destroy(); self.edit321 = nil; end;
        if self.edit403 ~= nil then self.edit403:destroy(); self.edit403 = nil; end;
        if self.edit331 ~= nil then self.edit331:destroy(); self.edit331 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.label137 ~= nil then self.label137:destroy(); self.label137 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.edit141 ~= nil then self.edit141:destroy(); self.edit141 = nil; end;
        if self.comboBox5 ~= nil then self.comboBox5:destroy(); self.comboBox5 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.comboBox19 ~= nil then self.comboBox19:destroy(); self.comboBox19 = nil; end;
        if self.edit275 ~= nil then self.edit275:destroy(); self.edit275 = nil; end;
        if self.label100 ~= nil then self.label100:destroy(); self.label100 = nil; end;
        if self.edit374 ~= nil then self.edit374:destroy(); self.edit374 = nil; end;
        if self.button23 ~= nil then self.button23:destroy(); self.button23 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.BarraHP ~= nil then self.BarraHP:destroy(); self.BarraHP = nil; end;
        if self.edit144 ~= nil then self.edit144:destroy(); self.edit144 = nil; end;
        if self.edit346 ~= nil then self.edit346:destroy(); self.edit346 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.BarraEnergia ~= nil then self.BarraEnergia:destroy(); self.BarraEnergia = nil; end;
        if self.edit376 ~= nil then self.edit376:destroy(); self.edit376 = nil; end;
        if self.edit399 ~= nil then self.edit399:destroy(); self.edit399 = nil; end;
        if self.edit219 ~= nil then self.edit219:destroy(); self.edit219 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.button17 ~= nil then self.button17:destroy(); self.button17 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.edit190 ~= nil then self.edit190:destroy(); self.edit190 = nil; end;
        if self.edit395 ~= nil then self.edit395:destroy(); self.edit395 = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.edit345 ~= nil then self.edit345:destroy(); self.edit345 = nil; end;
        if self.edit352 ~= nil then self.edit352:destroy(); self.edit352 = nil; end;
        if self.textEditor14 ~= nil then self.textEditor14:destroy(); self.textEditor14 = nil; end;
        if self.edit257 ~= nil then self.edit257:destroy(); self.edit257 = nil; end;
        if self.edit380 ~= nil then self.edit380:destroy(); self.edit380 = nil; end;
        if self.edit259 ~= nil then self.edit259:destroy(); self.edit259 = nil; end;
        if self.edtGM42 ~= nil then self.edtGM42:destroy(); self.edtGM42 = nil; end;
        if self.button61 ~= nil then self.button61:destroy(); self.button61 = nil; end;
        if self.edit202 ~= nil then self.edit202:destroy(); self.edit202 = nil; end;
        if self.edit303 ~= nil then self.edit303:destroy(); self.edit303 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.edit268 ~= nil then self.edit268:destroy(); self.edit268 = nil; end;
        if self.edit248 ~= nil then self.edit248:destroy(); self.edit248 = nil; end;
        if self.edtGM6 ~= nil then self.edtGM6:destroy(); self.edtGM6 = nil; end;
        if self.image23 ~= nil then self.image23:destroy(); self.image23 = nil; end;
        if self.image31 ~= nil then self.image31:destroy(); self.image31 = nil; end;
        if self.ListaJutsus ~= nil then self.ListaJutsus:destroy(); self.ListaJutsus = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.edit282 ~= nil then self.edit282:destroy(); self.edit282 = nil; end;
        if self.dataLink46 ~= nil then self.dataLink46:destroy(); self.dataLink46 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.edtGM30 ~= nil then self.edtGM30:destroy(); self.edtGM30 = nil; end;
        if self.edit136 ~= nil then self.edit136:destroy(); self.edit136 = nil; end;
        if self.dataLink50 ~= nil then self.dataLink50:destroy(); self.dataLink50 = nil; end;
        if self.edit212 ~= nil then self.edit212:destroy(); self.edit212 = nil; end;
        if self.edit173 ~= nil then self.edit173:destroy(); self.edit173 = nil; end;
        if self.label134 ~= nil then self.label134:destroy(); self.label134 = nil; end;
        if self.edit394 ~= nil then self.edit394:destroy(); self.edit394 = nil; end;
        if self.edit213 ~= nil then self.edit213:destroy(); self.edit213 = nil; end;
        if self.edit396 ~= nil then self.edit396:destroy(); self.edit396 = nil; end;
        if self.edit150 ~= nil then self.edit150:destroy(); self.edit150 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.btnUpaEDC ~= nil then self.btnUpaEDC:destroy(); self.btnUpaEDC = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.edit195 ~= nil then self.edit195:destroy(); self.edit195 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.edit334 ~= nil then self.edit334:destroy(); self.edit334 = nil; end;
        if self.label96 ~= nil then self.label96:destroy(); self.label96 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.edit296 ~= nil then self.edit296:destroy(); self.edit296 = nil; end;
        if self.POPCALCULO ~= nil then self.POPCALCULO:destroy(); self.POPCALCULO = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
        if self.label148 ~= nil then self.label148:destroy(); self.label148 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.edit265 ~= nil then self.edit265:destroy(); self.edit265 = nil; end;
        if self.edit236 ~= nil then self.edit236:destroy(); self.edit236 = nil; end;
        if self.edit386 ~= nil then self.edit386:destroy(); self.edit386 = nil; end;
        if self.label122 ~= nil then self.label122:destroy(); self.label122 = nil; end;
        if self.ControlaTransSennin ~= nil then self.ControlaTransSennin:destroy(); self.ControlaTransSennin = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.label146 ~= nil then self.label146:destroy(); self.label146 = nil; end;
        if self.edit297 ~= nil then self.edit297:destroy(); self.edit297 = nil; end;
        if self.button40 ~= nil then self.button40:destroy(); self.button40 = nil; end;
        if self.btnChacra ~= nil then self.btnChacra:destroy(); self.btnChacra = nil; end;
        if self.dataLink44 ~= nil then self.dataLink44:destroy(); self.dataLink44 = nil; end;
        if self.edit183 ~= nil then self.edit183:destroy(); self.edit183 = nil; end;
        if self.edtNPCHP ~= nil then self.edtNPCHP:destroy(); self.edtNPCHP = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.scrollBox9 ~= nil then self.scrollBox9:destroy(); self.scrollBox9 = nil; end;
        if self.label99 ~= nil then self.label99:destroy(); self.label99 = nil; end;
        if self.label107 ~= nil then self.label107:destroy(); self.label107 = nil; end;
        if self.edit245 ~= nil then self.edit245:destroy(); self.edit245 = nil; end;
        if self.button37 ~= nil then self.button37:destroy(); self.button37 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.button36 ~= nil then self.button36:destroy(); self.button36 = nil; end;
        if self.dsbNivelAmizade ~= nil then self.dsbNivelAmizade:destroy(); self.dsbNivelAmizade = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.edit255 ~= nil then self.edit255:destroy(); self.edit255 = nil; end;
        if self.edit228 ~= nil then self.edit228:destroy(); self.edit228 = nil; end;
        if self.rclListadeTreino ~= nil then self.rclListadeTreino:destroy(); self.rclListadeTreino = nil; end;
        if self.btnAumentaEnergia ~= nil then self.btnAumentaEnergia:destroy(); self.btnAumentaEnergia = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.edit205 ~= nil then self.edit205:destroy(); self.edit205 = nil; end;
        if self.button26 ~= nil then self.button26:destroy(); self.button26 = nil; end;
        if self.edit116 ~= nil then self.edit116:destroy(); self.edit116 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.edit77 ~= nil then self.edit77:destroy(); self.edit77 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.edit196 ~= nil then self.edit196:destroy(); self.edit196 = nil; end;
        if self.edit316 ~= nil then self.edit316:destroy(); self.edit316 = nil; end;
        if self.image42 ~= nil then self.image42:destroy(); self.image42 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.edit220 ~= nil then self.edit220:destroy(); self.edit220 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.image45 ~= nil then self.image45:destroy(); self.image45 = nil; end;
        if self.label109 ~= nil then self.label109:destroy(); self.label109 = nil; end;
        if self.label106 ~= nil then self.label106:destroy(); self.label106 = nil; end;
        if self.label103 ~= nil then self.label103:destroy(); self.label103 = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.cmbTipoBag ~= nil then self.cmbTipoBag:destroy(); self.cmbTipoBag = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.edit295 ~= nil then self.edit295:destroy(); self.edit295 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.image41 ~= nil then self.image41:destroy(); self.image41 = nil; end;
        if self.edit99 ~= nil then self.edit99:destroy(); self.edit99 = nil; end;
        if self.edtGM43 ~= nil then self.edtGM43:destroy(); self.edtGM43 = nil; end;
        if self.edit385 ~= nil then self.edit385:destroy(); self.edit385 = nil; end;
        if self.edit401 ~= nil then self.edit401:destroy(); self.edit401 = nil; end;
        if self.edtGM37 ~= nil then self.edtGM37:destroy(); self.edtGM37 = nil; end;
        if self.edit324 ~= nil then self.edit324:destroy(); self.edit324 = nil; end;
        if self.button43 ~= nil then self.button43:destroy(); self.button43 = nil; end;
        if self.edit362 ~= nil then self.edit362:destroy(); self.edit362 = nil; end;
        if self.label147 ~= nil then self.label147:destroy(); self.label147 = nil; end;
        if self.edit124 ~= nil then self.edit124:destroy(); self.edit124 = nil; end;
        if self.edit157 ~= nil then self.edit157:destroy(); self.edit157 = nil; end;
        if self.edit301 ~= nil then self.edit301:destroy(); self.edit301 = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.edit284 ~= nil then self.edit284:destroy(); self.edit284 = nil; end;
        if self.edit83 ~= nil then self.edit83:destroy(); self.edit83 = nil; end;
        if self.button33 ~= nil then self.button33:destroy(); self.button33 = nil; end;
        if self.btnAprender ~= nil then self.btnAprender:destroy(); self.btnAprender = nil; end;
        if self.edit223 ~= nil then self.edit223:destroy(); self.edit223 = nil; end;
        if self.edit330 ~= nil then self.edit330:destroy(); self.edit330 = nil; end;
        if self.edit74 ~= nil then self.edit74:destroy(); self.edit74 = nil; end;
        if self.edit388 ~= nil then self.edit388:destroy(); self.edit388 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.label127 ~= nil then self.label127:destroy(); self.label127 = nil; end;
        if self.POPKunai ~= nil then self.POPKunai:destroy(); self.POPKunai = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.image32 ~= nil then self.image32:destroy(); self.image32 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.edit121 ~= nil then self.edit121:destroy(); self.edit121 = nil; end;
        if self.POPAmizade ~= nil then self.POPAmizade:destroy(); self.POPAmizade = nil; end;
        if self.button51 ~= nil then self.button51:destroy(); self.button51 = nil; end;
        if self.edit263 ~= nil then self.edit263:destroy(); self.edit263 = nil; end;
        if self.edit199 ~= nil then self.edit199:destroy(); self.edit199 = nil; end;
        if self.edit285 ~= nil then self.edit285:destroy(); self.edit285 = nil; end;
        if self.dataLink47 ~= nil then self.dataLink47:destroy(); self.dataLink47 = nil; end;
        if self.scrollBox12 ~= nil then self.scrollBox12:destroy(); self.scrollBox12 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.image38 ~= nil then self.image38:destroy(); self.image38 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.button39 ~= nil then self.button39:destroy(); self.button39 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.edit336 ~= nil then self.edit336:destroy(); self.edit336 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.edit100 ~= nil then self.edit100:destroy(); self.edit100 = nil; end;
        if self.edtGM28 ~= nil then self.edtGM28:destroy(); self.edtGM28 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.edit84 ~= nil then self.edit84:destroy(); self.edit84 = nil; end;
        if self.image25 ~= nil then self.image25:destroy(); self.image25 = nil; end;
        if self.button30 ~= nil then self.button30:destroy(); self.button30 = nil; end;
        if self.edit224 ~= nil then self.edit224:destroy(); self.edit224 = nil; end;
        if self.edit274 ~= nil then self.edit274:destroy(); self.edit274 = nil; end;
        if self.edit289 ~= nil then self.edit289:destroy(); self.edit289 = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.textEditor16 ~= nil then self.textEditor16:destroy(); self.textEditor16 = nil; end;
        if self.edit198 ~= nil then self.edit198:destroy(); self.edit198 = nil; end;
        if self.textEditor11 ~= nil then self.textEditor11:destroy(); self.textEditor11 = nil; end;
        if self.edit200 ~= nil then self.edit200:destroy(); self.edit200 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.edit103 ~= nil then self.edit103:destroy(); self.edit103 = nil; end;
        if self.image12 ~= nil then self.image12:destroy(); self.image12 = nil; end;
        if self.dataLink45 ~= nil then self.dataLink45:destroy(); self.dataLink45 = nil; end;
        if self.edit370 ~= nil then self.edit370:destroy(); self.edit370 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.dataLink43 ~= nil then self.dataLink43:destroy(); self.dataLink43 = nil; end;
        if self.edit378 ~= nil then self.edit378:destroy(); self.edit378 = nil; end;
        if self.button55 ~= nil then self.button55:destroy(); self.button55 = nil; end;
        if self.ListaJutsus2 ~= nil then self.ListaJutsus2:destroy(); self.ListaJutsus2 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit387 ~= nil then self.edit387:destroy(); self.edit387 = nil; end;
        if self.edit181 ~= nil then self.edit181:destroy(); self.edit181 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.btnUparJutsu1 ~= nil then self.btnUparJutsu1:destroy(); self.btnUparJutsu1 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit96 ~= nil then self.edit96:destroy(); self.edit96 = nil; end;
        if self.edit323 ~= nil then self.edit323:destroy(); self.edit323 = nil; end;
        if self.comboBox7 ~= nil then self.comboBox7:destroy(); self.comboBox7 = nil; end;
        if self.edit109 ~= nil then self.edit109:destroy(); self.edit109 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.edit328 ~= nil then self.edit328:destroy(); self.edit328 = nil; end;
        if self.edit174 ~= nil then self.edit174:destroy(); self.edit174 = nil; end;
        if self.comboBox21 ~= nil then self.comboBox21:destroy(); self.comboBox21 = nil; end;
        if self.edit152 ~= nil then self.edit152:destroy(); self.edit152 = nil; end;
        if self.image26 ~= nil then self.image26:destroy(); self.image26 = nil; end;
        if self.label102 ~= nil then self.label102:destroy(); self.label102 = nil; end;
        if self.edit93 ~= nil then self.edit93:destroy(); self.edit93 = nil; end;
        if self.edit126 ~= nil then self.edit126:destroy(); self.edit126 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.label132 ~= nil then self.label132:destroy(); self.label132 = nil; end;
        if self.edit177 ~= nil then self.edit177:destroy(); self.edit177 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.button58 ~= nil then self.button58:destroy(); self.button58 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.POPKekegenkai ~= nil then self.POPKekegenkai:destroy(); self.POPKekegenkai = nil; end;
        if self.btnDiminuiOutros ~= nil then self.btnDiminuiOutros:destroy(); self.btnDiminuiOutros = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.button41 ~= nil then self.button41:destroy(); self.button41 = nil; end;
        if self.edit269 ~= nil then self.edit269:destroy(); self.edit269 = nil; end;
        if self.edit363 ~= nil then self.edit363:destroy(); self.edit363 = nil; end;
        if self.edit155 ~= nil then self.edit155:destroy(); self.edit155 = nil; end;
        if self.edit162 ~= nil then self.edit162:destroy(); self.edit162 = nil; end;
        if self.edit194 ~= nil then self.edit194:destroy(); self.edit194 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.edit299 ~= nil then self.edit299:destroy(); self.edit299 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.edit240 ~= nil then self.edit240:destroy(); self.edit240 = nil; end;
        if self.label108 ~= nil then self.label108:destroy(); self.label108 = nil; end;
        if self.edit379 ~= nil then self.edit379:destroy(); self.edit379 = nil; end;
        if self.edit138 ~= nil then self.edit138:destroy(); self.edit138 = nil; end;
        if self.button31 ~= nil then self.button31:destroy(); self.button31 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.edit209 ~= nil then self.edit209:destroy(); self.edit209 = nil; end;
        if self.edit118 ~= nil then self.edit118:destroy(); self.edit118 = nil; end;
        if self.image36 ~= nil then self.image36:destroy(); self.image36 = nil; end;
        if self.button65 ~= nil then self.button65:destroy(); self.button65 = nil; end;
        if self.edit254 ~= nil then self.edit254:destroy(); self.edit254 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.label124 ~= nil then self.label124:destroy(); self.label124 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.btnEnergia ~= nil then self.btnEnergia:destroy(); self.btnEnergia = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.image13 ~= nil then self.image13:destroy(); self.image13 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.edit102 ~= nil then self.edit102:destroy(); self.edit102 = nil; end;
        if self.dataLink38 ~= nil then self.dataLink38:destroy(); self.dataLink38 = nil; end;
        if self.edit178 ~= nil then self.edit178:destroy(); self.edit178 = nil; end;
        if self.btnOutros ~= nil then self.btnOutros:destroy(); self.btnOutros = nil; end;
        if self.edtGM4 ~= nil then self.edtGM4:destroy(); self.edtGM4 = nil; end;
        if self.edit117 ~= nil then self.edit117:destroy(); self.edit117 = nil; end;
        if self.edit286 ~= nil then self.edit286:destroy(); self.edit286 = nil; end;
        if self.edit216 ~= nil then self.edit216:destroy(); self.edit216 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.edit305 ~= nil then self.edit305:destroy(); self.edit305 = nil; end;
        if self.edit73 ~= nil then self.edit73:destroy(); self.edit73 = nil; end;
        if self.edit98 ~= nil then self.edit98:destroy(); self.edit98 = nil; end;
        if self.comboBox17 ~= nil then self.comboBox17:destroy(); self.comboBox17 = nil; end;
        if self.edit320 ~= nil then self.edit320:destroy(); self.edit320 = nil; end;
        if self.image30 ~= nil then self.image30:destroy(); self.image30 = nil; end;
        if self.dataLink42 ~= nil then self.dataLink42:destroy(); self.dataLink42 = nil; end;
        if self.POPPergaminho2 ~= nil then self.POPPergaminho2:destroy(); self.POPPergaminho2 = nil; end;
        if self.edit185 ~= nil then self.edit185:destroy(); self.edit185 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.edit335 ~= nil then self.edit335:destroy(); self.edit335 = nil; end;
        if self.comboBox13 ~= nil then self.comboBox13:destroy(); self.comboBox13 = nil; end;
        if self.edit111 ~= nil then self.edit111:destroy(); self.edit111 = nil; end;
        if self.button64 ~= nil then self.button64:destroy(); self.button64 = nil; end;
        if self.scrollBox13 ~= nil then self.scrollBox13:destroy(); self.scrollBox13 = nil; end;
        if self.image20 ~= nil then self.image20:destroy(); self.image20 = nil; end;
        if self.AtivaEDC ~= nil then self.AtivaEDC:destroy(); self.AtivaEDC = nil; end;
        if self.edit243 ~= nil then self.edit243:destroy(); self.edit243 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.edit367 ~= nil then self.edit367:destroy(); self.edit367 = nil; end;
        if self.edit153 ~= nil then self.edit153:destroy(); self.edit153 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.edit131 ~= nil then self.edit131:destroy(); self.edit131 = nil; end;
        if self.button38 ~= nil then self.button38:destroy(); self.button38 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.button52 ~= nil then self.button52:destroy(); self.button52 = nil; end;
        if self.button53 ~= nil then self.button53:destroy(); self.button53 = nil; end;
        if self.edit149 ~= nil then self.edit149:destroy(); self.edit149 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.comboBox3 ~= nil then self.comboBox3:destroy(); self.comboBox3 = nil; end;
        if self.edit160 ~= nil then self.edit160:destroy(); self.edit160 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit112 ~= nil then self.edit112:destroy(); self.edit112 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.edtGM19 ~= nil then self.edtGM19:destroy(); self.edtGM19 = nil; end;
        if self.edit210 ~= nil then self.edit210:destroy(); self.edit210 = nil; end;
        if self.comboBox12 ~= nil then self.comboBox12:destroy(); self.comboBox12 = nil; end;
        if self.label126 ~= nil then self.label126:destroy(); self.label126 = nil; end;
        if self.edit279 ~= nil then self.edit279:destroy(); self.edit279 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.edit357 ~= nil then self.edit357:destroy(); self.edit357 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.edit294 ~= nil then self.edit294:destroy(); self.edit294 = nil; end;
        if self.edit179 ~= nil then self.edit179:destroy(); self.edit179 = nil; end;
        if self.ControlaTransMantoBiju ~= nil then self.ControlaTransMantoBiju:destroy(); self.ControlaTransMantoBiju = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit106 ~= nil then self.edit106:destroy(); self.edit106 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit125 ~= nil then self.edit125:destroy(); self.edit125 = nil; end;
        if self.edit381 ~= nil then self.edit381:destroy(); self.edit381 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.edit175 ~= nil then self.edit175:destroy(); self.edit175 = nil; end;
        if self.button59 ~= nil then self.button59:destroy(); self.button59 = nil; end;
        if self.edit315 ~= nil then self.edit315:destroy(); self.edit315 = nil; end;
        if self.edtGM47 ~= nil then self.edtGM47:destroy(); self.edtGM47 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.edit242 ~= nil then self.edit242:destroy(); self.edit242 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.comboBox18 ~= nil then self.comboBox18:destroy(); self.comboBox18 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.POPPergaminho1 ~= nil then self.POPPergaminho1:destroy(); self.POPPergaminho1 = nil; end;
        if self.label114 ~= nil then self.label114:destroy(); self.label114 = nil; end;
        if self.edit253 ~= nil then self.edit253:destroy(); self.edit253 = nil; end;
        if self.edit266 ~= nil then self.edit266:destroy(); self.edit266 = nil; end;
        if self.label135 ~= nil then self.label135:destroy(); self.label135 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.edit327 ~= nil then self.edit327:destroy(); self.edit327 = nil; end;
        if self.edit319 ~= nil then self.edit319:destroy(); self.edit319 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.edtNPCEnergia ~= nil then self.edtNPCEnergia:destroy(); self.edtNPCEnergia = nil; end;
        if self.edit280 ~= nil then self.edit280:destroy(); self.edit280 = nil; end;
        if self.POPColete ~= nil then self.POPColete:destroy(); self.POPColete = nil; end;
        if self.edit122 ~= nil then self.edit122:destroy(); self.edit122 = nil; end;
        if self.dataLink49 ~= nil then self.dataLink49:destroy(); self.dataLink49 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.edit110 ~= nil then self.edit110:destroy(); self.edit110 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.textEditor12 ~= nil then self.textEditor12:destroy(); self.textEditor12 = nil; end;
        if self.edit325 ~= nil then self.edit325:destroy(); self.edit325 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.edit123 ~= nil then self.edit123:destroy(); self.edit123 = nil; end;
        if self.edit322 ~= nil then self.edit322:destroy(); self.edit322 = nil; end;
        if self.image22 ~= nil then self.image22:destroy(); self.image22 = nil; end;
        if self.label130 ~= nil then self.label130:destroy(); self.label130 = nil; end;
        if self.button60 ~= nil then self.button60:destroy(); self.button60 = nil; end;
        if self.edit206 ~= nil then self.edit206:destroy(); self.edit206 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.dataLink37 ~= nil then self.dataLink37:destroy(); self.dataLink37 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.edit137 ~= nil then self.edit137:destroy(); self.edit137 = nil; end;
        if self.edit146 ~= nil then self.edit146:destroy(); self.edit146 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.edtGM32 ~= nil then self.edtGM32:destroy(); self.edtGM32 = nil; end;
        if self.edit238 ~= nil then self.edit238:destroy(); self.edit238 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.MsgMesaEnvia ~= nil then self.MsgMesaEnvia:destroy(); self.MsgMesaEnvia = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.boxDetalhesDoItem ~= nil then self.boxDetalhesDoItem:destroy(); self.boxDetalhesDoItem = nil; end;
        if self.POPAcessorio ~= nil then self.POPAcessorio:destroy(); self.POPAcessorio = nil; end;
        if self.comboBox23 ~= nil then self.comboBox23:destroy(); self.comboBox23 = nil; end;
        if self.cmbRakporAprendizado ~= nil then self.cmbRakporAprendizado:destroy(); self.cmbRakporAprendizado = nil; end;
        if self.edit406 ~= nil then self.edit406:destroy(); self.edit406 = nil; end;
        if self.edit271 ~= nil then self.edit271:destroy(); self.edit271 = nil; end;
        if self.image18 ~= nil then self.image18:destroy(); self.image18 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.edit189 ~= nil then self.edit189:destroy(); self.edit189 = nil; end;
        if self.btnAumentaOutros ~= nil then self.btnAumentaOutros:destroy(); self.btnAumentaOutros = nil; end;
        if self.edit94 ~= nil then self.edit94:destroy(); self.edit94 = nil; end;
        if self.edit167 ~= nil then self.edit167:destroy(); self.edit167 = nil; end;
        if self.label123 ~= nil then self.label123:destroy(); self.label123 = nil; end;
        if self.button62 ~= nil then self.button62:destroy(); self.button62 = nil; end;
        if self.btnAumentaChacra ~= nil then self.btnAumentaChacra:destroy(); self.btnAumentaChacra = nil; end;
        if self.edit229 ~= nil then self.edit229:destroy(); self.edit229 = nil; end;
        if self.textEditor13 ~= nil then self.textEditor13:destroy(); self.textEditor13 = nil; end;
        if self.dataLink39 ~= nil then self.dataLink39:destroy(); self.dataLink39 = nil; end;
        if self.button49 ~= nil then self.button49:destroy(); self.button49 = nil; end;
        if self.edit104 ~= nil then self.edit104:destroy(); self.edit104 = nil; end;
        if self.label113 ~= nil then self.label113:destroy(); self.label113 = nil; end;
        if self.edtGM31 ~= nil then self.edtGM31:destroy(); self.edtGM31 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit108 ~= nil then self.edit108:destroy(); self.edit108 = nil; end;
        if self.edit95 ~= nil then self.edit95:destroy(); self.edit95 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.radioButton4 ~= nil then self.radioButton4:destroy(); self.radioButton4 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.edit171 ~= nil then self.edit171:destroy(); self.edit171 = nil; end;
        if self.comboBox4 ~= nil then self.comboBox4:destroy(); self.comboBox4 = nil; end;
        if self.edit351 ~= nil then self.edit351:destroy(); self.edit351 = nil; end;
        if self.edtGM48 ~= nil then self.edtGM48:destroy(); self.edtGM48 = nil; end;
        if self.edit97 ~= nil then self.edit97:destroy(); self.edit97 = nil; end;
        if self.image33 ~= nil then self.image33:destroy(); self.image33 = nil; end;
        if self.rclListaDosItens4 ~= nil then self.rclListaDosItens4:destroy(); self.rclListaDosItens4 = nil; end;
        if self.label121 ~= nil then self.label121:destroy(); self.label121 = nil; end;
        if self.edtGM27 ~= nil then self.edtGM27:destroy(); self.edtGM27 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.edit356 ~= nil then self.edit356:destroy(); self.edit356 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.edit344 ~= nil then self.edit344:destroy(); self.edit344 = nil; end;
        if self.image48 ~= nil then self.image48:destroy(); self.image48 = nil; end;
        if self.edit89 ~= nil then self.edit89:destroy(); self.edit89 = nil; end;
        if self.button34 ~= nil then self.button34:destroy(); self.button34 = nil; end;
        if self.edit317 ~= nil then self.edit317:destroy(); self.edit317 = nil; end;
        if self.label136 ~= nil then self.label136:destroy(); self.label136 = nil; end;
        if self.image39 ~= nil then self.image39:destroy(); self.image39 = nil; end;
        if self.edit318 ~= nil then self.edit318:destroy(); self.edit318 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.image24 ~= nil then self.image24:destroy(); self.image24 = nil; end;
        if self.dataLink41 ~= nil then self.dataLink41:destroy(); self.dataLink41 = nil; end;
        if self.edtGM36 ~= nil then self.edtGM36:destroy(); self.edtGM36 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.edit148 ~= nil then self.edit148:destroy(); self.edit148 = nil; end;
        if self.retanguloNPC ~= nil then self.retanguloNPC:destroy(); self.retanguloNPC = nil; end;
        if self.button50 ~= nil then self.button50:destroy(); self.button50 = nil; end;
        if self.rclEstiloCombate ~= nil then self.rclEstiloCombate:destroy(); self.rclEstiloCombate = nil; end;
        if self.button48 ~= nil then self.button48:destroy(); self.button48 = nil; end;
        if self.dataLink36 ~= nil then self.dataLink36:destroy(); self.dataLink36 = nil; end;
        if self.image40 ~= nil then self.image40:destroy(); self.image40 = nil; end;
        if self.edit405 ~= nil then self.edit405:destroy(); self.edit405 = nil; end;
        if self.edit364 ~= nil then self.edit364:destroy(); self.edit364 = nil; end;
        if self.edit232 ~= nil then self.edit232:destroy(); self.edit232 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.edit306 ~= nil then self.edit306:destroy(); self.edit306 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.edit217 ~= nil then self.edit217:destroy(); self.edit217 = nil; end;
        if self.edit234 ~= nil then self.edit234:destroy(); self.edit234 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.edit272 ~= nil then self.edit272:destroy(); self.edit272 = nil; end;
        if self.edit383 ~= nil then self.edit383:destroy(); self.edit383 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.button57 ~= nil then self.button57:destroy(); self.button57 = nil; end;
        if self.edit290 ~= nil then self.edit290:destroy(); self.edit290 = nil; end;
        if self.edit197 ~= nil then self.edit197:destroy(); self.edit197 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.edit307 ~= nil then self.edit307:destroy(); self.edit307 = nil; end;
        if self.btnUparJutsu2 ~= nil then self.btnUparJutsu2:destroy(); self.btnUparJutsu2 = nil; end;
        if self.label118 ~= nil then self.label118:destroy(); self.label118 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit75 ~= nil then self.edit75:destroy(); self.edit75 = nil; end;
        if self.edit193 ~= nil then self.edit193:destroy(); self.edit193 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.edit130 ~= nil then self.edit130:destroy(); self.edit130 = nil; end;
        if self.edit337 ~= nil then self.edit337:destroy(); self.edit337 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.edtGM33 ~= nil then self.edtGM33:destroy(); self.edtGM33 = nil; end;
        if self.dataLink52 ~= nil then self.dataLink52:destroy(); self.dataLink52 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.edtGM3 ~= nil then self.edtGM3:destroy(); self.edtGM3 = nil; end;
        if self.comboBox9 ~= nil then self.comboBox9:destroy(); self.comboBox9 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.image17 ~= nil then self.image17:destroy(); self.image17 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.edit151 ~= nil then self.edit151:destroy(); self.edit151 = nil; end;
        if self.edit203 ~= nil then self.edit203:destroy(); self.edit203 = nil; end;
        if self.rclListadeJutsus2 ~= nil then self.rclListadeJutsus2:destroy(); self.rclListadeJutsus2 = nil; end;
        if self.edit132 ~= nil then self.edit132:destroy(); self.edit132 = nil; end;
        if self.edit292 ~= nil then self.edit292:destroy(); self.edit292 = nil; end;
        if self.edit188 ~= nil then self.edit188:destroy(); self.edit188 = nil; end;
        if self.comboBox8 ~= nil then self.comboBox8:destroy(); self.comboBox8 = nil; end;
        if self.edit119 ~= nil then self.edit119:destroy(); self.edit119 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.button25 ~= nil then self.button25:destroy(); self.button25 = nil; end;
        if self.dataLink48 ~= nil then self.dataLink48:destroy(); self.dataLink48 = nil; end;
        if self.edit168 ~= nil then self.edit168:destroy(); self.edit168 = nil; end;
        if self.edit375 ~= nil then self.edit375:destroy(); self.edit375 = nil; end;
        if self.edit392 ~= nil then self.edit392:destroy(); self.edit392 = nil; end;
        if self.edtGM2 ~= nil then self.edtGM2:destroy(); self.edtGM2 = nil; end;
        if self.edit78 ~= nil then self.edit78:destroy(); self.edit78 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.label104 ~= nil then self.label104:destroy(); self.label104 = nil; end;
        if self.edit91 ~= nil then self.edit91:destroy(); self.edit91 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.edit372 ~= nil then self.edit372:destroy(); self.edit372 = nil; end;
        if self.edit377 ~= nil then self.edit377:destroy(); self.edit377 = nil; end;
        if self.button46 ~= nil then self.button46:destroy(); self.button46 = nil; end;
        if self.dataLink51 ~= nil then self.dataLink51:destroy(); self.dataLink51 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label141 ~= nil then self.label141:destroy(); self.label141 = nil; end;
        if self.button19 ~= nil then self.button19:destroy(); self.button19 = nil; end;
        if self.image43 ~= nil then self.image43:destroy(); self.image43 = nil; end;
        if self.edtGM29 ~= nil then self.edtGM29:destroy(); self.edtGM29 = nil; end;
        if self.PopSenninTransformation ~= nil then self.PopSenninTransformation:destroy(); self.PopSenninTransformation = nil; end;
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
