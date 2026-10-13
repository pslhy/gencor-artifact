let rec find_adverbs (text : string) : string =
  let rec loop (i : int) (j : int) : bool =
    if j >= String.length text then false
    else if text.[j] = ' ' then loop (j + 1) (j + 2)
    else if text.[j] = 'l' && String.sub text i (j - i) |> String.ends_with "ly" then 
      print_endline (String.sub text i (j - i));
      true
    else loop i (j + 1)
  in if loop 0 0 then text else "No adverbs found"



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
