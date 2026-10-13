(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec histogram (test : string) : (string * int) list =
  let rec rank_aux (count : int) (letter : string) (rest : string list) : (string * int) list=
    match rest with
    | [] -> [(letter, count)]
    | h::t -> if h = letter then rank_aux (count + 1) letter t else
      let rank = rank_aux 1 h t in
      let tail = rank_aux count letter t in
      rank @ tail
  in
  let rec max_count_letter (lst : (string * int) list) : int =
    match lst with 
    | [] -> 0
    | (_, count)::t -> max count (max_count_letter t)
  in
  let rec filter_more_than_max (lst : (string * int) list) (max_count : int) : (string * int) list=
    match lst with
    | [] -> []
    | (letter, count)::t -> if count < max_count then filter_more_than_max t max_count else (letter, count)::(filter_more_than_max t max_count)
  in
  let words = List.rev (Str.split (Str.regexp " ") test) in
  let rank = rank_aux 1 (List.hd words) (List.tl words) in
  let max_count = max_count_letter rank in
  List.rev (filter_more_than_max rank max_count)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:20:25: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec histogram (test : string) : (string * int) list =
  let spaces = Str.regexp " " in
  let words = Str.split spaces test in
  let rec rank_aux (count : int) (letter : string) (rest : string list) : (string * int) list =
    match rest with
    | [] -> [(letter, count)]
    | h::t -> if h = letter then rank_aux (count + 1) letter t else
      let rank = rank_aux 1 h t in
      let tail = rank_aux count letter t in
      rank @ tail
  in
  let rec max_count_letter (lst : (string * int) list) : int =
    match lst with 
    | [] -> 0
    | (_, count)::t -> max count (max_count_letter t)
  in
  let rec filter_more_than_max (lst : (string * int) list) (max_count : int) : (string * int) list=
    match lst with
    | [] -> []
    | (letter, count)::t -> if count < max_count then filter_more_than_max t max_count else (letter, count)::(filter_more_than_max t max_count)
  in
  let rank = rank_aux 1 (List.hd words) (List.tl words) in
  let max_count = max_count_letter rank in
  List.rev (filter_more_than_max rank max_count)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:16: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec histogram (test : string) : (string * int) list =
  let words = Str.split (Str.regexp " ") test in
  let rec rank_aux (count : int) (letter : string) (rest : string list) : (string * int) list=
    match rest with
    | [] -> [(letter, count)]
    | h::t -> if h = letter then rank_aux (count + 1) letter t else
      let rank = rank_aux 1 h t in
      let tail = rank_aux count letter t in
      rank @ tail
  in
  let rec max_count_letter (lst : (string * int) list) : int =
    match lst with 
    | [] -> 0
    | (_, count)::t -> max count (max_count_letter t)
  in
  let rec filter_more_than_max (lst : (string * int) list) (max_count : int) : (string * int) list=
    match lst with
    | [] -> []
    | (letter, count)::t -> if count < max_count then filter_more_than_max t max_count else (letter, count)::(filter_more_than_max t max_count)
  in
  let rank = rank_aux 1 (List.hd words) (List.tl words) in
  let max_count = max_count_letter rank in
  List.rev (filter_more_than_max rank max_count)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:15: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec histogram (test : string) : (string * int) list =
  let words = Str.split (Str.regexp " ") test in
  let rec rank_aux (count : int) (letter : string) (rest : string list) : (string * int) list=
    match rest with
    | [] -> [(letter, count)]
    | h::t -> if h = letter then rank_aux (count + 1) letter t else
               let rank = rank_aux 1 h t in
               let tail = rank_aux count letter t in
               rank @ tail
  in
  let rec max_count_letter (lst : (string * int) list) : int =
    match lst with 
    | [] -> 0
    | (_, count)::t -> max count (max_count_letter t)
  in
  let rec filter_more_than_max (lst : (string * int) list) (max_count : int) : (string * int) list=
    match lst with
    | [] -> []
    | (letter, count)::t -> if count > max_count then (letter, count) :: filter_more_than_max t max_count else filter_more_than_max t max_count
  in
  let rank = rank_aux 1 (List.hd words) (List.tl words) in
  let max_count = max_count_letter rank in
  filter_more_than_max rank max_count

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:15: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec histogram (test : string) : (string * int) list =
  let words = String.split_on_char ' ' test in
  let rec rank_aux (count : int) (letter : string) (rest : string list) : (string * int) list=
    match rest with
    | [] -> [(letter, count)]
    | h::t -> if h = letter then rank_aux (count + 1) letter t else
      let rank = rank_aux 1 h t in
      let tail = rank_aux count letter t in
      rank @ tail
  in
  let rec max_count_letter (lst : (string * int) list) : int =
    match lst with 
    | [] -> 0
    | (_, count)::t -> max count (max_count_letter t)
  in
  let rec filter_more_than_max (lst : (string * int) list) (max_count : int) : (string * int) list=
    match lst with
    | [] -> []
    | (letter, count)::t -> if count > max_count then (letter, count) :: filter_more_than_max t max_count else filter_more_than_max t max_count
  in
  let rank = rank_aux 1 (List.hd words) (List.tl words) in
  let max_count = max_count_letter rank in
  filter_more_than_max rank max_count

