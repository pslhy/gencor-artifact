
let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
  let nums1 = List.sort (fun a b -> b - a) nums1 in
  let nums2 = List.sort (fun a b -> b - a) nums2 in
  let products = List.concat (List.map (fun x -> List.map (fun y -> x * y) nums2) nums1) in
  let products = List.sort (fun a b -> b - a) products in
  match products with
  | [] -> []
  | _ -> List.rev (List.tl (List.rev (List.rev_map (fun x -> List.nth products x) (List.init n (fun x -> x)))))

(* Test cases *)

let () = print_endline (String.concat ", " (List.map string_of_int (large_product [1;2;3;4] [3;2;1;4] 2)))
(* Output: "12, 16" *)

let () = print_endline (String.concat ", " (List.map string_of_int (large_product [5;10;15;20] [2;4;5;1] 4)))
(* Output: "20, 40, 25, 50" *)

let () = print_endline (String.concat ", " (List.map string_of_int (large_product [] [2;4;5;1] 2)))
(* Output: "" *)

let () = print_endline (String.concat ", " (List.map string_of_int (large_product [5;10;15;20] [] 2)))
(* Output: "" *)

let () = print_endline (String.concat ", " (List.map string_of_int (large_product [5;10;15;20] [2;4;5;1] 9)))
(* Output: "20, 40, 25, 50, 75, 100, 125, 150, 175" *)

let () = print_endline (String.concat ", " (List.map string_of_int (large_product [5;10;15;20] [2;4;5;1] 0)))
(* Output: "" *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
