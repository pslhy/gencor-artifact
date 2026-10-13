let rec intersection_array (array_nums1 : int list) (array_nums2 : int list) : int list = 
    (* Declare and initialize new list for storing intersection *)
    let result : int list = []; 

    (* Loop through each element in array1 *)
    for i = 0 to (array_nums1.length - 1) do
        (* Loop through each element in array2 *)
        for j = 0 to (array_nums2.length - 1) do 
            (* Check if element at current index in array1 is equal to current index in array2 *)
            if array_nums1[i] = array_nums2[j] then
                (* Add element to result list if condition is satisfied *)
                result.add(array_nums1[i]);
        done;
    done;

    (* Return result list *)
    result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the intersection of two lists. *)
