(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list contains consecutive numbers or not. *)
let rec check_Consecutive (l : int list) : bool =
  match l with
  | [] -> false
  | hd :: tl ->
      if (List.mem hd tl) then
        false
      else
        check_Consecutive tl

let consecutive_nums (l : int list) : bool =
  let sorted_list = List.sort compare l in
  let sorted_list : int list = List.filter (fun x y -> x = y + 1) sorted_list in
  check_Consecutive sorted_list

let test_consecutive_nums () =
  assert (consecutive_nums([1; 2; 3] = true));
  assert (consecutive_nums([1; 2; 4] = false));
  assert (consecutive_nums([1; 2; 3; 5] = false));
  assert (consecutive_nums([1; 2; 4; 5] = false));
  assert (consecutive_nums([1; 2; 3; 4; 5] = true));
  assert (consecutive_nums([1; 2; 3; 4; 6] = false));
  ()

test_consecutive_nums ();;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:24:23: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_Consecutive (l : int list) : bool =
  match l with
  | [] -> true
  | hd :: tl ->
      if hd + 1 = List.hd tl then
        check_Consecutive (tl)
      else
        false

let consecutive_nums (l : int list) : bool =
  let sorted_list = List.sort compare l in
  let sorted_list (list : int list) = List.filter (fun x y -> x = y + 1) sorted_list in
  check_Consecutive (sorted_list)

let test_consecutive_nums () =
  assert (consecutive_nums([1; 2; 3] = true));
  assert (consecutive_nums([1; 2; 4] = false));
  assert (consecutive_nums([1; 2; 3; 5] = false));
  assert (consecutive_nums([1; 2; 4; 5] = false));
  assert (consecutive_nums([1; 2; 3; 4; 5] = true));
  assert (consecutive_nums([1; 2; 3; 4; 6] = false));
  ()

test_consecutive_nums ();;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:24:23: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_Consecutive (l : int list) : bool =
  match l with
  | [] -> true
  | hd :: tl ->
      if hd + 1 = List.hd tl then
        check_Consecutive (tl)
      else
        false

let consecutive_nums (l : int list) : bool =
  let sorted_list = List.sort compare l in
  let filtered_list = List.filter (fun x y -> x = y + 1) sorted_list in
  check_Consecutive filtered_list

let test_consecutive_nums () =
  assert (consecutive_nums([1; 2; 3] = true));
  assert (consecutive_nums([1; 2; 4] = false));
  assert (consecutive_nums([1; 2; 3; 5] = false));
  assert (consecutive_nums([1; 2; 4; 5] = false));
  assert (consecutive_nums([1; 2; 3; 4; 5] = true));
  assert (consecutive_nums([1; 2; 3; 4; 6] = false));
  ()

test_consecutive_nums ();;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:24:23: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_Consecutive (l : int list) : bool =
  match l with
  | [] -> true
  | hd :: tl ->
      if hd + 1 = List.hd tl then
        check_Consecutive (tl)
      else
        false

let consecutive_nums (l : int list) : bool =
  let sorted_list = List.sort compare l in
  let filtered_list = List.filter (fun x y -> x = y + 1) sorted_list in
  check_Consecutive filtered_list

let test_consecutive_nums () =
  assert (consecutive_nums([1; 2; 3] = true));
  assert (consecutive_nums([1; 2; 4] = false));
  assert (consecutive_nums([1; 2; 3; 5] = false));
  assert (consecutive_nums([1; 2; 4; 5] = false));
  assert (consecutive_nums([1; 2; 3; 4; 5] = true));
  assert (consecutive_nums([1; 2; 3; 4; 6] = false));
  ()

test_consecutive_nums ();;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:24:23: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_Consecutive (l : int list) : bool =
  match l with
  | [] -> true
  | hd :: tl ->
      if hd + 1 = List.hd tl then
        check_Consecutive (tl)
      else
        false

let consecutive_nums (l : int list) : bool =
  let sorted_list = List.sort compare l in
  let filtered_list = List.filter (fun x y -> x = y + 1) sorted_list in
  check_Consecutive filtered_list

let test_consecutive_nums () =
  assert (consecutive_nums([1; 2; 3] = true));
  assert (consecutive_nums([1; 2; 4] = false));
  assert (consecutive_nums([1; 2; 3; 5] = false));
  assert (consecutive_nums([1; 2; 4; 5] = false));
  assert (consecutive_nums([1; 2; 3; 4; 5] = true));
  assert (consecutive_nums([1; 2; 3; 4; 6] = false));
  ()

test_consecutive_nums ();;

