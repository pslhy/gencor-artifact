let rec find_adverb_position (text : string) :  int * int * string =
  let words = String.split('\n') in
  let adverb = List.find (fun (word : string) -> is_adverb (word) in
  (List.hd adverb, List.length adverb - 1, String.concatWith " " adverb)
and is_adverb (word : string) =
  List.mem (word : string) in
  List.map (fun (word : string) -> String.lower(word)) in
  [
    "here";
    "there";
    "everywhere";
    "nowhere";
    "always";
    "sometimes";
    "never";
    "soon";
    "later";
    "already";
    "not";
    "quickly";
    "slowly";
    "well";
    "badly";
    "quick";
    "slow";
    "good";
    "bad";
    "big";
    "small";
    "hot";
    "cold";
    "new";
    "old";
    "long";
    "short";
  ]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
