let rec remove_length (test_str : string) (k : int) : string =
    let len = String.length test_str in
    if len = k then
        ""
    else if len = 0 then
        test_str
    else if len < k then
        remove_length (String.sub test_str 1 (len - 1)) k
    else if len > k then
        remove_length (String.sub test_str 1 (len - 2)) k
    else
        remove_length (String.sub test_str 1 (len - 1)) k



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
