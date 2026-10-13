let rec remove_length (test_str : string) (k : int) : string =
  match test_str with
  | "" -> ""
  | test_str ->
      let trimmed_test_str = String.trim test_str in
      let words = trimmed_test_str |> String.split_on_char ' ' in
      let () = print_endline trimmed_test_str in
      let rec remove_helper (k : int) (words : string list) : string list =
        match words with
        | [] -> []
        | word :: rest -> if String.length word = k then remove_helper k rest else word :: remove_helper k rest
      in
      let filtered_words = remove_helper k words in
      let filtered_test_str = String.concat " " filtered_words in
      if filtered_test_str = "" then "" else filtered_test_str
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
