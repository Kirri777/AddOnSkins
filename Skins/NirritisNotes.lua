local AS = unpack(AddOnSkins)

if not AS:CheckAddOn('Notes') then return end

function AS:NirritisNotes(event, addon)
	AS:SkinFrame(NotesFrame)
	AS:SkinFrame(NotesFrameScrollFrame)
	AS:SkinFrame(TextScrollFrame)
	AS:StripTextures(EditNotesFrame)
	AS:StripTextures(ConfigNotesFrame)

	AS:SkinButton(NotesFrameCreateNoteButton, true)
	AS:SkinButton(ConfigNotesFrame, true)
	AS:SkinButton(Notes_AddInfo, true)
	AS:SkinButton(NotesFrameCopyNoteButton, true)
	AS:SkinButton(NotesFrameDeleteNoteButton, true)
	AS:SkinButton(NotesFrameSendNoteButton, true)
	AS:SkinButton(NotesFrameCancelButton, true)
	AS:SkinScrollBar(NotesFrameScrollFrameScrollBar)
	AS:SkinScrollBar(TextScrollFrameScrollBar)
	AS:SkinCloseButton(NotesFrameCloseButton)
	AS:SkinDropDownBox(Notes_AddInfoDropDown)
	AS:SkinDropDownBox(Notes_TypeDropDown)
	
	TextBodyEditBox:SetTextColor(1, 1, 1)

	NotesFrameScrollFrame:SetSize(305, 336)
	TextScrollFrame:SetSize(290, 336)
	NotesFrameScrollFrameScrollBar:SetSize(20, 308)
	TextScrollFrameScrollBar:SetSize(20, 304)
	NotesFrameCreateNoteButton:SetSize(80, 21)
	NotesFrameCopyNoteButton:SetSize(80, 21)
	NotesFrameDeleteNoteButton:SetSize(80, 21)
	NotesFrameSendNoteButton:SetSize(80, 21)
	ConfigNotesFrame:SetSize(654, 40)
	Notes_TypeDropDown:SetSize(160, 20)

	NotesFrameScrollFrame:ClearAllPoints()
	TextScrollFrame:ClearAllPoints()
	NotesFrameScrollFrameScrollBar:ClearAllPoints()
	TextScrollFrameScrollBar:ClearAllPoints()
	NotesFrameCreateNoteButton:ClearAllPoints()
	NotesFrameCopyNoteButton:ClearAllPoints()
	NotesFrameDeleteNoteButton:ClearAllPoints()
	NotesFrameSendNoteButton:ClearAllPoints()
	ConfigNotesFrame:ClearAllPoints()
	Notes_TypeDropDown:ClearAllPoints()

	NotesFrameScrollFrame:Point("BOTTOMLEFT", NotesFrame, "BOTTOMLEFT", 15, 38)
	TextScrollFrame:Point("LEFT", NotesFrameScrollFrameScrollBar, "RIGHT", 20, 0)
	NotesFrameScrollFrameScrollBar:Point("LEFT", NotesFrameScrollFrame, "RIGHT", 0, 0)
	TextScrollFrameScrollBar:Point("LEFT", TextScrollFrame, "RIGHT", 0, 0)
	NotesFrameCreateNoteButton:Point("TOPLEFT", NotesFrameScrollFrame, "BOTTOMLEFT", 0, -4)
	NotesFrameCopyNoteButton:Point("LEFT", NotesFrameCreateNoteButton, "RIGHT", 2, 0)
	NotesFrameDeleteNoteButton:Point("LEFT", NotesFrameCopyNoteButton, "RIGHT", 2, 0)
	NotesFrameSendNoteButton:Point("LEFT", NotesFrameDeleteNoteButton, "RIGHT", 2, 0)
	ConfigNotesFrame:Point("BOTTOMLEFT", NotesFrameScrollFrame, "TOPLEFT", 0, 2)
	Notes_TypeDropDown:Point("RIGHT", ConfigNotesFrame, "RIGHT", -5, -4)
end

AS:RegisterSkin('NirritisNotes', AS.NirritisNotes)