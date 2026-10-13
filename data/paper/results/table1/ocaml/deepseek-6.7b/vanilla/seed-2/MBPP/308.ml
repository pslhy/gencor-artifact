let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
  let rec rankable (n : int) (nums : int list) : int list =
    match nums with
    | []    -> []
    | a::[] -> [a]
    | a::b::[] -> if a>=b then [a] else [b]
    | a::b::_ when a>=b -> a::(rankable n nums)
    | a::b::xs -> rankable n (b::nums)
  (* filter out those before nth largest element *)
  and beyond (n : int) (nums : int list) : int list =
    match nums with
    | [] -> []
    | a::[] -> [a]
    | a::b::xs when a>= b -> [a] @ beyond n xs
    | a::b::xs when a< b  -> beyond n (b::xs)
  in
  let nums1' = List.sort (fun x y -> -compare x y) (rankable n nums1) in
  let nums2' = List.sort (fun x y -> -compare x y) (rankable n nums2) in
  let beyond_nums1 = beyond n nums1' in
  let beyond_nums2 = beyond n nums2' in
  let rec connect (nums1 : int list) (nums2 : int list) : int list =
    match nums1, nums2 with
    | [], _ -> []
    | _, [] -> []
    | a::xs, b::ys -> a*b :: connect xs ys
  in
  connect beyond_nums1 beyond_nums2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
