
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list = 
    (* base case: if k is equal to zero, 
    returns the unchanged input list 
    *)
    if k = 0 then
        input
    (* recursively calls the function for the list till the kth position
    and returns the concatenation of the kth element and the recursion result
    *)
    else 
        let head,tail = (List.hd input), (List.tl input) in 
        head :: reverse_Array_Upto_K (tail) (k-1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
