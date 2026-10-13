(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between available pairs in the given tuple list. *)
let rec max_difference (test_list :  (int * int) list) : int =
  if List.length test_list = 0 then
    0
  else
    let max_diff = ref 0 in
    let rec loop (head, tail) =
      if List.isEmpty tail then
        !max_diff
      else
        let current = head :: tail in
        let v = fst current in
        let w = snd current in
        let diff = w - v in
        max_diff := max !max_diff diff;
        loop (tail)
    loop test_list

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_difference (test_list :  (int * int) list) : int =
  if List.length test_list = 0 then
    0
  else
    let max_diff = ref 0 in
    let rec loop (head, tail) =
      if List.isEmpty tail then
        !max_diff
      else
        let current = head :: tail in
        let v = fst current in
        let w = snd current in
        let diff = w - v in
        max_diff := max !max_diff diff;
        loop tail
    loop test_list

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_difference (test_list :  (int * int) list) : int =
  if List.length test_list = 0 then
    0
  else
    let max_diff = ref 0 in
    let rec loop ((head : int), (tail : (int * int) list)) =
      if List.isEmpty tail then
        !max_diff
      else
        let current = head :: tail in
        let v = fst current in
        let w = snd current in
        let diff = w - v in
        max_diff := max !max_diff diff;
        loop (tail)
    loop (test_list :  (int * int) list)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_difference (test_list :  (int * int) list) : int =
  match test_list with
  | [] -> 0
  | [(head, tail)] -> 
      let max_diff = ref 0 in
      let rec loop ((head, tail):: tl) =
        if List.isEmpty tail then
          !max_diff
        else
          let current = head :: tail in
          let v = fst current in
          let w = snd current in
          let diff = w - v in
          max_diff := max !max_diff diff;
          loop tl
      loop test_list
  | _ -> failwith "Invalid input"

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_difference (test_list :  (int * int) list) : int =
  match test_list with
  | [] -> 0
  | [(head, tail)] -> 
      let max_diff = ref 0 in
      let rec loop ((head, tail) as t) =
        if List.isEmpty tail then
          !max_diff
        else
          let current = head :: tail in
          let v = fst current in
          let w = snd current in
          let diff = w - v in
          max_diff := max !max_diff diff;
          loop t
      loop test_list
  | _ -> failwith "Invalid input"

