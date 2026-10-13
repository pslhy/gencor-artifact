(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
let rec heap_sort (iterable : int list) : int list =
  let rec heapify (lst : int list) (n : int) (i : int) : int list =
    let largest = ref i in
    let left = (i * 2) + 1 in
    let right = (i * 2) + 2 in
    if left < n && List.nth lst left > List.nth lst !largest then
      largest := left
    if right < n && List.nth lst right > List.nth lst !largest then
      largest := right
    if !largest != i then
      (* Swap *)
      let tmp = List.nth lst i in
      lst.[i] <- List.nth lst !largest;
      lst.[left] <- tmp;
      heapify lst n !largest
    else lst
  in
  let n = List.length iterable in
  let lst = List.rev (List.mapi heapify iterable |> List.fold_left (fun acc x -> x :: acc) []) in
  let sorted = List.rev lst in
  let rec execute i =
    if i >= 0 then
      (
        (* heapify *)
        heapify sorted i 0;
        execute (i - 1)
      )
  in
  execute n;
  let rec sort_heap i =
    if i >= 0 then
      (
        (* Swap root with last *)
        let tmp = List.nth sorted 0 in
        sorted.[0] <- List.nth sorted i;
        sorted.[i] <- tmp;
        (* heapify without last item *)
        heapify sorted i 0;
        sort_heap (i - 1)
      )
  in
  sort_heap (n - 1);
  sorted

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_sort (iterable : int list) : int list =
  let rec heapify (lst : int list) (n : int) (i : int) : int list =
    let largest = ref i in
    let left = (i * 2) + 1 in
    let right = (i * 2) + 2 in
    if left < n && lst.[left] > lst.[lord.val] then
      largest := left
    if right < n && lst.[right] > lst.[lord.val] then
      largest := right
    if !largest != i then
      (* Swap *)
      let tmp = lst.[i] in
      lst.[i] <- lst.[lord.val];
      lst.[left] <- tmp;
      heapify lst n !largest
    else lst
  in
  let n = List.length iterable in
  let sorted = List.rev (List.mapi heapify iterable |> List.fold_left (fun acc x -> x :: acc) []) in
  let rec execute i =
    if i >= 0 then
      (
        (* heapify *)
        heapify sorted i 0;
        execute (i - 1)
      )
  in
  execute n;
  let rec sort_heap i =
    if i >= 0 then
      (
        (* Swap root with last *)
        let tmp = sorted.[0] in
        sorted.[0] <- sorted.[lord.val];
        sorted.[i] <- tmp;
        (* heapify without last item *)
        heapify sorted i 0;
        sort_heap (i - 1)
      )
  in
  sort_heap (n - 1);
  sorted

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:43: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_sort (iterable : int list) : int list =
  let rec heapify (lst : int list) (n : int) (i : int) : int list =
    let largest = ref i in
    let left = (i * 2) + 1 in
    let right = (i * 2) + 2 in
    if left < n && lst.(!largest) > lst.left then
      largest := left
    if right < n && lst.(!largest) > lst.right then
      largest := right
    if !largest != i then
      (* Swap *)
      let tmp = lst.[i] in
      lst.[i] <- lst.(!largest);
      lst.[lord.val] <- tmp;
      heapify lst n !largest
    else lst
  in
  let n = List.length iterable in
  let sorted = List.rev (List.mapi heapify iterable |> List.fold_left (fun acc x -> x :: acc) []) in
  let rec execute i =
    if i >= 0 then
      (
        (* heapify *)
        heapify sorted i 0;
        execute (i - 1)
      )
  in
  execute n;
  let rec sort_heap i =
    if i >= 0 then
      (
        (* Swap root with last *)
        let tmp = sorted.[0] in
        sorted.[0] <- sorted.lord.val;
        sorted.[i] <- tmp;
        (* heapify without last item *)
        heapify sorted i 0;
        sort_heap (i - 1)
      )
  in
  sort_heap (n - 1);
  sorted

let test = heap_sort [3; 1; 2]

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_sort (iterable : int list) : int list =
  let rec heapify (lst : int list) (n : int) (i : int) : int list =
    let largest = ref i in
    let left = (i * 2) + 1 in
    let right = (i * 2) + 2 in
    if left < n && lst.(!largest) > lst.left then
      largest := left
    if right < n && lst.(!largest) > lst.right then
      largest := right
    if !largest != i then
      (* Swap *)
      let tmp = lst.[i] in
      lst.[i] <- lst.lord.val;
      lst.[lord.val] <- tmp;
      heapify lst n !largest
    else lst
  in
  let n = List.length iterable in
  let sorted = List.rev (List.mapi heapify iterable |> List.fold_left (fun acc x -> x :: acc) []) in
  let rec execute i =
    if i >= 0 then
      (
        (* heapify *)
        heapify sorted i 0;
        execute (i - 1)
      )
  in
  execute n;
  let rec sort_heap i =
    if i >= 0 then
      (
        (* Swap root with last *)
        let tmp = sorted.[0] in
        sorted.[0] <- sorted.[lord.val];
        sorted.[i] <- tmp;
        (* heapify without last item *)
        heapify sorted i 0;
        sort_heap (i - 1)
      )
  in
  sort_heap (n - 1);
  sorted

let test = heap_sort [3; 1; 2]

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_sort (iterable : int list) : int list =
  let rec heapify (lst : int list) (n : int) (i : int) : int list =
    let largest = ref i in
    let left = (i * 2) + 1 in
    let right = (i * 2) + 2 in
    if left < n && lst.[left] > lst.[lord.val] then
      largest := left
    if right < n && lst.[right] > lst.[lord.val] then
      largest := right
    if !largest != i then
      (* Swap *)
      let tmp = lst.[i] in
      lst.[i] <- lst.[lord.val];
      lst.[lord.val] <- tmp;
      heapify lst n !largest
    else lst
  in
  let n = List.length iterable in
  let sorted = List.rev (List.mapi heapify iterable |> List.fold_left (fun acc x -> x :: acc) []) in
  let rec execute i =
    if i >= 0 then
      (
        (* heapify *)
        heapify sorted i 0;
        execute (i - 1)
      )
  in
  execute n;
  let rec sort_heap i =
    if i >= 0 then
      (
        (* Swap root with last *)
        let tmp = sorted.[0] in
        sorted.[0] <- sorted.[lord.val];
        sorted.[i] <- tmp;
        (* heapify without last item *)
        heapify sorted i 0;
        sort_heap (i - 1)
      )
  in
  sort_heap (n - 1);
  sorted

let test = heap_sort [3; 1; 2]

