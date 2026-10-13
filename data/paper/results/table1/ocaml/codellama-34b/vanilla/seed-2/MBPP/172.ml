let rec count_occurance (s : string) : int =
    match s with
    | [] -> 0
    | (hd::tl) ->
        if (List.exists (fun x -> x == "std") hd) then 1
        else count_occurance (List.tl s)
    |_ -> count_occurance (List.tl s)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of occurence of the string 'std' in a given string. *)
