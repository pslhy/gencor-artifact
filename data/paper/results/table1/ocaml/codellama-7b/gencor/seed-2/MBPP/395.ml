
let rec first_non_repeating_character (str1 : string) : string option =
    match str1 with
        | "" -> None
        | str2 ->
            let rev_str2 = String.to_seq str2 |> List.of_seq |> List.rev in
            let is_repeated = ref false in
            let rec find_first c = function
                | h :: t ->
                    if c <> h then find_first c t
                    else if !is_repeated then find_first c t
                    else begin
                        is_repeated := true;
                        Some h
                    end
                | [] -> None
            in find_first (List.nth rev_str2 0) rev_str2

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
