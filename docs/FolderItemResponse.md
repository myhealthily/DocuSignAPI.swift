# FolderItemResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**endPosition** | **String** | The last index position in the result set.  | [optional] 
**folderItems** | [FolderItemV2] | A list of the envelopes in the specified folder or folders.  | [optional] 
**nextUri** | **String** | The URI for the next chunk of records based on the search request. It is &#x60;null&#x60; if this is the last set of results for the search.  | [optional] 
**previousUri** | **String** | The URI for the prior chunk of records based on the search request. It is &#x60;null&#x60; if this is the first set of results for the search.  | [optional] 
**resultSetSize** | **String** | The number of results in this response. Because you can filter which entries are included in the response, this value is always less than or equal to the &#x60;totalSetSize&#x60;. | [optional] 
**startPosition** | **String** | The starting index position of the current result set. | [optional] 
**totalRows** | **String** | The total number of items in the result. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


