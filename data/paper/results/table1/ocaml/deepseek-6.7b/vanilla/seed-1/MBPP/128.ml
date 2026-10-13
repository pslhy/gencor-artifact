let rec long_words (n : int) (str : string) : string list =
  match str with
  | "" -> []
  | _ -> begin
      let word_end = try String.index str ' ' with Not_found -> String.length str in
      let word = String.sub str 0 word_end in
      let rest = String.sub str (word_end + 1) (String.length str - word_end - 1) in
      if String.length word > n then
        word :: long_words n rest
      else
        long_words n rest
    end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find words that are longer than n characters from a given list of words. *)
