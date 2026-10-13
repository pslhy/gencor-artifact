let rec find_tuples (test_list :  (int * int * int) list) (k : int) :  (int * int * int) list = 
    (* base case: if the list is empty, return an empty list *)
    if test_list = [] then [] else
    (* if the first element of the tuple is not divisible by k, return an empty list *)
    if (fst test_list) mod k = 0 then
        (* if the second element of the tuple is not divisible by k, return an empty list *)
        if (snd test_list) mod k = 0 then
            (* if the third element of the tuple is not divisible by k, return an empty list *)
            if (trd test_list) mod k = 0 then
                (* if all elements are divisible by k, return the tuple as part of the result list *)
                [test_list] @ (find_tuples (List.tl test_list) (k))
            else
                (* if the third element is not divisible by k, return an empty list *)
                []
        else
            (* if the second element is not divisible by k, return an empty list *)
            []
    else
        (* if the first element is not divisible by k, return an empty list *)
        []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find tuples which have all elements divisible by k from the given list of tuples. *)
