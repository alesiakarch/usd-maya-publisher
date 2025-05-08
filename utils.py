# list of usd libraries ready to be queries because documentation is who


import  mayaUsdMayaReferenceUtils, mayaUsdOptions, mayaUsdAddMayaReference,
mayaUsdDuplicateAsMayaDataOptions, mayaUsdUtils, mayaUsdMergeToUSDOptions,
mayaUsdCacheMayaReference, mayaUsdLibRegisterStrings, mayaUsdMergeToUsd

help(mayaUsdMayaReferenceUtils)
help(mayaUsdOptions)
help(mayaUsdAddMayaReference)
help(mayaUsdDuplicateAsMayaDataOptions)
help(mayaUsdUtils)
help(mayaUsdMergeToUSDOptions)
help(mayaUsdCacheMayaReference)
help(mayaUsdLibRegisterStrings)
help(mayaUsdMergeToUsd)

    # getDagPathUsdTypeName(dagPath)
    #     Retrieves the type name of the USD object that created the node pointed to by the DAG path.
    #     This type name is kept in the 'USD_typeName' attribute.
    #     Returns None if the attribute is not found.

    #import maya.cmds as cmds

# # finds the stage path from open stage
# def get_usd_stage_path():
#     proxy_shapes = cmds.ls(type='mayaUsdProxyShape')
#     if len(proxy_shapes) != 1:
#         raise RuntimeError(f"Expected exactly one USD proxy shape, found {len(proxy_shapes)}.")
    
#     file_path = cmds.getAttr(f"{proxy_shapes[0]}.filePath")
#     return file_path