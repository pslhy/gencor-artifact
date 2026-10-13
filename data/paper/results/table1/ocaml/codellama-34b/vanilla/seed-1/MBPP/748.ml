let rec capital_words_spaces (str1 : string) : string =
    let str2 = String.lowercase str1 in
    let rec helper i w acc =
      if i >= String.length str2 then List.rev acc
      else if Char.is_uppercase str2.[i] then
        let w' = String.sub str2 i (String.index str2 (i+1) - i) in
        helper (i + 1) w' (w' :: " " :: acc)
      else helper (i + 1) w (str2.[i] :: acc)
    in
    helper 0 [] |> String.concat ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
