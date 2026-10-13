(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
let rec find_adverbs (text : string) : string =
    let rec loop i = 
        if i < String.length text then 
            let word_len = Atdgen_coq.String.rindex_from text i ' ' in
            if word_len > 4 && String.sub text (i - word_len) 4 = "olly" then
                String.sub text (i - word_len) word_len
            else 
                loop (i + word_len + 1)
        else ""
    in 
    loop 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:28: Unbound module "Atdgen_coq" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_adverbs (text : string) : string =
  let rec loop i = 
    if i < String.length text then 
      let word_len = String.index_from text i ' ' in
      if word_len > 4 && String.sub text (i - word_len) 4 = "olly" then
        String.sub text (i - word_len) word_len
      else 
        loop (i + word_len + 1)
    else ""
  in 
  loop 0

