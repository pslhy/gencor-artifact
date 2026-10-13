let rec reverse_words (s : string) : string = 
  let rec trim s = 
    try Some (String.get s 0, String.sub s 1 ((String.length s) - 1)) with
      | Invalid_argument _ -> None in
  let rec collect_words left s =
    match trim s with
      | None -> List.rev left
      | Some (' ', rest) -> collect_words left rest
      | Some (c, rest) -> collect_words ((c :: left)) rest in
  let rec build_string words =
    match words with
      | [] -> ""
      | str :: [] -> str
      | str :: rest -> str^(build_string rest)^(String.make 1 ' ') in
  let words = collect_words [] s in
  build_string (List.rev (List.map (fun str -> String.escaped (String.trim str)) words))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
