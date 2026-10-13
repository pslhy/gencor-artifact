(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
let rec re_arrange_array (arr : int list) (n : int) : int list =
    let rec partition_neg_pos (neg_acc : int list) (pos_acc : int list) : int list * int list =
        match neg_acc with
        | [] -> (neg_acc, pos_acc)
        | x :: xs when x < 0 ->
            let (new_neg_acc, new_pos_acc) = partition_neg_pos xs pos_acc in
            (x :: new_neg_acc, new_pos_acc)
        | x :: xs ->
            let (new_neg_acc, new_pos_acc) = partition_neg_pos xs pos_acc in
            (neg_acc, x :: new_pos_acc)
    in
    match arr with
    | [] -> []
    | x :: xs ->
        let (neg_acc, pos_acc) = partition_neg_pos [] [] in
        let (neg_first, pos_first) = List.take n neg_acc, List.drop n pos_acc in
        let (pos_rest, neg_rest) = (List.take (n - List.length neg_first) pos_acc, List.drop (n - List.length neg_first) pos_acc) in
        neg_first @ neg_rest @ pos_first @ pos_rest

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:38: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec re_arrange_array (arr : int list) (n : int) : int list =
    let rec partition_neg_pos (neg_acc : int list) (pos_acc : int list) : int list * int list =
        match neg_acc with
        | [] -> (neg_acc, pos_acc)
        | x :: xs when x < 0 ->
            let (new_neg_acc, new_pos_acc) = partition_neg_pos xs pos_acc in
            (x :: new_neg_acc, new_pos_acc)
        | x :: xs ->
            let (new_neg_acc, new_pos_acc) = partition_neg_pos xs pos_acc in
            (neg_acc, x :: new_pos_acc)
    in
    match arr with
    | [] -> []
    | x :: xs ->
        let (neg_acc, pos_acc) = partition_neg_pos [] [] in
        let (neg_first, pos_first) = List.take n neg_acc, List.take n pos_acc in
        let (pos_rest, neg_rest) = (List.take (n - List.length neg_first) pos_acc, List.drop (n - List.length neg_first) pos_acc) in
        neg_first @ neg_rest @ pos_first @ pos_rest

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:38: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec re_arrange_array (arr : int list) (n : int) : int list =
  let rec partition_neg_pos (neg_acc : int list) (pos_acc : int list) : int list * int list =
    match neg_acc with
    | [] -> (neg_acc, pos_acc)
    | x::xs when x < 0 ->
      let (new_neg_acc, new_pos_acc) = partition_neg_pos xs pos_acc in
      (x::new_neg_acc, new_pos_acc)
    | x::xs ->
      let (new_neg_acc, new_pos_acc) = partition_neg_pos xs pos_acc in
      (neg_acc, x::new_pos_acc)
  in
  match arr with
  | [] -> []
  | x::xs ->
    let (neg_acc, pos_acc) = partition_neg_pos [] [] in
    let (neg_first, pos_first) = List.take n neg_acc, List.take n pos_acc in
    let (pos_rest, neg_rest) = (List.take (n - List.length neg_first) pos_acc, List.drop (n - List.length neg_first) pos_acc) in
    neg_first @ neg_rest @ pos_first @ pos_rest

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:34: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec re_arrange_array (arr : int list) (n : int) : int list =
  let rec partition_neg_pos (neg_acc : int list) (pos_acc : int list) : int list * int list =
    match neg_acc with
    | [] -> (neg_acc, pos_acc)
    | x::xs when x < 0 ->
      let (new_neg_acc, new_pos_acc) = partition_neg_pos xs pos_acc in
      (x::new_neg_acc, new_pos_acc)
    | x::xs ->
      let (new_neg_acc, new_pos_acc) = partition_neg_pos xs pos_acc in
      (neg_acc, x::new_pos_acc)
  in
  match arr with
  | [] -> []
  | x::xs ->
    let (neg_acc, pos_acc) = partition_neg_pos [] [] in
    let (neg_first, pos_first) = List.hd_n(n, neg_acc), List.hd_n(n, pos_acc) in
    let (pos_rest, neg_rest) = (List.hd_n(n - List.length neg_first, pos_acc), List.hd_n(n - List.length neg_first, neg_acc)) in
    neg_first @ neg_rest @ pos_first @ pos_rest

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:34: Unbound value "List.hd_n" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec re_arrange_array (arr : int list) (n : int) : int list =
  let rec partition_neg_pos (neg_acc : int list) (pos_acc : int list) : int list * int list =
    match neg_acc with
    | [] -> (neg_acc, pos_acc)
    | x::xs when x < 0 ->
      let (new_neg_acc, new_pos_acc) = partition_neg_pos xs pos_acc in
      (x::new_neg_acc, new_pos_acc)
    | x::xs ->
      let (new_neg_acc, new_pos_acc) = partition_neg_pos xs pos_acc in
      (neg_acc, x::new_pos_acc)
  in
  match arr with
  | [] -> []
  | x::xs ->
    let (neg_acc, pos_acc) = partition_neg_pos [] [] in
    let (neg_first, pos_first) = List.hd(neg_acc), List.hd(pos_acc) in
    let (pos_rest, neg_rest) = (List.hd(n - List.length neg_first), List.hd(n - List.length neg_first)) in
    neg_first @ neg_rest @ pos_first @ pos_rest

