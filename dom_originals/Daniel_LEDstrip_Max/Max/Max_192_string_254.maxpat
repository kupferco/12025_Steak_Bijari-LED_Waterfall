{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 8
		}
,
		"rect" : [ 0.0, 44.0, 1280.0, 706.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 559.0, 32.0, 17.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 178.0, 454.0, 32.0, 15.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"orientation" : 2,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3023.0, 33.0, 18.0, 144.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-4",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 200.0, 160.0, 35.0, 17.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 206.0, 131.0, 27.0, 17.0 ],
					"text" : "/ 3"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 195.0, 74.0, 35.0, 17.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 151.0, 192.0, 55.0, 17.0 ],
					"text" : "delay 300"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 258.0, 431.0, 1019.0, 25.0 ],
					"text" : "250 0 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5 4 3 2 1 0 8 7 6 5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 533.0, 174.0, 16.0, 15.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 533.0, 152.0, 48.0, 17.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"bubblesize" : 8,
					"id" : "obj-11",
					"margin" : 4,
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 532.0, 195.0, 47.0, 27.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-21", "toggle", "int", 1, 5, "obj-15", "number", "int", 0, 5, "obj-14", "number", "int", 6, 5, "obj-6", "number", "int", 60, 5, "obj-4", "number", "int", 20, 5, "obj-3", "slider", "int", 0 ]
						}
 ],
					"spacing" : 2
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 303.0, 394.0, 83.0, 17.0 ],
					"text" : "prepend set 250 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 77.0, 418.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-14",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 402.0, 214.0, 35.0, 17.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-15",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 381.0, 159.0, 35.0, 17.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 254.0, 291.0, 27.0, 17.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 151.0, 138.0, 43.0, 17.0 ],
					"text" : "delay 5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 367.0, 183.0, 66.0, 17.0 ],
					"text" : "counter 0 8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 254,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 290.0, 256.0, 3434.5, 17.0 ],
					"text" : "bucket 254"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 102.0, 105.0, 52.0, 17.0 ],
					"text" : "metro 60"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 101.0, 76.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 254,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 272.0, 324.0, 3434.5, 17.0 ],
					"text" : "pack 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 152.0, 530.0, 110.0, 17.0 ],
					"text" : "serial a 115200 8 1 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 61.0, 60.0, 17.0 ],
					"text" : "start/stop"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 239.0, 74.0, 33.0, 17.0 ],
					"text" : "speed"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-26",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 151.0, 424.0, 100.0, 27.0 ],
					"text" : "check serial ouputs in message window"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 253 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 253 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 252 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 252 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 251 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 251 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 250 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 250 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 249 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 249 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 248 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 248 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 247 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 247 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 246 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 246 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 245 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 245 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 244 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 244 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 243 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 243 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 242 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 242 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 241 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 241 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 240 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 240 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 239 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 239 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 238 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 238 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 237 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 237 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 236 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 236 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 235 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 235 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 234 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 234 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 233 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 233 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 232 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 232 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 231 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 231 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 230 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 230 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 229 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 229 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 228 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 228 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 227 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 227 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 226 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 226 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 225 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 225 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 224 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 224 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 223 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 223 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 222 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 222 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 221 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 221 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 220 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 220 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 219 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 219 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 218 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 218 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 217 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 217 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 216 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 216 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 215 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 215 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 214 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 214 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 213 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 213 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 212 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 212 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 211 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 211 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 210 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 210 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 209 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 209 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 208 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 208 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 207 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 207 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 206 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 206 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 205 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 205 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 204 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 204 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 203 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 203 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 202 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 202 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 201 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 201 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 200 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 200 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 199 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 199 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 198 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 198 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 197 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 197 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 196 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 196 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 195 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 195 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 194 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 194 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 193 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 193 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 192 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 192 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 191 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 191 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 190 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 190 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 189 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 189 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 188 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 188 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 187 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 187 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 186 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 186 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 185 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 185 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 184 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 184 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 183 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 183 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 182 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 182 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 181 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 181 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 180 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 180 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 179 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 179 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 178 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 178 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 177 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 177 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 176 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 176 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 175 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 175 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 174 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 174 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 173 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 173 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 172 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 172 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 171 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 171 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 170 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 170 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 169 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 169 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 168 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 168 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 167 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 167 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 166 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 166 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 165 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 165 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 164 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 164 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 163 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 163 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 162 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 162 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 161 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 161 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 160 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 160 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 159 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 159 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 158 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 158 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 157 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 157 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 156 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 156 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 155 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 155 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 154 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 154 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 153 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 153 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 152 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 152 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 151 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 151 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 150 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 150 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 149 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 149 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 148 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 148 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 147 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 147 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 146 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 146 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 145 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 145 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 144 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 144 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 143 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 143 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 142 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 142 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 141 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 141 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 140 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 140 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 139 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 139 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 138 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 138 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 137 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 137 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 136 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 136 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 135 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 135 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 134 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 134 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 133 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 133 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 132 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 132 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 131 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 131 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 130 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 130 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 129 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 129 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 128 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 128 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 127 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 127 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 126 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 126 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 125 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 125 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 124 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 124 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 123 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 123 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 122 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 122 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 121 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 121 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 120 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 120 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 119 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 119 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 118 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 118 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 117 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 117 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 116 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 116 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 115 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 115 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 114 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 114 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 113 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 113 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 112 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 112 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 111 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 111 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 110 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 110 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 109 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 109 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 108 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 108 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 107 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 107 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 106 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 106 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 105 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 105 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 104 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 104 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 103 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 103 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 102 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 102 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 101 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 101 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 100 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 100 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 99 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 99 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 98 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 98 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 97 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 97 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 96 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 96 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 95 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 95 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 94 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 94 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 93 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 93 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 92 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 92 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 91 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 91 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 90 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 90 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 89 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 89 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 88 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 88 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 87 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 87 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 86 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 86 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 85 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 85 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 84 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 84 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 83 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 83 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 82 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 82 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 81 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 81 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 80 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 80 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 79 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 79 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 78 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 78 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 77 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 77 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 76 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 76 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 75 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 75 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 74 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 74 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 73 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 73 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 72 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 72 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 71 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 71 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 70 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 70 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 69 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 69 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 68 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 68 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 67 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 67 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 66 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 66 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 65 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 65 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 64 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 64 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 63 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 63 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 62 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 62 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 61 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 61 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 60 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 60 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 59 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 59 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 58 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 58 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 57 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 57 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 56 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 56 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 55 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 55 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 54 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 54 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 53 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 53 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 52 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 52 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 51 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 51 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 50 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 50 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 49 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 49 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 48 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 48 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 47 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 47 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 46 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 46 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 45 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 45 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 44 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 44 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 43 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 43 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 42 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 42 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 41 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 41 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 40 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 40 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 39 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 39 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 38 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 38 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 37 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 37 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 36 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 36 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 35 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 35 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 34 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 34 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 33 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 33 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 32 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 32 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 31 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 31 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 30 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 30 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 29 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 29 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 28 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 28 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 27 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 27 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 26 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 26 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 25 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 25 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 24 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 24 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 23 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 22 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 21 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 20 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 19 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 18 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 17 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 16 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 15 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 14 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 13 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 12 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 11 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 10 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 9 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 8 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ]
	}

}
