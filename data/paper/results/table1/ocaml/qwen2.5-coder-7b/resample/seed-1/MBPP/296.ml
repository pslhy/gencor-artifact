(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
let rec get_Inv_Count (arr : int list) : int = 
  let rec mergeCountAndMerge (left : int list) (right : int list) =
    match (left, right) with
    | ([], right) -> right, 0
    | (left, []) -> left, 0
    | (h1 :: t1, h2 :: t2) ->
      if h1 <= h2 then
        let merged, count = mergeCountAndMerge t1 right in
        h1 :: merged, count
      else
        let merged, count = mergeCountAndMerge left t2 in
        h2 :: merged, count + List.length t1
  in
  let rec countAndMerge xs =
    match xs with
    | [] | [_] -> xs, 0
    | _ ->
      let mid = List.length xs / 2 in
      let left, count1 = countAndMerge (List.take xs mid) in
      let right, count2 = countAndMerge (List.drop xs mid) in
      let merged, count3 = mergeCountAndMerge left right in
      merged, count1 + count2 + count3
  in
  snd (countAndMerge arr)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:19:41: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Inv_Count (arr : int list) : int = 
  let rec mergeCountAndMerge (left : int list) (right : int list) =
    match (left, right) with
    | ([], right) -> right, 0
    | (left, []) -> left, 0
    | (h1 :: t1, h2 :: t2) ->
      if h1 <= h2 then
        let merged, count = mergeCountAndMerge t1 right in
        h1 :: merged, count
      else
        let merged, count = mergeCountAndMerge left t2 in
        h2 :: merged, count + List.length t1
  in
  let rec countAndMerge xs =
    match xs with
    | [] | [_] -> xs, 0
    | _ ->
      let mid = List.length xs / 2 in
      let left, count1 = countAndMerge (List.sub xs 0 mid) in
      let right, count2 = countAndMerge (List.sub xs mid (List.length xs - mid)) in
      let merged, count3 = mergeCountAndMerge left right in
      merged, count1 + count2 + count3
  in
  snd (countAndMerge arr)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:19:41: Unbound value "List.sub" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Inv_Count (arr : int list) : int = 
  let rec mergeCountAndMerge (left : int list) (right : int list) =
    match (left, right) with
    | ([], right) -> right, 0
    | (left, []) -> left, 0
    | (h1 :: t1, h2 :: t2) ->
      if h1 <= h2 then
        let merged, count = mergeCountAndMerge t1 right in
        h1 :: merged, count
      else
        let merged, count = mergeCountAndMerge left t2 in
        h2 :: merged, count + List.length t1
  in
  let rec countAndMerge xs =
    match xs with
    | [] | [_] -> xs, 0
    | _ ->
      let mid = List.length xs / 2 in
      let left, count1 = countAndMerge (List.concat [List.take xs mid; []]) in
      let right, count2 = countAndMerge (List.concat [[]; List.drop xs mid]) in
      let merged, count3 = mergeCountAndMerge left right in
      merged, count1 + count2 + count3
  in
  snd (countAndMerge arr)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:19:54: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Inv_Count (arr : int list) : int = 
  let rec mergeCountAndMerge (left : int list) (right : int list) =
    match (left, right) with
    | ([], right) -> right, 0
    | (left, []) -> left, 0
    | (h1 :: t1, h2 :: t2) ->
      if h1 <= h2 then
        let merged, count = mergeCountAndMerge t1 right in
        h1 :: merged, count
      else
        let merged, count = mergeCountAndMerge left t2 in
        h2 :: merged, count + List.length t1
  in
  let rec countAndMerge xs =
    match xs with
    | [] | [_] -> xs, 0
    | _ ->
      let mid = List.length xs / 2 in
      let left, count1 = countAndMerge (List.sub xs 0 mid) in
      let right, count2 = countAndMerge (List.sub xs mid (List.length xs - mid)) in
      let merged, count3 = mergeCountAndMerge left right in
      merged, count1 + count2 + count3
  in
  snd (countAndMerge arr)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:19:41: Unbound value "List.sub" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Inv_Count (arr : int list) : int = 
  let rec mergeCountAndMerge (left : int list) (right : int list) =
    match (left, right) with
    | ([], right) -> right, 0
    | (left, []) -> left, 0
    | (h1 :: t1, h2 :: t2) ->
      if h1 <= h2 then
        let merged, count = mergeCountAndMerge t1 right in
        (h1 :: merged, count)
      else
        let merged, count = mergeCountAndMerge left t2 in
        (h2 :: merged, count + List.length t1)
  in
  let rec countAndMerge xs =
    match xs with
    | [] | [_] -> xs, 0
    | _ ->
      let mid = List.length xs / 2 in
      let left, count1 = countAndMerge (List.tl @@
                                      List.rev @@
                                      List.sub xs 0 mid) in
      let right, count2 = countAndMerge (List.tl @@
                                         List.rev @@
                                         List.sub xs mid (List.length xs - mid)) in
      let merged, count3 = mergeCountAndMerge (List.rev left) (List.rev right) in
      (List.rev merged, count1 + count2 + count3)
  in
  snd (countAndMerge arr)

