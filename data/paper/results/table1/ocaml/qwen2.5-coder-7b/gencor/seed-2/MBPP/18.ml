
let rec remove_dirty_chars (string : string) (second_string : string) : string = 
    let rec helper chars result = 
        match chars with
        | [] -> result
        | c :: rest -> 
            if List.mem c (String.to_seq second_string |> List.of_seq) then 
                helper rest result
            else 
                helper rest (c :: result)
    in
    helper (String.to_seq string |> List.of_seq) [] |> List.rev |> String.of_seq

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
