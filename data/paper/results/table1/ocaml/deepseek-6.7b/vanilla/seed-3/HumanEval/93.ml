let rec encode (message : string) : string =
  let vowel_replace c = 
    if not (Char.is_alpha c) then c 
    else ('E', 'I', 'A', 'O', 'U', 'e', 'i', 'a', 'o', 'u')
         |> List.map (fun v -> if c = v then v else Char.chr (Char.code c + 2))
         |> List.find (fun c -> c <> 'e' && c <> 'i' && c <> 'a' && c <> 'o' && c <> 'u')
  in
  String.mapi (fun i c -> if i % 2 = 0 then Char.uppercase_ascii c else Char.lowercase_ascii c) message
  |> String.map vowel_replace



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a message, and encodes in such a *)
(*     way that it swaps case of all letters, replaces all vowels in *)
(*     the message with the letter that appears 2 places ahead of that *)
(*     vowel in the english alphabet. *)
(*     Assume only letters. *)
(*     Examples: *)
(*     >>> encode "test" *)
(*     "TGST" *)
(*     >>> encode "This is a message" *)
(*     "tHKS KS C MGSSCGG" *)
