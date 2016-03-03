function varargout = guiattempt2(varargin)
% GUIATTEMPT2 MATLAB code for guiattempt2.fig
%      GUIATTEMPT2, by itself, creates a new GUIATTEMPT2 or raises the existing
%      singleton*.
%
%      H = GUIATTEMPT2 returns the handle to a new GUIATTEMPT2 or the handle to
%      the existing singleton*.
%
%      GUIATTEMPT2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIATTEMPT2.M with the given input arguments.
%
%      GUIATTEMPT2('Property','Value',...) creates a new GUIATTEMPT2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiattempt2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiattempt2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiattempt2

% Last Modified by GUIDE v2.5 11-Feb-2016 19:10:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiattempt2_OpeningFcn, ...
                   'gui_OutputFcn',  @guiattempt2_OutputFcn, ...
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


% --- Executes just before guiattempt2 is made visible.
function guiattempt2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiattempt2 (see VARARGIN)

% Choose default command line output for guiattempt2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiattempt2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiattempt2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

xval=str2double(get(handles.editx,'String'));
yval=str2double(get(handles.edity,'String'));
zval=str2double(get(handles.editz,'String'));
answer=xval/(yval+zval)+2*yval/zval
assignin('base','answer',answer);
set(handles.text4,'String',num2str(answer));

guidata(hObject,handles)


% --- Executes on button press in forcezedit.
function forcezedit_Callback(hObject, eventdata, handles)
% hObject    handle to forcezedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xval=str2double(get(handles.editx,'String'));
yval=str2double(get(handles.edity,'String'));
%aa=num2str(1-xval-yval);
%set(hObject.editz,aa);
zval=1-xval-yval;
assignin('base','zval',zval);
set(handles.editz,'String',num2str(zval));
guidata(hObject,handles)



function editx_Callback(hObject, eventdata, handles)
% hObject    handle to editx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editx as text
xval=str2double(get(hObject,'String')); %returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function editx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edity_Callback(hObject, eventdata, handles)
% hObject    handle to edity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of edity as text
yval=str2double(get(hObject,'String')); %returns contents of edity as a double


% --- Executes during object creation, after setting all properties.
function edity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editz_Callback(hObject, eventdata, handles)
% hObject    handle to editz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editz as text
zval=str2double(get(hObject,'String')); %returns contents of editz as a double


% --- Executes during object creation, after setting all properties.
function editz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete(hObject);


% --- Executes on button press in radiobuttonz.
function radiobuttonz_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttonz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushadjustany.
function pushadjustany_Callback(hObject, eventdata, handles)
% hObject    handle to pushadjustany (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rz=get(handles.radiobuttonz,'Value');%returns toggle state of radiobuttonz
rx=get(handles.radiobuttonx,'Value');
ry=get(handles.radiobuttony,'Value');
xval=str2double(get(handles.editx,'String'));
yval=str2double(get(handles.edity,'String'));
zval=str2double(get(handles.editz,'String'));
if rz==1
    zval=1-xval-yval;
    assignin('base','zval',zval);
    set(handles.editz,'String',num2str(zval));
elseif rx==1
    xval=1-zval-yval;
    assignin('base','xval',xval);
    set(handles.editx,'String',num2str(xval));
elseif ry==1
    yval=1-zval-xval;
    assignin('base','yval',yval);
    set(handles.edity,'String',num2str(yval));
end

guidata(hObject,handles)
