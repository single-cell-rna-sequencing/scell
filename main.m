function varargout = main(varargin)
% MAIN MATLAB code for main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.
%
%      MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN.M with the given input arguments.
%
%      MAIN('Property','Value',...) creates a new MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main

% Last Modified by GUIDE v2.5 21-Nov-2014 15:59:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
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


% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)

% Choose default command line output for main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

%set(jCBList, 'ValueChangedCallback', @myMatlabCallbackFcn);
% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.main_window);



% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function cell_table_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cell_table (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
columnname={'Include','ID','type','Reads','Genes tagged','COV','Simpson diversity','Lorenz dynamic range','Turing coverage'};
columnformat={'logical','char','char','numeric','numeric','numeric','numeric','numeric','numeric'};
set(hObject,'ColumnName',columnname,'ColumnFormat',columnformat,'ColumnEditable',[true false false false false false false false false]);
set(hObject,'Data',{true,'C1','neuron',1000000,6000,2.3,1.7,1.4,.99;true,'C1','neuron',1000000,6000,2.3,1.7,1.4,.99;true,'C1','neuron',1000000,6000,2.3,1.7,1.4,.99});


% --- Executes on button press in load_button.
function load_button_Callback(hObject, eventdata, handles)
% hObject    handle to load_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
main_data=get(handles.root_window,'UserData');
if ~isfield(main_data,'last_dir')
    [fname pname]=uigetfile('*.*','Select FeatureCounts output...');
else
    [fname pname]=uigetfile([main_data.last_dir,'*.*'],'Select FeatureCounts output...');
end
if ~isstr(fname),return;
else
    main_data.last_dir=pname;
    set(handles.root_window,'UserData',main_data);
    f=fopen(fullfile(pname,fname));
end
set(handles.root_window,'UserData',main_data);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in restore_button.
function restore_button_Callback(hObject, eventdata, handles)
% hObject    handle to restore_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in qc_button.
function qc_button_Callback(hObject, eventdata, handles)
% hObject    handle to qc_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in norm_button.
function norm_button_Callback(hObject, eventdata, handles)
% hObject    handle to norm_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in analyze_button.
function analyze_button_Callback(hObject, eventdata, handles)
% hObject    handle to analyze_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function cell_info_table_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cell_info_table (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
