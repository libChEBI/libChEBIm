function chebiEntity = getChebiEntity(id)
    javaaddpath('libChEBI.jar');
    chebiEntity = javaObject('libchebi.ChebiEntity', id);
end