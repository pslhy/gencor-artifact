let rec histogram (test : string) : (string * int) list =
  let rec aux xList count acc =
    match xList with
    | [] -> acc
    | h::t -> if h != count then aux t (count + 1) ((h, count)::acc) else aux t (count + 1) acc
  in
  let sorted_list = List.sort (fun (a, _) (b, _) -> compare a b) (List.map (fun c -> (String.make 1 c, 1)) (String.to_list test)) in
  aux sorted_list 1 []

let rec most_repeated_count lst =
  match lst with
  | h::t -> max (snd h) (most_repeated_count t)
  | [] -> -1

let rec most_repeated_letters lst count =
  match lst with
  | h::t -> if (snd h) == count then (fst h)::(most_repeated_letters t count) else most_repeated_letters t count
  | [] -> []

let rec remove_duplicates lst =
  match lst with
  | h::t -> if List.mem h t then remove_duplicates t else h::(remove_duplicates t)
  | [] -> []

let histogram test =
  let count = most_repeated_count (histogram test) in
  let letters = most_repeated_letters (histogram test) count in
  List.map (fun letter -> (letter, count)) (remove_duplicates letters)



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string representing a space separated lowercase letters, return an association list *)
(*     of the letter with the most repetition and containing the corresponding count. *)
(*     If several letters have the same occurrence, return all of them. *)
(*     Example: *)
(*     >>> histogram "a b c" *)
(*     [("a", 1); ("b", 1); ("c", 1)] *)
(*     >>> histogram "a b b a" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "a b c a b" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "b b b b a" *)
(*     [("b", 4)] *)
(*     >>> histogram "" *)
(*     [] *)
