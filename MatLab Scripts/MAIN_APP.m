function varargout = MAIN_APP(varargin)
% MAIN_APP MATLAB code for MAIN_APP.fig
%      MAIN_APP, by itself, creates a new MAIN_APP or raises the existing
%      singleton*.
%
%      H = MAIN_APP returns the handle to a new MAIN_APP or the handle to
%      the existing singleton*.

%      MAIN_APP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN_APP.M with the given input arguments.
%
%      MAIN_APP('Property','Value',...) creates a new MAIN_APP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MAIN_APP_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MAIN_APP_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MAIN_APP

% Last Modified by GUIDE v2.5 04-May-2018 17:29:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MAIN_APP_OpeningFcn, ...
                   'gui_OutputFcn',  @MAIN_APP_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before MAIN_APP is made visible.
function MAIN_APP_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MAIN_APP (see VARARGIN)
handles.output = hObject;
ah=axes('unit','normalized','position',[0 0 1 1]);
bg=imread('background.png'); imagesc(bg);
set(ah,'handlevisibility','off','visible','off');
uistack(ah,'bottom');
handles.k=4;
handles.thresh=0.4;
guidata(hObject, handles);


% Choose default command line output for MAIN_APP
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


% --- Outputs from this function are returned to the command line.
function varargout = MAIN_APP_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton7_Callback(hObject, ~, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


handles=main_func(handles);
guidata(hObject, handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, ~, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
system('mspaint');
guidata(hObject, handles);
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(~, ~, ~)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% handles=main_func_natural(handles)
% guidata(hObject, handles);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(~, ~, ~)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Image_compatibility_Test_Func(handles)
% guidata(hObject, handles);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, ~, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear all;
% clc;
% x1=ones(1,1);
axes(handles.axes1)
imshow(ones);

axes(handles.axes3)
imshow(ones);
axes(handles.axes4)
imshow(ones);
axes(handles.axes5)
imshow(ones);
axes(handles.axes7)
imshow(ones);
axes(handles.axes8)
imshow(ones);
set(handles.text4, 'String', '');
guidata(hObject, handles);
% close all;


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, ~, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles=main_func_live(handles);
guidata(hObject, handles);



% --- Executes on button press in pushbutton9.
function pushbutton8_Callback(hObject, ~, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles=main_func(handles);
guidata(hObject, handles);



function edit1_Callback(hObject, ~, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.thresh=   str2double(get(hObject,'String')) ;
handles.output = hObject;    
% Update handles structure
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, ~, ~)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
