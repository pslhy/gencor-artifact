let rec find_adverb_position (text : string) :  int * int * string =
  let length = String.length text in
  let rec scan pos =
    if pos >= length then raise Not_found
    else if text.[pos] = ' ' then scan (pos + 1)
    else
      try
        if text.[pos + 1] = 'n' then
          match text.[pos + 2] with
          | 't' -> pos, pos + 3, "ant"
          | _ -> raise Not_found
        else if text.[pos + 1] = 'r' then
          match text.[pos + 2] with
          | 'e' -> pos, pos + 3, "ere"
          | _ -> raise Not_found
        else
          raise Not_found
      with
        Not_found -> scan (pos + 1)
  in
  try
    scan 0
  with
    Not_found -> failwith "No adverb found in the sentence"

let test = find_adverb_position "She ran quickly"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
