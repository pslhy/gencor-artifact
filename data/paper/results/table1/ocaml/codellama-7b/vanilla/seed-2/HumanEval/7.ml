let rec filter_by_substring (strings : string list) (substring : string) : string list =
  match strings with
  | [] -> []
  | s :: xs ->
    if String.is_substring ~substring s then s :: filter_by_substring xs substring else filter_by_substring xs substring

let () =
  let input_strings = ["abc"; "bacd"; "cde"; "array"] in
  let substring = "a" in
  let result = filter_by_substring input_strings substring in
  Printf.printf "Result: %s\n" (result |> List.sexp_of_t |> Sexp.to_string_hum)



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
