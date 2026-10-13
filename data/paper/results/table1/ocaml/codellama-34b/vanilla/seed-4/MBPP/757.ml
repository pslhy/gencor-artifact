let rec count_reverse_pairs (test_list : string list) : int = 
    (* base case: empty list with no pairs *)
    if test_list = [] then 0
    (* recursive case: check if the current element
       and its reverse can be found in the rest of the list *)
    else if List.mem (List.hd test_list) (List.map (String.reverse) test_list) then 
        1 + count_reverse_pairs (List.tl test_list)
    else count_reverse_pairs (List.tl test_list)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
