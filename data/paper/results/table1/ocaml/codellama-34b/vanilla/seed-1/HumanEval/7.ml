let rec filter_by_substring (strings : string list) (substring : string) : string list =
    (* Base case: If the input list is empty, return an empty list *)
    if strings = [] then
        []
    (* Recursive case: Check if the first string contains the substring, if it does,
     then add it to the list of strings that contain the substring. Then recurse on the
     rest of the list. *)
    else if Str.contains (List.hd strings) substring = true then
        List.hd strings :: filter_by_substring (List.tl strings) substring
    else
        filter_by_substring (List.tl strings) substring


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Filter an input list of strings only for ones that contain given substring *)
(*     >>> filter_by_substring [] "a" *)
(*     [] *)
(*     >>> filter_by_substring ["abc"; "bacd"; "cde"; "array"] "a" *)
(*     ["abc"; "bacd"; "array"] *)
