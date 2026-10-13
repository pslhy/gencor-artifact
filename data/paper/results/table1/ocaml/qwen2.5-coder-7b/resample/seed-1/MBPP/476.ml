(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the largest and smallest value in a given list. *)
let rec big_sum (nums : int list) : int = 
  let rec findMinMax acc = function
    | [] -> acc
    | h::t ->
      if h > fst acc then findMinMax (h, snd acc) t
      elif h < snd acc then findMinMax (fst acc, h) t
      else findMinMax acc t
  in
  match nums with
  | [] -> failwith "Empty list"
  | _ -> let (min, max) = findMinMax (List.hd nums, List.hd nums) (List.tl nums) in min + max

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:24: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec big_sum (nums : int list) : int = 
  let rec findMinMax acc = function
    | [] -> acc
    | h::t ->
      if h > fst acc then findMinMax (h, snd acc) t
      elif h < snd acc then findMinMax (fst acc, h) t
      else findMinMax acc t
  in
  match nums with
  | [] -> failwith "Empty list"
  | _ -> let (min, max) = findMinMax (List.hd nums, List.hd nums) nums in min + max

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:24: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec big_sum (nums : int list) : int = 
  let rec findMinMax acc = function
    | [] -> acc
    | h::t ->
      if h > fst acc then findMinMax (h, snd acc) t
      elif h < snd acc then findMinMax (fst acc, h) t
      else findMinMax acc t
  in
  match nums with
  | [] -> failwith "Empty list"
  | _ -> let (min, max) = findMinMax (List.hd nums, List.hd nums) (List.tl nums) in min + max

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:24: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec big_sum (nums : int list) : int = 
  let rec findMinMax acc = function
    | [] -> acc
    | h::t ->
      if h > fst acc then findMinMax (h, snd acc) t
      elif h < snd acc then findMinMax (fst acc, h) t
      else findMinMax acc t
  in
  match nums with
  | [] -> failwith "Empty list"
  | _ -> let (min, max) = findMinMax (List.hd nums, List.hd nums) (List.tl nums) in min + max

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:24: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec big_sum (nums : int list) : int = 
  let rec findMinMax acc = function
    | [] -> acc
    | h::t ->
      if h > fst acc then findMinMax (h, snd acc) t
      elif h < snd acc then findMinMax (fst acc, h) t
      else findMinMax acc t
  in
  match nums with
  | [] -> failwith "Empty list"
  | _ -> let (min, max) = findMinMax (List.hd nums, List.hd nums) (List.tl nums) in min + max

