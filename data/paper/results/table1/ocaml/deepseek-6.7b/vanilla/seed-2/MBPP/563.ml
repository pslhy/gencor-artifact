let rec extract_values (text : string) : string list =
  let open Str in
  let regexp = regexp "\".*?\"" in
  let rec helper acc = function
    | [] -> List.rev acc
    | x :: xs ->
       helper (try (String.sub x (regexp_search_forward regexp x 0) (regexp_match_end()) :: acc)
                  with Not_found -> acc) xs in
  helper [] (split (regexp " ") text)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
