let rec find_adverbs (text : string) : string =
  let pattern = "\\bly\\b" in
  let regexp = Str.regexp pattern in
  try
    let loc = Str.search_forward regexp text 0 in
    let found = String.sub text loc ((String.length text) - loc) in
    let adverb = found in
    let remainder = String.sub text (loc + (String.length found)) ((String.length text) - loc - (String.length found)) in
    print_string ("Found adverb: " ^ adverb ^ " at position: " ^ string_of_int(loc) ^ '\n');
    find_adverbs remainder
  with Not_found -> "No more adverbs!"
  
let () =
  let text = "Ily suddenly realized that everything" in
  find_adverbs text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
