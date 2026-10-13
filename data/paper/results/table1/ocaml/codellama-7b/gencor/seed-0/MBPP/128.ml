
let rec long_words (n : int) (str : string) : string list =
  if String.length str > n then begin
    str :: (long_words n (String.sub str 1 (String.length str - 1)))
  end else begin
    []
  end

let () =
  print_endline (List.fold_left (fun res x -> res ^ " " ^ x) "" (long_words 5 "hello world goodbye good morning"));

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find words that are longer than n characters from a given list of words. *)
