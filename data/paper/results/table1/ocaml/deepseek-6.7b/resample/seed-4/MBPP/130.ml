(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
let rec max_occurrences (nums : int list) : int =
  let count_map =
    List.fold_left (fun m n -> Map.update n (fun v -> if v = None then Some 1 else Some (1 + Option.value v ~default:0)) m)
      Map.empty nums in
  let max_count = Map.fold (fun _ v max -> max |> (if v > max then v else max)) count_map 0 in
  Map.fold (fun k v max -> if v = max then k else max) count_map (List.hd nums)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:32: Unbound value "Map.update" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  let count_map =
    List.fold_left (fun m n -> Map.update m n (fun v -> if v = None then Some 1 else Some (1 + (match v with | None -> 0 | Some n -> n))))
      Map.empty nums in
  Map.fold (fun _ v max_pair -> if (snd max_pair) < (snd v) then v else max_pair) count_map (0, (-1))
  |> snd

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:32: Unbound value "Map.update" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  let count_map =
    List.fold_left (fun m n -> Map.update m n (fun v -> if v = None then Some 1 else Some ((Option.value v ~default:0) + 1)) )
      Map.empty nums in
  let (max_key, _) =
    Map.fold (fun k v acc ->
      let (curr_key, curr_value) = acc in
      match v with
      | None -> acc
      | Some value -> if value > curr_value then (k, value) else acc)
      count_map (List.hd nums, 0)
  in max_key

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:32: Unbound value "Map.update" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  let count_map =
    List.fold_left (fun m n ->
      Map.add m n (1 + (Map.find_opt n m |> function | None -> 0 | Some v -> v)))
    Map.empty nums in
  let max_count = Map.fold (fun _ v max -> max |> (if v > max then v else max)) count_map 0 in
  Map.fold (fun k v max -> if max_count = (snd v) then k else max) count_map (0, 0) |> snd

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:7: Unbound value "Map.add" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  let count_map =
    List.fold_left (fun m n ->
      Map.change m n (function
        | None -> Some 1
        | Some c -> Some (c+1)))
      Map.empty nums in
  let (_, max_count) =
    Map.fold (fun _ v max ->
      let (max_k, max_v) = max in
      match v with
      | None -> max
      | Some c when c > max_v -> (_, c)
      | _ -> max)
      count_map (0, 0) in
  Map.fold (fun k v v' -> if v = max_count then Some k else v') count_map None |> function
  | None -> 0
  | Some k -> k

