let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int = 
    (* Declare and initialize local variables for the indices *)
    let (idx1, idx2) = (0, 0) in 
   
    (* Loop until k-1 is reached or one of the arrays is exhausted *)
    while idx1 + idx2 <= k - 1 do
        if idx1 = Array.length arr1 then
            (* If the first array is exhausted, return the current element of the second array *)
            arr2.(idx2)
        else if idx2 = Array.length arr2 then
            (* If the second array is exhausted, return the current element of the first array *)
            arr1.(idx1)
        else
            (* If neither array is exhausted, return the smaller of the two *)
            min (arr1.(idx1)) (arr2.(idx2))
done;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
