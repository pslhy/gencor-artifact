(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
let rec re_arrange_array (arr : int list) (n : int) : int list =
  let rec partition xs acc_neg acc_pos =
    match xs with
    | [] -> List.rev acc_neg, List.rev acc_pos
    | h :: t ->
      if h < 0 then partition t (h :: acc_neg) acc_pos
      else partition t acc_neg (h :: acc_pos)
  in
  let neg, pos = partition arr [] [] in
  List.append (List.take (List.length neg) (List.append (List.rev neg) pos)) (List.drop n pos)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:16: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec re_arrange_array (arr : int list) (n : int) : int list =
  let rec partition xs acc_neg acc_pos =
    match xs with
    | [] -> List.rev acc_neg, List.rev acc_pos
    | h :: t ->
      if h < 0 then partition t (h :: acc_neg) acc_pos
      else partition t acc_neg (h :: acc_pos)
  in
  let neg, pos = partition arr [] [] in
  List.append (List.append (List.rev neg) (List.take (List.length neg) pos)) (List.drop n pos)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:44: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec re_arrange_array (arr : int list) (n : int) : int list =
  let rec partition xs acc_neg acc_pos =
    match xs with
    | [] -> List.rev acc_neg, List.rev acc_pos
    | h :: t ->
      if h < 0 then partition t (h :: acc_neg) acc_pos
      else partition t acc_neg (h :: acc_pos)
  in
  let neg, pos = partition arr [] [] in
  let neg_part = if List.length neg > n then List.take n (List.rev neg) else List.rev neg in
  List.append neg_part (List.drop n pos)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:46: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec re_arrange_array (arr : int list) (n : int) : int list =
  let rec partition xs acc_neg acc_pos =
    match xs with
    | [] -> List.rev acc_neg, List.rev acc_pos
    | h :: t ->
      if h < 0 then partition t (h :: acc_neg) acc_pos
      else partition t acc_neg (h :: acc_pos)
  in
  let neg, pos = partition arr [] [] in
  let neg_part = if List.length neg > n then List.rev_append (List.rev (List.take n neg)) (List.drop n neg) else List.rev neg in
  List.append neg_part pos

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:73: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec re_arrange_array (arr : int list) (n : int) : int list =
  let rec partition xs acc_neg acc_pos =
    match xs with
    | [] -> List.rev acc_neg, List.rev acc_pos
    | h :: t ->
      if h < 0 then partition t (h :: acc_neg) acc_pos
      else partition t acc_neg (h :: acc_pos)
  in
  let neg, pos = partition arr [] [] in
  let neg_part = if List.length neg > n then List.rev_append (List.take n neg) (List.drop n neg) else List.rev neg in
  List.append neg_part pos

