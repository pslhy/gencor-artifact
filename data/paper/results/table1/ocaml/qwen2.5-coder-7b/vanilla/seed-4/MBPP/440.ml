let rec find_adverb_position (text : string) :  int * int * string = 
  let rec find_within start len =
    if len <= 0 then raise Not_found
    else
      let substr = String.sub text start len in
      match String.lowercase_ascii substr with
      | "quickly" | "slowly" | "loudly" -> (start, len, substr)
      | _ -> find_within (start + 1) (len - 1)
  in
  try
    find_within 0 (String.length text)
  with Not_found ->raise Not_found


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
