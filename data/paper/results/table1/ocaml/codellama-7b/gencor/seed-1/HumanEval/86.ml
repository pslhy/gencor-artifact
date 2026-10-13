
let rec anti_shuffle (s : string) : string =
  let words = String
				       .split_on_char(' ')
				       .
				       (List.map ~fst:String.lowercase_ascii
				       .
				       (List.concat_map ~fst:String.to_seq)
				       .
				       (List.sort (fun c1 c2 -> compare c1 c2) ~compare:Char.compare))
				       .
				       (List.map ~fst:String.to_seq)
				       .
				       (List.map ~fst:String.of_seq)
				       .
				       (List.filter_map ~fst:!String.sub (List.length s))
				       .
				       (List.map ~fst:String.capitalize_ascii)
				       .
				       (List.map ~fst:(fun s -> " " ^ s))
				       .
				       (List.fold_left ~fst:String.concat ~snd:"" |> String.lowercase_ascii)
				       .
				       (List.map ~fst:(|>)` Vertrag
   )
   .
   (List.map ~fst:String.capitalize_ascii)
   .
   (List.filter_map ~fst:String.capitalize_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.lowercase_ascii)
   .
   (List.map ~fst:String.uppercase_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.uppercase_ascii)
   .
   (List.map ~fst:String.to_seq)
   .
   (List.map ~fst:String.capitalize_ascii)
   .
   (List.filter_map ~fst:String.capitalize_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.uppercase_ascii)
   .
   (List.map ~fst:String.lowercase_ascii)

   .
   (List.map ~fst:String.capitalize_ascii)
   .
   (List.filter_map ~fst:String.capitalize_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.uppercase_ascii)
   .
   (List.map ~fst:String.to_seq)
   .
   (List.map ~fst:String.capitalize_ascii)
   .
   (List.filter_map ~fst:String.capitalize_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.lowercase_ascii)
   .
   (List.map ~fst:String.lowercase_ascii)
   .
   (List.filter_map ~fst:String.lowercase_ascii)

   .
   (List.map ~fst:String.uppercase_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.lowercase_ascii)
   .
   (List.map ~fst:String.uppercase_ascii)
   .
   (List.filter_map ~fst:String.uppercase_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.lowercase_ascii)
   .
   (List.map ~fst:String.lowercase_ascii)
   .
   (List.filter_map ~fst:String.lowercase_ascii)

   .
   (List.map ~fst:String.uppercase_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.uppercase_ascii)
   .
   (List.map ~fst:String.lowercase_ascii)
   .
   (List.filter_map ~fst:String.lowercase_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.lowercase_ascii)
   .
   (List.filter_map ~fst:String.lowercase_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.lowercase_ascii)
   .
   (List.filter_map ~fst:String.lowercase_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.lowercase_ascii)
   .
   (List.filter_map ~fst:String.lowercase_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.lowercase_ascii)
   .
   (List.filter_map ~fst:String.lowercase_ascii)

   .
   (List.map ~fst:String.uppercase_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.uppercase_ascii)
   .
   (List.filter_map ~fst:String.uppercase_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.uppercase_ascii)
   .
   (List.map ~fst:String.capitalize_ascii)
   .
   (List.filter_map ~fst:String.capitalize_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.uppercase_ascii)
   .
   (List.map ~fst:String.lowercase_ascii)
   .
   (List.filter_map ~fst:String.lowercase_ascii)

   .
   (List.map ~fst:String.uppercase_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.uppercase_ascii)
   .
   (List.filter_map ~fst:String.uppercase_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.uppercase_ascii)
   .
   (List.map ~fst:String.capitalize_ascii)
   .
   (List.filter_map ~fst:String.capitalize_ascii)
   .
   (List.map ~fst:(fun s -> " " ^ s))
   .
   (List.fold_left ~fst:String.concat ~snd:"" |> String.lowercase_ascii)
   .
   (List.map ~fst:String.lowercase_ascii)
   .
   (List.filter_map ~fst:String.lowercase_ascii)

   .
   (List.map ~fst:String.uppercase_ascii)
   .
   (List.map ~fst:(fun

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a string and returns an ordered version of it. *)
(*     Ordered version of string, is a string where all words (separated by space) *)
(*     are replaced by a new word where all the characters arranged in *)
(*     ascending order based on ascii value. *)
(*     Note: You should keep the order of words and blank spaces in the sentence. *)
(*     For example: *)
(*     >>> anti_shuffle "Hi" *)
(*     "Hi" *)
(*     >>> anti_shuffle "hello" *)
(*     "ehllo" *)
(*     >>> anti_shuffle "Hello World!!!" *)
(*     "Hello !!!Wdlor" *)
