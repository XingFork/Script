if not TimeStart then return end

return function(ScreenGui)
local Gui = {};

Gui["EmotesV2"] = Instance.new("ScreenGui", ScreenGui);
Gui.EmotesV2.IgnoreGuiInset = true;
Gui.EmotesV2.DisplayOrder = 5;
Gui.EmotesV2.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets;
Gui.EmotesV2.Name = "EmotesV2";
Gui.EmotesV2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
Gui.EmotesV2.ResetOnSpawn = false;

Gui["EmotesGuiV2LocalScript"] = Instance.new("LocalScript", Gui["EmotesV2"]);
Gui.EmotesGuiV2LocalScript.Name = "EmotesGuiV2LocalScript";

Gui["OpenEmotes"] = Instance.new("TextButton", Gui["EmotesV2"]);
Gui.OpenEmotes.TextWrapped = true;
Gui.OpenEmotes.SizeConstraint = Enum.SizeConstraint.RelativeYY;
Gui.OpenEmotes.TextSize = 14;
Gui.OpenEmotes.TextScaled = true;
Gui.OpenEmotes.TextColor3 = Color3.fromRGB(255, 255, 255);
Gui.OpenEmotes.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
Gui.OpenEmotes.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
Gui.OpenEmotes.AnchorPoint = Vector2.new(1, 0);
Gui.OpenEmotes.BackgroundTransparency = 0.5;
Gui.OpenEmotes.Size = UDim2.new(0.175, 0, 0.075, 0);
Gui.OpenEmotes.LayoutOrder = 2;
Gui.OpenEmotes.Text = "表情符号";
Gui.OpenEmotes.Name = "OpenEmotes";
Gui.OpenEmotes.Position = UDim2.new(1, -10, 0.5, 5);

Gui["UICorner"] = Instance.new("UICorner", Gui["OpenEmotes"]);
Gui.UICorner.CornerRadius = UDim.new(0.25, 0);

Gui["UIPadding"] = Instance.new("UIPadding", Gui["OpenEmotes"]);
Gui.UIPadding.PaddingTop = UDim.new(0.15, 0);
Gui.UIPadding.PaddingRight = UDim.new(0.15, 0);
Gui.UIPadding.PaddingLeft = UDim.new(0.15, 0);
Gui.UIPadding.PaddingBottom = UDim.new(0.15, 0);

Gui["Main"] = Instance.new("ImageLabel", Gui["EmotesV2"]);
Gui.Main.Active = true;
Gui.Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
-- Gui.Main.ImageContent = ;
Gui.Main.AnchorPoint = Vector2.new(1, 0.5);
Gui.Main.Image = "rbxassetid://6998184600";
Gui.Main.Size = UDim2.new(0.3754, 0, 0.55, 0);
Gui.Main.Visible = false;
Gui.Main.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.Main.BackgroundTransparency = 1;
Gui.Main.Name = "Main";
Gui.Main.Position = UDim2.new(1, -10, 0.5, 0);
Gui.Main.Draggable = true

Gui["EmotesList"] = Instance.new("ScrollingFrame", Gui["Main"]);
Gui.EmotesList.Active = true;
Gui.EmotesList.ScrollingDirection = Enum.ScrollingDirection.Y;
Gui.EmotesList.BorderSizePixel = 0;
Gui.EmotesList.CanvasSize = UDim2.new(0, 0, 0, 0);
Gui.EmotesList.Name = "EmotesList";
Gui.EmotesList.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Gui.EmotesList.Selectable = false;
Gui.EmotesList.AnchorPoint = Vector2.new(0.5, 0);
Gui.EmotesList.AutomaticCanvasSize = Enum.AutomaticSize.Y;
Gui.EmotesList.Size = UDim2.new(1, 0, 0.85, 0);
Gui.EmotesList.Position = UDim2.new(0.5, 0, 0.1, 0);
Gui.EmotesList.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.EmotesList.ScrollBarThickness = 10;
Gui.EmotesList.BackgroundTransparency = 1;

Gui["UIGridLayout"] = Instance.new("UIGridLayout", Gui["EmotesList"]);
Gui.UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
Gui.UIGridLayout.CellSize = UDim2.new(0, 61, 0, 82);
Gui.UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder;
Gui["UIGridLayout"]:SetAttribute("ItemsPerRow", 3);
Gui["UIGridLayout"]:SetAttribute("yScale", 1.333);

Gui["UIAspectRatioConstraint"] = Instance.new("UIAspectRatioConstraint", Gui["UIGridLayout"]);
Gui.UIAspectRatioConstraint.AspectRatio = 0.75;

Gui["UIPadding"] = Instance.new("UIPadding", Gui["EmotesList"]);
Gui.UIPadding.PaddingTop = UDim.new(0, 10);
Gui.UIPadding.PaddingRight = UDim.new(0, 15);
Gui.UIPadding.PaddingLeft = UDim.new(0, 10);
Gui.UIPadding.PaddingBottom = UDim.new(0, 10);

Gui["Title"] = Instance.new("TextLabel", Gui["Main"]);
Gui.Title.TextWrapped = true;
Gui.Title.TextStrokeTransparency = 0.75;
Gui.Title.TextSize = 14;
Gui.Title.TextScaled = true;
Gui.Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Gui.Title.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
Gui.Title.TextColor3 = Color3.fromRGB(255, 255, 255);
Gui.Title.BackgroundTransparency = 1;
Gui.Title.AnchorPoint = Vector2.new(0.5, 0);
Gui.Title.Size = UDim2.new(0.8, 0, 0.1, 0);
Gui.Title.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.Title.Text = "Emotes";
Gui.Title.Name = "Title";
Gui.Title.Position = UDim2.new(0.5, 0, 0, 0);
Gui["Title"]:SetAttribute("LightModeImmunity", true);

Gui["UICorner"] = Instance.new("UICorner", Gui["Main"]);
Gui.UICorner.CornerRadius = UDim.new(0.05, 0);

Gui["Exit"] = Instance.new("ImageButton", Gui["Main"]);
Gui.Exit.SizeConstraint = Enum.SizeConstraint.RelativeYY;
Gui.Exit.BorderSizePixel = 0;
Gui.Exit.ScaleType = Enum.ScaleType.Fit;
Gui.Exit.BackgroundTransparency = 1;
-- Gui.Exit.ImageContent = ;
Gui.Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Gui.Exit.AnchorPoint = Vector2.new(1, 0);
Gui.Exit.Image = "rbxassetid://9154608052";
Gui.Exit.Size = UDim2.new(0.075, 0, 0.075, 0);
Gui.Exit.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.Exit.Name = "Exit";
Gui.Exit.Position = UDim2.new(0.96, 0, 0.02, 0);
Gui["Exit"]:SetAttribute("LightModeIgnoreList", true);

Gui["SearchBox"] = Instance.new("TextBox", Gui["Main"]);
Gui.SearchBox.Name = "SearchBox";
Gui.SearchBox.TextWrapped = true;
Gui.SearchBox.TextSize = 14;
Gui.SearchBox.TextColor3 = Color3.fromRGB(255, 255, 255);
Gui.SearchBox.TextScaled = true;
Gui.SearchBox.BackgroundColor3 = Color3.fromRGB(36, 38, 40);
Gui.SearchBox.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
Gui.SearchBox.AnchorPoint = Vector2.new(0.5, 0);
Gui.SearchBox.ClearTextOnFocus = false;
Gui.SearchBox.PlaceholderText = "Search Emotes..";
Gui.SearchBox.Size = UDim2.new(0.5, 0, 0.1, 0);
Gui.SearchBox.Position = UDim2.new(0.5, 0, 1, 10);
Gui.SearchBox.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.SearchBox.Text = "";

Gui["UIPadding_2"] = Instance.new("UIPadding", Gui["SearchBox"]);
Gui.UIPadding_2.PaddingTop = UDim.new(0.1, 0);
Gui.UIPadding_2.PaddingRight = UDim.new(0.1, 0);
Gui.UIPadding_2.PaddingLeft = UDim.new(0.1, 0);
Gui.UIPadding_2.PaddingBottom = UDim.new(0.1, 0);

Gui["UICorner_2"] = Instance.new("UICorner", Gui["SearchBox"]);
Gui.UICorner_2.CornerRadius = UDim.new(0.35, 0);

Gui["Fade"] = Instance.new("Folder", Gui["Main"]);
Gui.Fade.Name = "Fade";

Gui["TopFrame"] = Instance.new("Frame", Gui["Fade"]);
Gui.TopFrame.ZIndex = -100;
Gui.TopFrame.BorderSizePixel = 0;
Gui.TopFrame.BackgroundColor3 = Color3.fromRGB(24, 22, 24);
Gui.TopFrame.AnchorPoint = Vector2.new(0.5, 0);
Gui.TopFrame.Size = UDim2.new(1, 0, 0.1, 0);
Gui.TopFrame.Position = UDim2.new(0.5, 0, 0, 0);
Gui.TopFrame.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.TopFrame.Name = "TopFrame";

Gui["UICorner_3"] = Instance.new("UICorner", Gui["TopFrame"]);
Gui.UICorner_3.CornerRadius = UDim.new(0.25, 0);

Gui["BottomHalfCornerFiller"] = Instance.new("Frame", Gui["TopFrame"]);
Gui.BottomHalfCornerFiller.ZIndex = -100;
Gui.BottomHalfCornerFiller.BorderSizePixel = 0;
Gui.BottomHalfCornerFiller.BackgroundColor3 = Color3.fromRGB(24, 22, 24);
Gui.BottomHalfCornerFiller.AnchorPoint = Vector2.new(0.5, 0);
Gui.BottomHalfCornerFiller.Size = UDim2.new(1, 0, 0.5, 0);
Gui.BottomHalfCornerFiller.Position = UDim2.new(0.5, 0, 0.5, 0);
Gui.BottomHalfCornerFiller.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.BottomHalfCornerFiller.Name = "BottomHalfCornerFiller";

Gui["BottomFade"] = Instance.new("Frame", Gui["Fade"]);
Gui.BottomFade.BorderSizePixel = 0;
Gui.BottomFade.BackgroundColor3 = Color3.fromRGB(65, 71, 83);
Gui.BottomFade.AnchorPoint = Vector2.new(0.5, 0);
Gui.BottomFade.Size = UDim2.new(1, 0, 0.85, 0);
Gui.BottomFade.Position = UDim2.new(0.5, 0, 0.1, 0);
Gui.BottomFade.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.BottomFade.Name = "BottomFade";

Gui["UIGradient"] = Instance.new("UIGradient", Gui["BottomFade"]);
Gui.UIGradient.Rotation = 90;
Gui.UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.943, 1),NumberSequenceKeypoint.new(1.000, 0)};

Gui["BottomFrame"] = Instance.new("Frame", Gui["Fade"]);
Gui.BottomFrame.ZIndex = -100;
Gui.BottomFrame.BorderSizePixel = 0;
Gui.BottomFrame.BackgroundColor3 = Color3.fromRGB(65, 71, 83);
Gui.BottomFrame.AnchorPoint = Vector2.new(0.5, 1);
Gui.BottomFrame.Size = UDim2.new(1, 0, 0.05, 0);
Gui.BottomFrame.Position = UDim2.new(0.5, 0, 1, 0);
Gui.BottomFrame.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.BottomFrame.Name = "BottomFrame";

Gui["UICorner_4"] = Instance.new("UICorner", Gui["BottomFrame"]);
Gui.UICorner_4.CornerRadius = UDim.new(0.5, 0);

Gui["TopHalfCornerFiller"] = Instance.new("Frame", Gui["BottomFrame"]);
Gui.TopHalfCornerFiller.ZIndex = -100;
Gui.TopHalfCornerFiller.BorderSizePixel = 0;
Gui.TopHalfCornerFiller.BackgroundColor3 = Color3.fromRGB(65, 71, 83);
Gui.TopHalfCornerFiller.AnchorPoint = Vector2.new(0.5, 0);
Gui.TopHalfCornerFiller.Size = UDim2.new(1, 0, 0.5, 0);
Gui.TopHalfCornerFiller.Position = UDim2.new(0.5, 0, 0, 0);
Gui.TopHalfCornerFiller.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.TopHalfCornerFiller.Name = "TopHalfCornerFiller";

Gui["TopFade"] = Instance.new("Frame", Gui["Fade"]);
Gui.TopFade.BorderSizePixel = 0;
Gui.TopFade.BackgroundColor3 = Color3.fromRGB(24, 22, 24);
Gui.TopFade.AnchorPoint = Vector2.new(0.5, 0);
Gui.TopFade.Size = UDim2.new(1, 0, 0.875, 0);
Gui.TopFade.Position = UDim2.new(0.5, 0, 0.1, 0);
Gui.TopFade.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.TopFade.Name = "TopFade";

Gui["UIGradient_2"] = Instance.new("UIGradient", Gui["TopFade"]);
Gui.UIGradient_2.Rotation = -90;
Gui.UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.943, 1),NumberSequenceKeypoint.new(1.000, 0)};

Gui["DraggableNotice"] = Instance.new("TextLabel", Gui["Main"]);
Gui.DraggableNotice.TextWrapped = true;
Gui.DraggableNotice.TextStrokeTransparency = 0.8;
Gui.DraggableNotice.BorderSizePixel = 0;
Gui.DraggableNotice.TextSize = 14;
Gui.DraggableNotice.TextScaled = true;
Gui.DraggableNotice.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Gui.DraggableNotice.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Gui.DraggableNotice.TextColor3 = Color3.fromRGB(255, 255, 255);
Gui.DraggableNotice.BackgroundTransparency = 1;
Gui.DraggableNotice.AnchorPoint = Vector2.new(1, 1);
Gui.DraggableNotice.Size = UDim2.new(1.3, 0, 0.075, 0);
Gui.DraggableNotice.Visible = false;
Gui.DraggableNotice.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.DraggableNotice.Text = "这个菜单可以被拖动！";
Gui.DraggableNotice.Name = "DraggableNotice";
Gui.DraggableNotice.Position = UDim2.new(1, 0, 0, 0);

Gui["UIAspectRatioConstraint_2"] = Instance.new("UIAspectRatioConstraint", Gui["Main"]);

--Asset
Gui["Asset"] = Instance.new("ImageButton", Gui["EmotesV2"]);
Gui.Asset.SizeConstraint = Enum.SizeConstraint.RelativeYY;
Gui.Asset.BorderSizePixel = 0;
Gui.Asset.AutoLocalize = false;
Gui.Asset.BackgroundTransparency = 1;
Gui.Asset.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Gui.Asset.Size = UDim2.new(0.35, 0, 0.4, 0);
Gui.Asset.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.Asset.Name = "Asset";
Gui.Asset.Position = UDim2.new(0, 400, 0, 200);
Gui.Asset.Visible = false

Gui["AssetImage"] = Instance.new("ImageLabel", Gui["Asset"]);
Gui.AssetImage.SizeConstraint = Enum.SizeConstraint.RelativeYY;
Gui.AssetImage.BorderSizePixel = 0;
Gui.AssetImage.BackgroundColor3 = Color3.fromRGB(53, 55, 57);
-- Gui.AssetImage.ImageContent = ;
Gui.AssetImage.AnchorPoint = Vector2.new(0.5, 0);
Gui.AssetImage.Image = "rbxthumb://type=Asset&id=1365767&w=420&h=420";
Gui.AssetImage.Size = UDim2.new(0.7, 0, 0.7, 0);
Gui.AssetImage.ClipsDescendants = true;
Gui.AssetImage.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.AssetImage.Name = "AssetImage";
Gui.AssetImage.Position = UDim2.new(0.5, 0, 0.025, 0);

Gui["UICorner"] = Instance.new("UICorner", Gui["AssetImage"]);
Gui.UICorner.CornerRadius = UDim.new(0.1, 0);

Gui["Options"] = Instance.new("Frame", Gui["AssetImage"]);
Gui.Options.ZIndex = 10;
Gui.Options.BorderSizePixel = 0;
Gui.Options.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
Gui.Options.AnchorPoint = Vector2.new(0.5, 0.5);
Gui.Options.Size = UDim2.new(1, 0, 1, 0);
Gui.Options.Position = UDim2.new(0.5, 0, 0.5, 0);
Gui.Options.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.Options.Name = "Options";
Gui.Options.BackgroundTransparency = 0.25;

Gui["UIGridLayout"] = Instance.new("UIGridLayout", Gui["Options"]);
Gui.UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
Gui.UIGridLayout.CellSize = UDim2.new(0.9, 0, 0.25, 0);
Gui.UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Center;
Gui.UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder;
Gui.UIGridLayout.CellPadding = UDim2.new(0, 0, 0.1, 0);

Gui["Row1"] = Instance.new("Frame", Gui["Options"]);
Gui.Row1.BorderSizePixel = 0;
Gui.Row1.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Gui.Row1.Size = UDim2.new(0, 100, 0, 100);
Gui.Row1.BorderColor3 = Color3.fromRGB(0, 0, 0);
Gui.Row1.Name = "Row1";
Gui.Row1.LayoutOrder = 1;
Gui.Row1.BackgroundTransparency = 1;

Gui["Try"] = Instance.new("TextButton", Gui["Row1"]);
Gui.Try.TextWrapped = true;
Gui.Try.BorderSizePixel = 0;
Gui.Try.TextSize = 14;
Gui.Try.TextScaled = true;
Gui.Try.TextColor3 = Color3.fromRGB(36, 38, 40);
Gui.Try.BackgroundColor3 = Color3.fromRGB(86, 255, 128);
Gui.Try.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
Gui.Try.Size = UDim2.new(0.675, 0, 1, 0);
Gui.Try.LayoutOrder = 2;
Gui.Try.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.Try.Text = "TRY";
Gui.Try.Name = "Try";

Gui["UICorner_2"] = Instance.new("UICorner", Gui["Try"]);
Gui.UICorner_2.CornerRadius = UDim.new(0.25, 0);

Gui["Inspect"] = Instance.new("ImageButton", Gui["Row1"]);
Gui.Inspect.SizeConstraint = Enum.SizeConstraint.RelativeYY;
Gui.Inspect.BorderSizePixel = 0;
Gui.Inspect.BackgroundTransparency = 1;
-- Gui.Inspect.ImageContent = ;
Gui.Inspect.BackgroundColor3 = Color3.fromRGB(0, 171, 255);
Gui.Inspect.AnchorPoint = Vector2.new(1, 0.5);
Gui.Inspect.Image = "rbxassetid://15114780839";
Gui.Inspect.Size = UDim2.new(1, 0, 1, 0);
Gui.Inspect.LayoutOrder = 1;
Gui.Inspect.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.Inspect.Name = "Inspect";
Gui.Inspect.Position = UDim2.new(1, 0, 0.5, 0);

Gui["UIGradient"] = Instance.new("UIGradient", Gui["Options"]);
Gui.UIGradient.Rotation = -90;
Gui.UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.511, 0),NumberSequenceKeypoint.new(1.000, 1)};

Gui["UICorner_3"] = Instance.new("UICorner", Gui["Options"]);
Gui.UICorner_3.CornerRadius = UDim.new(0.1, 0);

Gui["Row2"] = Instance.new("Frame", Gui["Options"]);
Gui.Row2.BorderSizePixel = 0;
Gui.Row2.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Gui.Row2.Size = UDim2.new(0, 100, 0, 100);
Gui.Row2.BorderColor3 = Color3.fromRGB(0, 0, 0);
Gui.Row2.Name = "Row2";
Gui.Row2.LayoutOrder = 2;
Gui.Row2.BackgroundTransparency = 1;

Gui["Buy"] = Instance.new("TextButton", Gui["Row2"]);
Gui.Buy.TextWrapped = true;
Gui.Buy.BorderSizePixel = 0;
Gui.Buy.TextSize = 14;
Gui.Buy.TextScaled = true;
Gui.Buy.TextColor3 = Color3.fromRGB(36, 38, 40);
Gui.Buy.BackgroundColor3 = Color3.fromRGB(86, 255, 128);
Gui.Buy.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
Gui.Buy.Size = UDim2.new(0.675, 0, 1, 0);
Gui.Buy.LayoutOrder = 2;
Gui.Buy.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.Buy.Text = "BUY";
Gui.Buy.Name = "Buy";

Gui["UICorner_4"] = Instance.new("UICorner", Gui["Buy"]);
Gui.UICorner_4.CornerRadius = UDim.new(0.25, 0);

Gui["ToggleCart"] = Instance.new("ImageButton", Gui["Row2"]);
Gui.ToggleCart.SizeConstraint = Enum.SizeConstraint.RelativeYY;
Gui.ToggleCart.BorderSizePixel = 0;
Gui.ToggleCart.BackgroundTransparency = 1;
-- Gui.ToggleCart.ImageContent = ;
Gui.ToggleCart.BackgroundColor3 = Color3.fromRGB(0, 171, 255);
Gui.ToggleCart.AnchorPoint = Vector2.new(1, 0.5);
Gui.ToggleCart.Image = "rbxassetid://18889742908";
Gui.ToggleCart.Size = UDim2.new(1, 0, 1, 0);
Gui.ToggleCart.LayoutOrder = 1;
Gui.ToggleCart.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.ToggleCart.Name = "ToggleCart";
Gui.ToggleCart.Position = UDim2.new(1, 0, 0.5, 0);

Gui["Favorite"] = Instance.new("ImageButton", Gui["AssetImage"]);
-- Gui.Favorite.HoverImageContent = ;
Gui.Favorite.SizeConstraint = Enum.SizeConstraint.RelativeYY;
Gui.Favorite.BorderSizePixel = 0;
Gui.Favorite.BackgroundTransparency = 1;
-- Gui.Favorite.ImageContent = ;
Gui.Favorite.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Gui.Favorite.ZIndex = 5;
Gui.Favorite.Image = "rbxassetid://7537715511";
Gui.Favorite.Size = UDim2.new(0.175, 0, 0.175, 0);
Gui.Favorite.HoverImage = "rbxassetid://7537716403";
Gui.Favorite.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.Favorite.Name = "Favorite";
Gui.Favorite.Position = UDim2.new(-0.25, 0, 0.03, 0);
Gui["Favorite"]:SetAttribute("UnfavoritedImage", "rbxassetid://7537715511");
Gui["Favorite"]:SetAttribute("FavoritedImage", "rbxassetid://7537716403");

Gui["EquippedCheckmark"] = Instance.new("ImageLabel", Gui["AssetImage"]);
Gui.EquippedCheckmark.SizeConstraint = Enum.SizeConstraint.RelativeYY;
Gui.EquippedCheckmark.ZIndex = 5;
Gui.EquippedCheckmark.BorderSizePixel = 0;
Gui.EquippedCheckmark.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Gui.EquippedCheckmark.ImageTransparency = 1;
-- Gui.EquippedCheckmark.ImageContent = ;
Gui.EquippedCheckmark.AnchorPoint = Vector2.new(1, 0);
Gui.EquippedCheckmark.Image = "rbxassetid://7682149593";
Gui.EquippedCheckmark.Size = UDim2.new(0.15, 0, 0.15, 0);
Gui.EquippedCheckmark.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.EquippedCheckmark.BackgroundTransparency = 1;
Gui.EquippedCheckmark.Name = "EquippedCheckmark";
Gui.EquippedCheckmark.Position = UDim2.new(0.95, 0, 0.05, 0);

Gui["EquippedPreview"] = Instance.new("ViewportFrame", Gui["AssetImage"]);
Gui.EquippedPreview.Visible = false;
Gui.EquippedPreview.BackgroundColor3 = Color3.fromRGB(53, 55, 57);
Gui.EquippedPreview.ImageTransparency = 1;
Gui.EquippedPreview.AnchorPoint = Vector2.new(0.5, 0.5);
Gui.EquippedPreview.Size = UDim2.new(1, 0, 1, 0);
Gui.EquippedPreview.Position = UDim2.new(0.5, 0, 0.5, 0);
Gui.EquippedPreview.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.EquippedPreview.Name = "EquippedPreview";
Gui.EquippedPreview.BackgroundTransparency = 1;

Gui["UICorner_5"] = Instance.new("UICorner", Gui["EquippedPreview"]);
Gui.UICorner_5.CornerRadius = UDim.new(0.1, 0);

Gui["PreviewHolder"] = Instance.new("Model", Gui["EquippedPreview"]);
Gui.PreviewHolder.Name = "PreviewHolder";

Gui["AssetInfo"] = Instance.new("Frame", Gui["Asset"]);
Gui.AssetInfo.BorderSizePixel = 0;
Gui.AssetInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Gui.AssetInfo.AnchorPoint = Vector2.new(0.5, 0);
Gui.AssetInfo.Size = UDim2.new(0.8, 0, 0.25, 0);
Gui.AssetInfo.Position = UDim2.new(0.5, 0, 0.75, 0);
Gui.AssetInfo.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.AssetInfo.Name = "AssetInfo";
Gui.AssetInfo.BackgroundTransparency = 1;

Gui["AssetName"] = Instance.new("TextLabel", Gui["AssetInfo"]);
Gui.AssetName.TextWrapped = true;
Gui.AssetName.BorderSizePixel = 0;
Gui.AssetName.TextSize = 14;
Gui.AssetName.TextXAlignment = Enum.TextXAlignment.Left;
Gui.AssetName.TextScaled = true;
Gui.AssetName.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Gui.AssetName.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
Gui.AssetName.TextColor3 = Color3.fromRGB(255, 255, 255);
Gui.AssetName.BackgroundTransparency = 1;
Gui.AssetName.AnchorPoint = Vector2.new(0.5, 0);
Gui.AssetName.Size = UDim2.new(1, 0, 0.575, 0);
Gui.AssetName.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.AssetName.Text = "Valkyrie Helm";
Gui.AssetName.Name = "AssetName";
Gui.AssetName.Position = UDim2.new(0.5, 0, 0, 0);

Gui["Price"] = Instance.new("Frame", Gui["AssetInfo"]);
Gui.Price.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Gui.Price.AnchorPoint = Vector2.new(0.5, 0);
Gui.Price.Size = UDim2.new(1, 0, 0.35, 0);
Gui.Price.Position = UDim2.new(0.5, 0, 0.58, 0);
Gui.Price.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.Price.Name = "Price";
Gui.Price.BackgroundTransparency = 1;

Gui["Amount"] = Instance.new("TextLabel", Gui["Price"]);
Gui.Amount.TextWrapped = true;
Gui.Amount.SizeConstraint = Enum.SizeConstraint.RelativeYY;
Gui.Amount.BorderSizePixel = 0;
Gui.Amount.TextSize = 14;
Gui.Amount.TextXAlignment = Enum.TextXAlignment.Left;
Gui.Amount.TextScaled = true;
Gui.Amount.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Gui.Amount.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
Gui.Amount.TextColor3 = Color3.fromRGB(191, 191, 191);
Gui.Amount.BackgroundTransparency = 1;
Gui.Amount.Size = UDim2.new(5.5, 0, 1, 0);
Gui.Amount.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.Amount.Text = "50,000";
Gui.Amount.Name = "Amount";
Gui.Amount.Position = UDim2.new(0.3, 0, 0.5, 0);

Gui["UIListLayout"] = Instance.new("UIListLayout", Gui["Price"]);
Gui.UIListLayout.Padding = UDim.new(0.035, 0);
Gui.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center;
Gui.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
Gui.UIListLayout.FillDirection = Enum.FillDirection.Horizontal;

Gui["RobuxIcon"] = Instance.new("ImageLabel", Gui["Price"]);
Gui.RobuxIcon.SizeConstraint = Enum.SizeConstraint.RelativeYY;
Gui.RobuxIcon.BorderSizePixel = 0;
Gui.RobuxIcon.ScaleType = Enum.ScaleType.Fit;
Gui.RobuxIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
-- Gui.RobuxIcon.ImageContent = ;
Gui.RobuxIcon.ImageColor3 = Color3.fromRGB(191, 191, 191);
Gui.RobuxIcon.Image = "rbxassetid://6994404152";
Gui.RobuxIcon.Size = UDim2.new(0.9, 0, 0.9, 0);
Gui.RobuxIcon.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.RobuxIcon.BackgroundTransparency = 1;
Gui.RobuxIcon.LayoutOrder = -1;
Gui.RobuxIcon.Name = "RobuxIcon";

Gui["PremiumIcon"] = Instance.new("ImageLabel", Gui["Price"]);
Gui.PremiumIcon.SizeConstraint = Enum.SizeConstraint.RelativeYY;
Gui.PremiumIcon.BorderSizePixel = 0;
Gui.PremiumIcon.ScaleType = Enum.ScaleType.Fit;
Gui.PremiumIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
-- Gui.PremiumIcon.ImageContent = ;
Gui.PremiumIcon.ImageColor3 = Color3.fromRGB(191, 191, 191);
Gui.PremiumIcon.Image = "rbxassetid://6933498204";
Gui.PremiumIcon.Size = UDim2.new(0.9, 0, 0.9, 0);
Gui.PremiumIcon.Visible = false;
Gui.PremiumIcon.BorderColor3 = Color3.fromRGB(28, 43, 54);
Gui.PremiumIcon.BackgroundTransparency = 1;
Gui.PremiumIcon.LayoutOrder = -2;
Gui.PremiumIcon.Name = "PremiumIcon";

Gui["UIAspectRatioConstraint"] = Instance.new("UIAspectRatioConstraint", Gui["Asset"]);
Gui.UIAspectRatioConstraint.AspectRatio = 0.75;

local function C_EmotesGuiV2LocalScript()
local script = Gui["EmotesGuiV2LocalScript"];

local LocalPlayer = game.Players.LocalPlayer
local CollectionService = game:GetService("CollectionService")
local TweenService = game:GetService("TweenService")
local Main = script.Parent:WaitForChild("Main")
local SearchBox = Main:WaitForChild("SearchBox")
local Connections = {}

local function CleanUp()
	for _, v in pairs(Connections) do
		v:Disconnect()
		v = nil
	end
	Connections = {}
	for _, v in pairs(CollectionService:GetTagged(script:GetFullName())) do
		v:Destroy()
	end
end

local function StopEmotesAndPoses()
	local Humanoid = LocalPlayer.Character.Humanoid
	local Animator = Humanoid:WaitForChild("Animator", 1)
	if not Animator then
		Animator = Instance.new("Animator", Humanoid)
	end
	for _, v in pairs(Animator:GetPlayingAnimationTracks()) do
		if v.Name == "TriedOnEmote" then
			v:Stop()
		end
	end
end
local EmotesList = Main:WaitForChild("EmotesList")

local function getAnimationId(assetId)
    return game:GetObjects("rbxassetid://"..assetId)[1].AnimationId
end

local GetCameraCFrameToLookAtAssetOnNPC = function(p261)
    local v265, v266
    v265 = (p261.HumanoidRootPart.CFrame + p261.HumanoidRootPart.CFrame.upVector * 0.25 + p261.HumanoidRootPart.CFrame.lookVector * 5).Position
    v266 = p261.HumanoidRootPart.CFrame.Position
 
    return CFrame.lookAt(v265, v266);
end;

local function CreateAsset(v)
    local Asset = Gui["Asset"]:Clone()
    CollectionService:AddTag(Asset, "CatalogItemButton")
    local Options = Asset.AssetImage.Options
    Options.Visible = false
    
    Asset.AssetImage.Image = "rbxthumb://type=Asset&id="..v.Id.."&w=150&h=150"
	Asset.AssetInfo.AssetName.Text = v.Name
	Asset.AssetInfo.Price.Amount.Text = v.Price
	
	Asset:GetAttributeChangedSignal("OptionsOpen"):Connect(function()
		if Asset:GetAttribute("OptionsOpen") then
		    Asset:SetAttribute("IsHovering", false)
		    
			Options.Position = UDim2.fromScale(0.5, 1.5)
			Options.BackgroundTransparency = 1
			Options.Visible = true
			
			TweenService:Create(Options, TweenInfo.new(0.35, Enum.EasingStyle.Quint), {
				Position = UDim2.fromScale(0.5, 0.5);
				BackgroundTransparency = 0.25;
			}):Play()
			return
		end
		TweenService:Create(Options, TweenInfo.new(0.35, Enum.EasingStyle.Cubic), {
			Position = UDim2.fromScale(0.5, 1.5);
			BackgroundTransparency = 1;
		}):Play()
	end)
			
	Asset.Activated:Connect(function()
	    Asset:SetAttribute("OptionsOpen", not Asset:GetAttribute("OptionsOpen"))
		for i, v in pairs(CollectionService:GetTagged("CatalogItemButton")) do
			if v ~= Asset and v:GetAttribute("OptionsOpen") then
				v:SetAttribute("OptionsOpen", false)
			end
		end
	end)
	
	local EquippedPreview = Asset.AssetImage.EquippedPreview
	local function UpdateEquippedPreviewViewportFrame(arg)
		local description = LocalPlayer.Character.Humanoid:GetAppliedDescription()
		EquippedPreview.PreviewHolder:ClearAllChildren()
		
		local WorldModel = Instance.new("WorldModel", EquippedPreview.PreviewHolder)
		local previewCharacter = game.Players:CreateHumanoidModelFromDescription(description, LocalPlayer.Character.Humanoid.RigType, Enum.AssetTypeVerification.Always)
		
		previewCharacter:WaitForChild("Humanoid").DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
		for i, v in pairs(previewCharacter:GetChildren()) do
			if v:IsA("LuaSourceContainer") then
				v.Enabled = false
			end
		end
		previewCharacter.Parent = WorldModel
		
		if string.match(arg, "Animation$") then
			if not v.AnimationId then
				v.AnimationId = getAnimationId(v.Id)
			end
			local Animation = Instance.new("Animation")
			Animation.AnimationId = v.AnimationId
			
			local track = previewCharacter:WaitForChild("Humanoid"):WaitForChild("Animator"):LoadAnimation(Animation)
			track.Looped = true
			track.Priority = Enum.AnimationPriority.Action
			track:Play()
		end
		
		local class_Camera = EquippedPreview:FindFirstChildOfClass("Camera")
		if not class_Camera then
			class_Camera = Instance.new("Camera", EquippedPreview)
		end
		EquippedPreview.CurrentCamera = class_Camera
		
		local CameraCFrame = GetCameraCFrameToLookAtAssetOnNPC(previewCharacter)
		if not CameraCFrame then
			CameraCFrame = CFrame.new()
		end
		class_Camera.CFrame = CameraCFrame
	end
	
	Asset:GetAttributeChangedSignal("IsHovering"):Connect(function()
	    if Asset:GetAttribute("IsHovering") then
	        task.defer(UpdateEquippedPreviewViewportFrame, "EmoteAnimation")
	        EquippedPreview.ImageTransparency = 1
            EquippedPreview.Visible = true
            TweenService:Create(EquippedPreview, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {
                ["ImageTransparency"] = 0
            }):Play()
            TweenService:Create(Asset.AssetImage, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {
                ["ImageTransparency"] = 1
            }):Play()
            return;
        else
            if EquippedPreview.ImageTransparency ~= 1 or Asset.AssetImage.ImageTransparency ~= 0 then
                TweenService:Create(Asset.AssetImage, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {
                    ["ImageTransparency"] = 0
                }):Play()
                local v248 = TweenService:Create(EquippedPreview, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {
                    ["ImageTransparency"] = 1
                })
                v248:Play()
                v248.Completed:Once(function(p249)
                    if p249 == Enum.PlaybackState.Completed and (EquippedPreview and EquippedPreview.ImageTransparency == 1) then
                        EquippedPreview.Visible = false
                        if EquippedPreview:FindFirstChild("PreviewHolder") then
                            EquippedPreview.PreviewHolder:ClearAllChildren()
                        end;
                    end;
                end)
            end;
	    end
	end)
	
	Asset.MouseEnter:Connect(function()
	    for _, v in pairs(CollectionService:GetTagged("CatalogItemButton")) do
            if v == Asset then
                if not (v:GetAttribute("OptionsOpen") or v:GetAttribute("IsHovering")) then
                    v:SetAttribute("IsHovering", true)
                end;
            else
                v:SetAttribute("IsHovering", false)
            end;
        end;
	end)
	Asset.MouseLeave:Connect(function()
	    Asset:SetAttribute("IsHovering", false)
	end)
	
    return Asset
end

function DisplayCatalogPages(catalogPage)
	CleanUp()
	local function AppendItems(currentPageItems)
		local items = currentPageItems
		if not items then
			items = {}
		end
		
		for _, v in pairs(items) do
			local Asset = CreateAsset(v)
			CollectionService:AddTag(Asset, script:GetFullName())
			
			Asset.AssetImage.Options.Row1.Try.Activated:Connect(function()
			    Asset:SetAttribute("OptionsOpen", false)
			    StopEmotesAndPoses()
			    if not v.AnimationId then
			        v.AnimationId = getAnimationId(v.Id)
			    end
			
			    local Animation = Instance.new("Animation")
				Animation.AnimationId = v.AnimationId
				
				local track = LocalPlayer.Character.Humanoid:LoadAnimation(Animation)
				track.Name = "TriedOnEmote"
				track.Priority = Enum.AnimationPriority.Action
				track:Play()
			end)
			
			Asset.AssetImage.Options.Row2.Buy.Activated:Connect(function()
			    game.MarketplaceService:PromptPurchase(LocalPlayer, v.Id)
			end)
			
			local PoseButton = Asset.AssetImage.Options.Row2.Buy:Clone()
			PoseButton.LayoutOrder += 1
			PoseButton.Name = "Pose"
			PoseButton.Text = "POSE"
			PoseButton.Parent = Asset.AssetImage.Options
			
			local UIGridLayout = Asset.AssetImage.Options.UIGridLayout
			UIGridLayout.CellPadding = UDim2.fromScale(0, 0.05)
			UIGridLayout.CellSize = UDim2.fromScale(0.9, 0.25)
			
			PoseButton.Activated:Connect(function()
				StopEmotesAndPoses()
				if not v.AnimationId then
				    v.AnimationId = getAnimationId(v.Id)
				end
				
				local Animation = Instance.new("Animation")
				Animation.AnimationId = v.AnimationId
				local track = LocalPlayer.Character.Humanoid:LoadAnimation(Animation)
				track.Name = "TriedOnEmote"
				track.Priority = Enum.AnimationPriority.Action
				track:Play(0)
				track:AdjustSpeed(0)
				track.TimePosition = track.Length / 2
				if track.Length == 0 then
					task.defer(function()
						repeat
							task.wait(0.05)
							track.TimePosition = track.Length / 2
						until 0 < track.Length and 4 < tick() - tick()
					end)
				end
				local connect
				connect = LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()
					if 0.05 < LocalPlayer.Character.Humanoid.MoveDirection.Magnitude then
						connect:Disconnect()
						StopEmotesAndPoses()
					end
				end)
			end)
			Asset.Visible = true
			Asset.Parent = EmotesList
		end
	end
	AppendItems(catalogPage:GetCurrentPage())
	
	local canLoadNextPage = true
	table.insert(Connections, EmotesList:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
		if math.round(EmotesList.CanvasPosition.Y + EmotesList.AbsoluteSize.Y) == math.round(EmotesList.AbsoluteCanvasSize.Y) and canLoadNextPage then
			canLoadNextPage = false
			if not catalogPage.IsFinished then
				catalogPage:AdvanceToNextPageAsync()
				AppendItems(catalogPage:GetCurrentPage())
			end
			canLoadNextPage = true
		end
	end))
end

local AvatarEditorService = game:GetService("AvatarEditorService")
function LoadResults()
	local params = CatalogSearchParams.new()
	params.AssetTypes = {Enum.AvatarAssetType.EmoteAnimation}
	params.SearchKeyword = SearchBox.Text
	params.IncludeOffSale = true
	DisplayCatalogPages(AvatarEditorService:SearchCatalog(params))
end
Main:GetPropertyChangedSignal("Visible"):Once(LoadResults)
Main:GetPropertyChangedSignal("Visible"):Once(function()
    Gui.DraggableNotice.Visible = true
    task.wait(5)
    TweenService:Create(Gui.DraggableNotice, TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
end)

local SearchText = SearchBox.Text
SearchBox.Focused:Connect(function() 
	SearchText = SearchBox.Text
end)

SearchBox.FocusLost:Connect(function()
	if SearchBox.Text ~= SearchText then
		LoadResults()
	end
end)

Gui.OpenEmotes.Activated:Connect(function()
	Main.Visible = not Main.Visible
end)

Main.Exit.Activated:Connect(function()
	Main.Visible = false
end)

end;
task.spawn(C_EmotesGuiV2LocalScript);

end
