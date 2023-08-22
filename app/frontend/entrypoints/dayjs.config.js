import "dayjs/locale/da";
import dayjs from "dayjs";
import localizedFormat from "dayjs/plugin/localizedFormat";
import weekOfYear from "dayjs/plugin/weekOfYear";
import isBetween from "dayjs/plugin/isBetween";
import relativeTime from "dayjs/plugin/relativeTime";
dayjs.locale("da");
dayjs.extend(localizedFormat)
dayjs.extend(weekOfYear)
dayjs.extend(isBetween)
dayjs.extend(relativeTime)
