
let rec remove_dirty_chars (string : string) (second_string : string) : string =
  match string with
  | "" -> ""
  | _ -> let lowercased_char = Char.lowercase_ascii (String.get string 0) in
         let cleaned_string = if Buffer.length second_string > 0 &&
            Buffer.of_seq (String.to_seq second_string)
            |> Buffer.sub 0 1 |> Char.lowercase_ascii = lowercased_char
           then ""
           else String.make 1 lowercased_char in
         cleaned_string ^ remove_dirty_chars (String.sub string 1 (String.length string - 1)) second_string;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
