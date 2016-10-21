function chebiEntity = getChebiEntity(id)
    dpath = javaclasspath('-dynamic');
    paths = size(dpath, 1);
    found_libchebi = 0;
    
    for i = 1:paths;
        path = dpath{i, end};
        [~, name, ext] = fileparts(path);
        
        if strcmp(name, 'libChEBIj-1.0.0') && strcmp(ext, '.jar')
            found_libchebi = 1;
        end
    end

    if ~found_libchebi
	folder = which('libChEBIj-1.0.0.jar');
        javaaddpath(folder);
    end
    
    chebiEntity = javaObject('uk.ac.manchester.libchebi.ChebiEntity', id);
end
